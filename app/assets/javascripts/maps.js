var map;
var infowindow;
var markers = [];

function getLocation(){
    // 位置情報を取得する
  navigator.geolocation.getCurrentPosition(function(position) {
            // 現在地
            var pos = {lat: position.coords.latitude, lng: position.coords.longitude};
            infowindow = new google.maps.InfoWindow(pos);
            // 現在地の緯度経度を中心にマップを生成
            map = new google.maps.Map(document.getElementById('map'), {
                center: pos,
                zoom: 16
            });
            // 地図ドラッグ時のイベント
            map.addListener( "dragend", function () {
                clearMarkerAll(map);
                var response = map.getCenter() ;
                service.nearbySearch({
                  location: response,
                  radius: 750,
                  name: ['cafe']
                }, callback);
            
            },function(error) {
            // 失敗時の処理
            alert('エラー：' + error);
            });
        
            var service = new google.maps.places.PlacesService(map);
            service.nearbySearch({
              location: pos,
              radius: 750, 
              name: ['cafe']
            }, callback);

    //コールバック関数には results, status が渡されるので、status により条件分岐
    function callback(results, status) {
    if (status === google.maps.places.PlacesServiceStatus.OK) {
      for (var i = 0; i < results.length; i++) {
        //createMarker() はマーカーを生成する関数（別途定義）
        createMarker(results[i]);
        }
      }
    }
  });  
}

//地図上にマーカーを生成
function createMarker(place) {
    var marker = new google.maps.Marker({
        map: map,
        position: place.geometry.location
    });
    markers.push(marker);//重要　引数を関数の外にで使えるようにする。
    //地図上のマーカーをクリックした際の動作、吹き出しの中身
    google.maps.event.addListener(marker, 'click', function() {
        infowindow.setContent(place.name); 
        infowindow.open(map, this);
    });
}
//マーカーを消す
function clearMarkerAll(map) {
    for (var i = 0; i < markers.length; i++) {
      markers[i].setMap(null);
    }
}
function callback(results, status) {
    if (status === google.maps.places.PlacesServiceStatus.OK) {
      for (var i = 0; i < results.length; i++) {
        createMarker(results[i]);
      }
    }
}
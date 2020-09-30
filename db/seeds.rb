# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Caffe.create(:caffeine_mg => 180, :store => 'スターバックスコーヒー', :size => 'short')
Caffe.create(:caffeine_mg => 260, :store => 'スターバックスコーヒー', :size => 'tall')
Caffe.create(:caffeine_mg => 330, :store => 'スターバックスコーヒー', :size => 'grande')
Caffe.create(:caffeine_mg => 415, :store => 'スターバックスコーヒー', :size => 'venti')
Caffe.create(:caffeine_mg => 100, :store => 'ドトールコーヒー', :size => 'S')
Caffe.create(:caffeine_mg => 133, :store => 'ドトールコーヒー', :size => 'M')
Caffe.create(:caffeine_mg => 166, :store => 'ドトールコーヒー', :size => 'L')
Caffe.create(:caffeine_mg => 160, :store => 'タリーズコーヒー', :size => 'short')
Caffe.create(:caffeine_mg => 233, :store => 'タリーズコーヒー', :size => 'tall')
Caffe.create(:caffeine_mg => 313, :store => 'タリーズコーヒー', :size => 'grande')
Caffe.create(:caffeine_mg => 393, :store => 'タリーズコーヒー', :size => 'enorme')
Caffe.create(:caffeine_mg => 120, :store => 'エクセルシオールカフェ', :size => 'S')
Caffe.create(:caffeine_mg => 154, :store => 'エクセルシオールカフェ', :size => 'M')
Caffe.create(:caffeine_mg => 187, :store => 'エクセルシオールカフェ', :size => 'L')
Caffe.create(:caffeine_mg => 120, :store => 'その他のお店', :size => 'S')
Caffe.create(:caffeine_mg => 154, :store => 'その他のお店', :size => 'M')
Caffe.create(:caffeine_mg => 187, :store => 'その他のお店', :size => 'L')
Caffe.create(:caffeine_mg => 100, :store => 'お家', :size => 'M')

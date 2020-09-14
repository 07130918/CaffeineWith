# coding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Caffe.create(:caffeine => 180, :store => 'starbucks', :size => 'short')
Caffe.create(:caffeine => 260, :store => 'starbucks', :size => 'tall')
Caffe.create(:caffeine => 330, :store => 'starbucks', :size => 'grande')
Caffe.create(:caffeine => 415, :store => 'starbucks', :size => 'venti')
Caffe.create(:caffeine => 100, :store => 'doutor', :size => 'S')
Caffe.create(:caffeine => 133, :store => 'doutor', :size => 'M')
Caffe.create(:caffeine => 166, :store => 'doutor', :size => 'L')
Caffe.create(:caffeine => 160, :store => 'tullys', :size => 'short')
Caffe.create(:caffeine => 233, :store => 'tullys', :size => 'tall')
Caffe.create(:caffeine => 313, :store => 'tullys', :size => 'grande')
Caffe.create(:caffeine => 393, :store => 'tullys', :size => 'enorme')
Caffe.create(:caffeine => 120, :store => 'excelsior', :size => 'S')
Caffe.create(:caffeine => 154, :store => 'excelsior', :size => 'M')
Caffe.create(:caffeine => 187, :store => 'excelsior', :size => 'L')
Caffe.create(:caffeine => 120, :store => 'other', :size => 'S')
Caffe.create(:caffeine => 154, :store => 'other', :size => 'M')
Caffe.create(:caffeine => 187, :store => 'other', :size => 'L')
Caffe.create(:caffeine => 100, :store => 'house', :size => 'M')
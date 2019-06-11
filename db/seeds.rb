# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#データの初期値
mr= ["平","源"]
surname = ["朝臣","臣","国造","県主","和気","稲置","連","直","首","史","村主","真人","宿禰","忌寸","道師"]
commonname = ["一朗","二郎","三郎","四郎","五郎","六郎","七郎","八郎","九郎","十朗","十四郎","二郎三郎"]

#各初期値をデータに挿入
mr.each do |mrs|
  Mr.create(mr: mrs)
end

surname.each do |surnames|
  Surname.create(surname: surnames)
end

commonname.each do |commonnames|
  Commonname.create(commonname: commonnames)
end
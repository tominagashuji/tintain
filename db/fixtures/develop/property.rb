50.times do |i|
  Property.seed do |s|
    s.id    = i + 1
    s.name = "物件#{i + 1}"
    s.rent = (([*30..90].sample) * 1000)
    s.address  = "test#{i + 1}@gmail.com"
    s.age = [*1..50].sample
    s.remarks = "サンプル文章" * [*10..30].sample
  end
end

# 物件に紐づく最寄り駅も同時に保存する
100.times do |i|
  NearestStation.seed do |s|
    s.id    = i + 1
    s.line = "サンプル#{i + 1}線"
    s.name = "サンプル#{i + 1}駅"
    s.walking_minutes  = [*3..20].sample
    s.property_id = (i / 2 + 1) # 一つの物件に二つの最寄り駅が紐づくように設定
  end
end

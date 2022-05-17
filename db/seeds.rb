# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
# 開発用のテストデータ

if Athletic.count.zero?
  instances = CSV.open('db/athletic.csv', headers: true).to_a.map do |row|
    {
      name: row['name'],
      created_at: Time.now,
      updated_at: Time.now
    }
  end
  Athletic.insert_all instances
end

if Culuture.count.zero?
  instances = CSV.open('db/culuture.csv', headers: true).to_a.map do |row|
    {
      name: row['name'],
      created_at: Time.now,
      updated_at: Time.now
    }
  end
  Culuture.insert_all instances
end

if Rails.env.development?

  athletics = Athletic.all.index_by(&:name)
  culutures = Culuture.all.index_by(&:name)
  arts = Art.all.index_by(&:name)

  company_hashes = [
    {
      name: '体育会硬式テニス部',
      athletic_name: '硬式テニス',
      place: '体芸テニスコート',
      number: 42,
      company_category: 'athletic',
      detail: '硬式テニス部は毎日活動しています。',
      images_path: 'img/012.png',
      frequency: 5,
      activity_day: 'monday',
      sns_link: 'https://whimsical.com/cojt-Nw2ZFFmDUCdTVdVPZmS4NW',
    },
    {
      name: 'ヘンゼルとグレーテル',
      culuture_name: 'お菓子作り',
      place: '文化大佐館',
      number: 6,
      company_category: 'culuture',
      detail: '美味しいお菓子を作りましょう！！',
      images_path: 'img/012122.png',
      frequency: 2,
      activity_day: 'sunday',
      sns_link: 'https://whimsical.com/cojt-jiijNw2ZFFmDUCdTVdVPZmS4NW',
    },
  ]
  company_hashes.each do |hash|
    company = Company.find_or_initialize_by(name: hash[:name])
    company.update!(
      athletic: athletics[hash[:athletic_name]],
      art: arts[hash[:art_name]],
      culuture: culutures[hash[:culuture_name]],
      number: hash[:number],
      company_category: hash[:company_category],
      place: hash[:place],
      detail: hash[:detail],
      images_path: hash[:images_path],
      frequency: hash[:frequency],
      activity_day: hash[:activity_day],
      sns_link: hash[:sns_link],
    )
  end
end
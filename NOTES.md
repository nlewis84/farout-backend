seed_data.each do |hash|
  date = hash[:date]
  explanation = hash[:explanation]
  title = hash[:title]
  url = hash[:url]
  
  p = Picture.create(
    title: title,
    url: url,
    explanation: explanation,
    date: date
  )
  
  p.build_vote(count: 0).save
end
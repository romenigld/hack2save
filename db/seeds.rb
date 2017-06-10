["romenigld", "lfpimenta", "felipens", "wellingtonp", "velders", "raimundojra", "team4"].each do |name|
  unless User.exists?(email: '#{name}@hack2save.com')
    User.create!(email: "#{name}@hack2save.com", password: "password")
  end
end

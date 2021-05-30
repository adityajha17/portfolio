10.times do |blog|
    Blog.create!(
        title: "My blog post #{blog}",
        description: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged."
    )
end
puts "10 blog posts created"

5.times do |skill|
    Skill.create!(
        title: "Rails #{skill}",
        persent_utilized: 15
    )
end

puts "5 skills created"

9.times do |portfolio_info| 
    PortfolioInfo.create!(
        title: "Portfolio title: #{portfolio_info}",
        subtitle: "My great service",
        body: "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a 
        galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the
         leap into electronic typesetting, remaining essentially unchanged.",
        main_image: " ",
        thumb_image: "http://placehold.it/350*150"
    )

end

module ApplicationHelper
  
  def full_title(page_title)
    base_title = "Ruby on Rails Tutorial Sample App"
    if page_title.empty?
      puts "1"
      base_title
    else
      puts "page title: #{page_title}"
      "#{base_title} | #{page_title}"
    end
    
  end
end

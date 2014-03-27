# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def title
    base_title = "TEAM4OFPS"
    if @title.nil?
      base_title
    else
    "#{base_title} | #{@title}"
    end
  end
end
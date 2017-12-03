module ApplicationHelper

  def current_year
    Time.now.year
  end

  def question_icon_sm(text, data_placement: "top")
    image_tag('question_icon.png', alt: 'vraag?', class: 'question_label_icon_sm', "data-toggle" => "popover", "data-placement" => data_placement, title: " ", "data-content" => text, "data-trigger" => "focus", tabindex: 0 )
  end

  def question_icon_md(text, data_placement: "bottom")
    image_tag('question_icon.png', alt: 'vraag?', class: 'question_label_icon_md', "data-toggle" => "popover", "data-placement" => data_placement, title: " ", "data-content" => text, "data-trigger" => "focus", tabindex: 0 )
  end

end

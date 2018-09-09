module ApplicationHelper

  def current_year
    Time.now.year
  end

  def question_icon_sm(text, data_placement: "top")
    # FIXME needs to be updated like question_icon_md to work on firefox before using
    image_tag('question_icon.png', alt: 'Vraag?', class: 'question_label_icon_sm', "data-toggle" => "popover", "data-placement" => data_placement, title: " ", "data-content" => text, "data-trigger" => "focus", role: 'button', tabindex: 0 )
  end

  def question_icon_md(text, data_placement: "bottom")
    content_tag(:a, "data-toggle" => "popover", "data-placement" => data_placement, "data-content" => text, "data-trigger" => "focus", role: 'button', tabindex: 0) do
      image_tag('question_icon.png', alt: 'Vraag?',class: "question_label_icon_md", title: "Vraag?")
    end
  end

  def alert(message, warning = true, warning_message = t("general.beware"), id: nil)
    render partial: 'shared/alert_text', locals: { message: message, warning: warning, warning_message: warning_message, id: id}
  end

end

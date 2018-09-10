module ApplicationHelper

  def current_year
    Time.now.year
  end

  def question_icon_md(text, data_placement: "bottom", klass: "question_label_icon_md")
    content_tag(:a, "data-toggle" => "popover", "data-placement" => data_placement, "data-content" => text, "data-trigger" => "focus", role: 'button', tabindex: 0) do
      image_tag('question_icon.png', alt: 'Vraag?', class: klass, title: "Vraag?")
    end
  end

  def alert(message, warning = true, warning_message = t("general.beware"), id: nil)
    render partial: 'shared/alert_text', locals: { message: message, warning: warning, warning_message: warning_message, id: id}
  end

  def discount_timer_minutes
    minutes_left = Time.now.end_of_week - Time.now
    minutes_left.to_i / 60
  end

  def discount_available_until
    Time.now.end_of_week
  end

  def discount_days?
    Time.now.monday? || Time.now.wednesday? || Time.now.friday? || Time.now.sunday?
  end

end

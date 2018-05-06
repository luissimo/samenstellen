module SeoPagesHelper
  def video_seo_block_1
   %(<iframe title="Tenzen Matras #{@city_name}" allow="autoplay; encrypted-media" allowfullscreen="" frameborder="0" height="315" width="100%" src="https://www.youtube.com/embed/nETjGNV4DgQ?rel=0&controls=0&showinfo=0"></iframe>).html_safe
  end

  def image_seo_block_2
    image_tag 'koud_matras.jpg', alt: "Matras kopen #{@city_name}", title: "Matras kopen #{@city_name}", width: '100%', height: '100%'
  end

  def image_seo_block_3
    image_tag 'Tenzen-matras-in-doos-Wit.png', alt: "Goedkope matrassen #{@city_name}", title: "Goedkope matrassen #{@city_name}", width: '100%', height: '100%'
  end

  def image_seo_block_4
    image_tag 'warm_matras.jpg', alt: "Tenzen matras bestellen #{@city_name}", title: "Tenzen matras bestellen #{@city_name}", width: '100%', height: '100%'
  end

  def cta_button_block_1
    link_to 'Matras kopen', bestellen_url, class: "button btn-primary btn-block btn-success", title: "Matras kopen #{@city_name}"
  end

  def cta_button_block_2
    link_to 'Matras kopen', bestellen_url, class: "button btn-primary btn-block btn-success", title: "Goedkope matras kopen #{@city_name}"
  end

  def cta_button_block_3
    link_to 'Voordelig matras kopen', bestellen_url, class: "button btn-primary btn-block btn-success", title: "Voordelig matras kopen #{@city_name}"
  end

  def cta_button_block_4
    link_to "Matras bestellen in #{@city_name}", bestellen_url, class: "button btn-primary btn-block btn-success", title: "Matras bestellen in #{@city_name}"
  end
end

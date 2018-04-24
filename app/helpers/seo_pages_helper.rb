module SeoPagesHelper
  def image_seo_block_1
    image_tag 'Tenzen-matras-in-doos-Wit.png', alt: "Matrassen #{@city_name}", width: '100%', height: '100%'
  end

  def image_seo_block_2
    image_tag 'warm_matras.jpg', alt: "Matras kopen #{@city_name}", width: '100%', height: '100%'
  end

  def image_seo_block_3
    image_tag 'Tenzen-matras-in-doos-Wit.png', alt: "Goedkope matrassen #{@city_name}", width: '100%', height: '100%'
  end

  def image_seo_block_4
    image_tag 'koud_matras.jpg', alt: "Tenzen matras bestellen #{@city_name}", width: '100%', height: '100%'
  end
end

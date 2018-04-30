class SeoPagesController < ApplicationController

  def delft
    @city_name = 'Delft'
    city_group_1(city_name: @city_name)

  end

  def den_hoorn
    @city_name = 'Den Hoorn'
    city_group_1(city_name: @city_name)
    @page_title = "Matrassen #{@city_name}"
    @meta_title = "Matrassen #{@city_name} | Aanbieding matras | Tenzen"
    @meta_description = "Matrassen #{@city_name}. Goedkoop een matras kopen in #{@city_name}? Wil jij het beste matras voor de laagste prijs? Wil jij gezonder en beter slapen? Koop dan direct je Tenzen matras. Gratis bezorgd in #{@city_name}. 100
dagen proefslapen."
  end

  def delfgauw
    @city_name = 'Delfgauw'
    city_group_1(city_name: @city_name)
    @page_title = "Matrassen #{@city_name}"
    @meta_title = "Matrassen #{@city_name} | Aanbieding matras | Tenzen"
    @meta_description = "Matrassen #{@city_name}. Goedkoop een matras kopen in #{@city_name}? Wil jij het beste matras voor de laagste prijs? Wil jij gezonder en beter slapen? Koop dan direct je Tenzen matras. Gratis bezorgd in #{@city_name}. 100
dagen proefslapen."
  end

  def pijnacker
    @city_name = 'Pijnacker'
    city_group_1(city_name: @city_name)
    @page_title = "Matrassen #{@city_name}"
    @meta_title = "Matrassen #{@city_name} | Aanbieding matras | Tenzen"
    @meta_description = "Matrassen #{@city_name}. Goedkoop een matras kopen in #{@city_name}? Wil jij het beste matras voor de laagste prijs? Wil jij gezonder en beter slapen? Koop dan direct je Tenzen matras. Gratis bezorgd in #{@city_name}. 100
dagen proefslapen."
  end

  def venlo
    @city_name = 'Venlo'
    city_group_2(city_name: @city_name)
    @page_title = "Matrassen #{@city_name}"
    @meta_title = "Matrassen #{@city_name} | Aanbieding matras | Tenzen"
    @meta_description = "Matrassen #{@city_name}. Goedkoop een matras kopen in #{@city_name}? Wil jij het beste matras voor de laagste prijs? Wil jij gezonder en beter slapen? Koop dan direct je Tenzen matras. Gratis bezorgd in #{@city_name}. 100
dagen proefslapen."
  end

  def tegelen
    @city_name = 'Tegelen'
    city_group_2(city_name: @city_name)
    @page_title = "Matrassen #{@city_name}"
    @meta_title = "Matrassen #{@city_name} | Aanbieding matras | Tenzen"
    @meta_description = "Matrassen #{@city_name}. Goedkoop een matras kopen in #{@city_name}? Wil jij het beste matras voor de laagste prijs? Wil jij gezonder en beter slapen? Koop dan direct je Tenzen matras. Gratis bezorgd in #{@city_name}. 100
dagen proefslapen."
  end

  def blerick
    @city_name = 'Blerick'
    city_group_2(city_name: @city_name)
    @page_title = "Matrassen #{@city_name}"
    @meta_title = "Matrassen #{@city_name} | Aanbieding matras | Tenzen"
    @meta_description = "Matrassen #{@city_name}. Goedkoop een matras kopen in #{@city_name}? Wil jij het beste matras voor de laagste prijs? Wil jij gezonder en beter slapen? Koop dan direct je Tenzen matras. Gratis bezorgd in #{@city_name}. 100
dagen proefslapen."
  end

  def venray
    @city_name = 'Venray'
    city_group_2(city_name: @city_name)
    @page_title = "Matrassen #{@city_name}"
    @meta_title = "Matrassen #{@city_name} | Aanbieding matras | Tenzen"
    @meta_description = "Matrassen #{@city_name}. Goedkoop een matras kopen in #{@city_name}? Wil jij het beste matras voor de laagste prijs? Wil jij gezonder en beter slapen? Koop dan direct je Tenzen matras. Gratis bezorgd in #{@city_name}. 100
dagen proefslapen."
  end

  def emmen
    @city_name = 'Emmen'
    city_group_3(city_name: @city_name)
    @page_title = "Matrassen #{@city_name}"
    @meta_title = "Matrassen #{@city_name} | Aanbieding matras | Tenzen"
    @meta_description = "Matrassen #{@city_name}. Goedkoop een matras kopen in #{@city_name}? Wil jij het beste matras voor de laagste prijs? Wil jij gezonder en beter slapen? Koop dan direct je Tenzen matras. Gratis bezorgd in #{@city_name}. 100
dagen proefslapen."
  end

  def klazienaveen
    @city_name = 'Klazienaveen'
    city_group_3(city_name: @city_name)
    @page_title = "Matrassen #{@city_name}"
    @meta_title = "Matrassen #{@city_name} | Aanbieding matras | Tenzen"
    @meta_description = "Matrassen #{@city_name}. Goedkoop een matras kopen in #{@city_name}? Wil jij het beste matras voor de laagste prijs? Wil jij gezonder en beter slapen? Koop dan direct je Tenzen matras. Gratis bezorgd in #{@city_name}. 100
dagen proefslapen."
  end

  def hoogeveen
    @city_name = 'Hoogeveen'
    city_group_3(city_name: @city_name)
    @page_title = "Matrassen #{@city_name}"
    @meta_title = "Matrassen #{@city_name} | Aanbieding matras | Tenzen"
    @meta_description = "Matrassen #{@city_name}. Goedkoop een matras kopen in #{@city_name}? Wil jij het beste matras voor de laagste prijs? Wil jij gezonder en beter slapen? Koop dan direct je Tenzen matras. Gratis bezorgd in #{@city_name}. 100
dagen proefslapen."
  end

  def emmer_compascuum
    @city_name = 'Emmer-compascuum'
    city_group_3(city_name: @city_name)
    @page_title = "Matrassen #{@city_name}"
    @meta_title = "Matrassen #{@city_name} | Aanbieding matras | Tenzen"
    @meta_description = "Matrassen #{@city_name}. Goedkoop een matras kopen in #{@city_name}? Wil jij het beste matras voor de laagste prijs? Wil jij gezonder en beter slapen? Koop dan direct je Tenzen matras. Gratis bezorgd in #{@city_name}. 100
dagen proefslapen."
  end

  private

    def city_group_1(city_name:)
      @city_group_1 = ['Delfgauw', 'Pijnacker', 'Den Hoorn', 'Delft']
      @city_group_1.delete_if { |i| i == city_name}
    end

    def city_group_2(city_name:)
      @city_group_2 = ['Venlo', 'Tegelen', 'Blerick', 'Venray']
      @city_group_2.delete_if { |i| i == city_name}
    end

    def city_group_3(city_name:)
      @city_group_3 = ['Emmen', 'Klazienaveen', 'Hoogeveen', 'Emmer-compascuum']
      @city_group_3.delete_if { |i| i == city_name}
    end
end

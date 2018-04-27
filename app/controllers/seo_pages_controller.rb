class SeoPagesController < ApplicationController

  def delft
    @city_name = 'Delft'
    city_group_1(city_name: @city_name)
    @page_title = "Matrassen #{@city_name}"
    @meta_title = "Tenzen – Persoonlijke Matrassen #{@city_name}"
    @meta_description = "Elk lichaam is anders, dus waarom zou jouw matras dat niet zijn? Stel binnen twee minuten jouw persoonlijke matras samen in #{@city_name} en geniet van ongekend slaapcomfort!"
  end

  def den_hoorn
    @city_name = 'Den Hoorn'
    city_group_1(city_name: @city_name)
    @page_title = "Matrassen #{@city_name}"
    @meta_title = "Tenzen – Persoonlijke Matrassen #{@city_name}"
    @meta_description = "Elk lichaam is anders, dus waarom zou jouw matras dat niet zijn? Stel binnen twee minuten jouw persoonlijke matras samen in #{@city_name} en geniet van ongekend slaapcomfort!"
  end

  def delfgauw
    @city_name = 'Delfgauw'
    city_group_1(city_name: @city_name)
    @page_title = "Matrassen #{@city_name}"
    @meta_title = "Tenzen – Persoonlijke Matrassen #{@city_name}"
    @meta_description = "Elk lichaam is anders, dus waarom zou jouw matras dat niet zijn? Stel binnen twee minuten jouw persoonlijke matras samen in #{@city_name} en geniet van ongekend slaapcomfort!"
  end

  def pijnacker
    @city_name = 'Pijnacker'
    city_group_1(city_name: @city_name)
    @page_title = "Matrassen #{@city_name}"
    @meta_title = "Tenzen – Persoonlijke Matrassen #{@city_name}"
    @meta_description = "Elk lichaam is anders, dus waarom zou jouw matras dat niet zijn? Stel binnen twee minuten jouw persoonlijke matras samen in #{@city_name} en geniet van ongekend slaapcomfort!"
  end

  private

  def city_group_1(city_name:)
    @city_group_1 = ['Delfgauw', 'Pijnacker', 'Den Hoorn', 'Delft']
    @city_group_1.delete_if { |i| i == city_name}
  end
end

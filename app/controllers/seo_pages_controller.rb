class SeoPagesController < ApplicationController

  def delft
    @city_name = 'Delft'
    city_group_1(city_name: @city_name)
    @page_title = t('algemene_voorwaarden.title')
    @meta_title = t('algemene_voorwaarden.meta_title')
    @meta_description = t('algemene_voorwaarden.meta_description')
  end

  def den_hoorn
    @city_name = 'Den Hoorn'
    city_group_1(city_name: @city_name)
  end

  def delfgauw
    @city_name = 'Delfgauw'
    city_group_1(city_name: @city_name)
  end

  def pijnacker
    @city_name = 'Pijnacker'
    city_group_1(city_name: @city_name)
  end

  private

  def city_group_1(city_name:)
    @city_group_1 = ['Delfgauw', 'Pijnacker', 'Den Hoorn', 'Delft']
    @city_group_1.delete_if { |i| i == city_name}
  end
end

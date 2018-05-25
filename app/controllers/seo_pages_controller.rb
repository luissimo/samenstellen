class SeoPagesController < ApplicationController

  def delft
    @city_name = 'Delft'
    city_group_1(city_name: @city_name)
  end

  def den_hoorn
    @city_name = 'Den Hoorn'
    city_group_1(city_name: @city_name)
    set_metas
  end

  def delfgauw
    @city_name = 'Delfgauw'
    city_group_1(city_name: @city_name)
    set_metas
  end

  def pijnacker
    @city_name = 'Pijnacker'
    city_group_1(city_name: @city_name)
    set_metas
  end

  def venlo
    @city_name = 'Venlo'
    city_group_2(city_name: @city_name)
    set_metas
  end

  def tegelen
    @city_name = 'Tegelen'
    city_group_2(city_name: @city_name)
    set_metas
  end

  def blerick
    @city_name = 'Blerick'
    city_group_2(city_name: @city_name)
    set_metas
  end

  def venray
    @city_name = 'Venray'
    city_group_2(city_name: @city_name)
    set_metas
  end

  def emmen
    @city_name = 'Emmen'
    city_group_3(city_name: @city_name)
    set_metas
  end

  def klazienaveen
    @city_name = 'Klazienaveen'
    city_group_3(city_name: @city_name)
    set_metas
  end

  def hoogeveen
    @city_name = 'Hoogeveen'
    city_group_3(city_name: @city_name)
    set_metas
  end

  def emmer_compascuum
    @city_name = 'Emmer-compascuum'
    city_group_3(city_name: @city_name)
    set_metas
  end

  def ede
    @city_name = 'Ede'
    city_group_4(city_name: @city_name)
    set_metas
  end

  def veenendaal
    @city_name = 'Veenendaal'
    city_group_4(city_name: @city_name)
    set_metas
  end

  def barneveld
    @city_name = 'Barneveld'
    city_group_4(city_name: @city_name)
    set_metas
  end

  def wageningen
    @city_name = 'Wageningen'
    city_group_4(city_name: @city_name)
    set_metas
  end

  def renkum
    @city_name = 'Renkum'
    city_group_4(city_name: @city_name)
    set_metas
  end

  def dordrecht
    @city_name = 'Dordrecht'
    city_group_5(city_name: @city_name)
    set_metas
  end

  def hendrik_ido_ambacht
    @city_name = 'Hendrik-ido-ambacht'
    city_group_5(city_name: @city_name)
    set_metas
  end

  def sliedrecht
    @city_name = 'Sliedrecht'
    city_group_5(city_name: @city_name)
    set_metas
  end

  def zwijndrecht
    @city_name = 'Zwijndrecht'
    city_group_5(city_name: @city_name)
    set_metas
  end

  def gorinchem
    @city_name = 'Gorinchem'
    city_group_5(city_name: @city_name)
    set_metas
  end

  def papendrecht
    @city_name = 'Papendrecht'
    city_group_5(city_name: @city_name)
    set_metas
  end

  def alblasserdam
    @city_name = 'Alblasserdam'
    city_group_5(city_name: @city_name)
    set_metas
  end

  def giessendam_neder_hardinxveld
    @city_name = 'Giessendam Neder-Hardinxveld'
    city_group_5(city_name: @city_name)
    set_metas
  end

  def leiden
    @city_name = 'Leiden'
    city_group_6(city_name: @city_name)
    set_metas
  end

  def oegstgeest
    @city_name = 'Oegstgeest'
    city_group_6(city_name: @city_name)
    set_metas
  end

  def wassenaar
    @city_name = 'Wassenaar'
    city_group_6(city_name: @city_name)
    set_metas
  end

  def katwijk_aan_zee
    @city_name = 'Katwijk aan Zee'
    city_group_6(city_name: @city_name)
    set_metas
  end

  def sassenheim
    @city_name = 'Sassenheim'
    city_group_6(city_name: @city_name)
    set_metas
  end

  def voorhout
    @city_name = 'Voorhout'
    city_group_6(city_name: @city_name)
    set_metas
  end

  def leiderdorp
    @city_name = 'Leiderdorp'
    city_group_6(city_name: @city_name)
    set_metas
  end

  def voorschoten
    @city_name = 'Voorschoten'
    city_group_6(city_name: @city_name)
    set_metas
  end

  def lisse
    @city_name = 'Lisse'
    city_group_6(city_name: @city_name)
    set_metas
  end

  def maastricht
    @city_name = 'Maastricht'
    city_group_7(city_name: @city_name)
    set_metas
  end

  def heerlen
    @city_name = 'Heerlen'
    city_group_7(city_name: @city_name)
    set_metas
  end

  def valkenburg
    @city_name = 'Valkenburg'
    city_group_7(city_name: @city_name)
    set_metas
  end

  def meerssen
    @city_name = 'Meerssen'
    city_group_7(city_name: @city_name)
    set_metas
  end

  def zwolle
    @city_name = 'Zwolle'
    city_group_8(city_name: @city_name)
    set_metas
  end

  def kampen
    @city_name = 'Kampen'
    city_group_8(city_name: @city_name)
    set_metas
  end

  def ommen
    @city_name = 'Ommen'
    city_group_8(city_name: @city_name)
    set_metas
  end

  def raalte
    @city_name = 'Raalte'
    city_group_8(city_name: @city_name)
    set_metas
  end

  def meppel
    @city_name = 'Meppel'
    city_group_8(city_name: @city_name)
    set_metas
  end

  def dalfsen
    @city_name = 'Dalfsen'
    city_group_8(city_name: @city_name)
    set_metas
  end

  def steenwijk
    @city_name = 'Steenwijk'
    city_group_8(city_name: @city_name)
    set_metas
  end

  def heerde
    @city_name = 'Heerde'
    city_group_8(city_name: @city_name)
    set_metas
  end

  def zoetermeer
    @city_name = 'Zoetermeer'
    city_group_9(city_name: @city_name)
    set_metas
  end

  def zoeterwoude
    @city_name = 'Zoeterwoude'
    city_group_9(city_name: @city_name)
    set_metas
  end

  def alphen_aan_den_rijn
    @city_name = 'Alphen aan den Rijn'
    city_group_9(city_name: @city_name)
    set_metas
  end

  def moerkapelle
    @city_name = 'Moerkapelle'
    city_group_9(city_name: @city_name)
    set_metas
  end

  private

    def set_metas
      @page_title = "Matrassen #{@city_name}"
      @meta_title = "Matrassen #{@city_name} | Matras kopen #{@city_name} | Tenzen"
      @meta_description = "Matrassen #{@city_name}. Goedkoop een matras kopen in #{@city_name}? Wil jij het beste matras voor de laagste prijs? Wil jij gezonder en beter slapen? Koop dan direct je Tenzen matras. Gratis bezorgd in #{@city_name}. 100
  dagen proefslapen."
    end

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

    def city_group_4(city_name:)
      @city_group_4 = ['Ede', 'Veenendaal', 'Barneveld', 'Wageningen', 'Renkum']
      @city_group_4.delete_if { |i| i == city_name}
    end

    def city_group_5(city_name:)
      @city_group_5 = ['Dordrecht', 'Hendrik-ido-ambacht', 'Sliedrecht', 'Zwijndrecht', 'Gorinchem', 'Papendrecht', 'Alblasserdam', 'Giessendam Neder-Hardinxveld']
      @city_group_5.delete_if { |i| i == city_name}
    end

    def city_group_6(city_name:)
      @city_group_6 = ['Leiden', 'Oegstgeest', 'Wassenaar', 'Katwijk aan Zee', 'Sassenheim', 'Voorhout', 'Leiderdorp', 'Voorschoten', 'Lisse']
      @city_group_6.delete_if { |i| i == city_name}
    end

    def city_group_7(city_name:)
      @city_group_7 = ['Maastricht', 'Heerlen', 'Valkenburg', 'Meerssen']
      @city_group_7.delete_if { |i| i == city_name}
    end

    def city_group_8(city_name:)
      @city_group_8 = ['Zwolle', 'Kampen', 'Ommen', 'Raalte', 'Meppel', 'Dalfsen', 'Steenwijk', 'Heerde']
      @city_group_8.delete_if { |i| i == city_name}
    end

    def city_group_9(city_name:)
      @city_group_9 = ['Zoetermeer', 'Zoeterwoude', 'Alphen aan den Rijn', 'Moerkapelle']
      @city_group_9.delete_if { |i| i == city_name}
    end
end

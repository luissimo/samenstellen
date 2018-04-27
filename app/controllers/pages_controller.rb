class PagesController < ApplicationController

  before_action :delete_discount_session, except: [:create_contact, :sitemap]

  def actievoorwaarden
    @page_title = t('actievoorwaarden.title')
    @meta_title = t('actievoorwaarden.meta_title')
    @meta_description = t('actievoorwaarden.meta_description')
  end

  def over_tenzen
    @page_title = t('over_tenzen.title')
    @meta_title = t('over_tenzen.meta_title')
    @meta_description = t('over_tenzen.meta_description')
  end

  def vragen
    @page_title = t('vragen.title')
    @meta_title = t('vragen.meta_title')
    @meta_description = t('vragen.meta_description')
  end

  def privacy_beleid
    @page_title = t('privacy_beleid.title')
    @meta_title = t('privacy_beleid.meta_title')
    @meta_description = t('privacy_beleid.meta_description')
  end

  def garanties
    @page_title = t('garanties.title')
    @meta_title = t('garanties.meta_title')
    @meta_description = t('garanties.meta_description')
  end

  def cookie_beleid
    @page_title = t('cookie_beleid.title')
    @meta_title = t('cookie_beleid.meta_title')
    @meta_description = t('cookie_beleid.meta_description')
  end

  def retourneren
    @page_title = t('retourneren.title')
    @meta_title = t('retourneren.meta_title')
    @meta_description = t('retourneren.meta_description')
  end

  def algemene_voorwaarden_ingewikkeld
    @page_title = t('algemene_voorwaarden_ingewikkeld.title')
    @meta_title = t('algemene_voorwaarden_ingewikkeld.meta_title')
    @meta_description = t('algemene_voorwaarden_ingewikkeld.meta_description')
  end

  def algemene_voorwaarden
    @page_title = t('algemene_voorwaarden.title')
    @meta_title = t('algemene_voorwaarden.meta_title')
    @meta_description = t('algemene_voorwaarden.meta_description')
  end

  def bestellen
    @page_title = t('bestellen.title')
    @meta_title = t('bestellen.meta_title')
    @meta_description = t('bestellen.meta_description')
  end

  def solo_or_duo
    @page_title = t('solo_or_duo.title')
    @meta_title = t('solo_or_duo.meta_title')
    @meta_description = t('solo_or_duo.meta_description')
  end

  def contact
    @page_title = t('contact.title')
    @meta_title = t('contact.meta_title')
    @meta_description = t('contact.meta_description')
    @contact_form = ContactForm.new
  end

  def create_contact
    @contact_form = ContactForm.new(contact_form_params.merge({ session_id: session.id }))
    @contact_form.request = request

    respond_to do |format|
      if @contact_form.deliver
        format.html { redirect_to contact_url, notice: "Je bericht is verstuurd. <br> Wij nemen zo spoedig mogelijk contact met je op.".html_safe }
      else
        format.html { render :contact, alert: "Je hebt niet alle velden ingevuld. Probeer het nogmaals." }
        format.json { render json: @contact_form.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def contact_form_params
    params.require(:contact_form).permit(:id, :session_id, :name, :email, :subject, :about, :message)
  end
end

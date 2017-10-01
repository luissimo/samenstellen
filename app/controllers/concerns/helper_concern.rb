module HelperConcern
  extend ActiveSupport::Concern

  def diseases_on?
    mattress = Mattress.all.where(session_id: session.id).last
    mattress.diseases.include?("on") unless mattress.diseases.nil?
  end

end

module HelperConcern
  extend ActiveSupport::Concern

  def diseases_on?
    mattress = Mattress.all.where(session_id: session.id).last
    mattress.diseases.include?("on") unless mattress.diseases.nil?
  end

  def double_mattress_one_diseases_on?
    mattress = DoubleMattressOne.all.where(session_id: session.id).last
    mattress.diseases.include?("on") unless mattress.diseases.nil?
  end

  def double_mattress_two_diseases_on?
    mattress = DoubleMattressTwo.all.where(session_id: session.id).last
    mattress.diseases.include?("on") unless mattress.diseases.nil?
  end

  def double_mattress_two_diseases2_on?
    mattress = DoubleMattressTwo.all.where(session_id: session.id).last
    mattress.diseases2.include?("on") unless mattress.diseases2.nil?
  end

end

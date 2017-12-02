class OrderMailer < ApplicationMailer
  default from: 'info@tenzen.nl'

  def order_success(details:)
    @details = {
      first_name: details[:first_name],
      last_name: details[:last_name],
      phone: details[:phone],
      email: details[:email],
      address: details[:address],
      address_addition: details[:address_addition],
      zip_code: details[:zip_code],
      city: details[:city],
      address_ship: details[:address_ship],
      address_addition_ship: details[:address_addition_ship],
      zip_code_ship: details[:zip_code_ship],
      city_ship: details[:city_ship],
      floor: details[:floor],
      elevator: details[:elevator],
      comment: details[:comment],
      payment_method: details[:payment_method],
      order_number: details[:order_number],
      retour_old_mattress: details[:retour_old_mattress],
      price: details[:price],
      mattress: details[:mattress],
      topper: details[:topper],
      mattress2: details[:mattress2],
      topper2: details[:topper2]
    }
    mail(to: @details[:email], from: 'info@tenzen.nl', subject: 'Bedankt voor je bestelling!')
  end

  def order_received(details:, answers:)
    @details = {
      type: details[:type],
      first_name: details[:first_name],
      last_name: details[:last_name],
      phone: details[:phone],
      email: details[:email],
      address: details[:address],
      address_addition: details[:address_addition],
      zip_code: details[:zip_code],
      city: details[:city],
      address_ship: details[:address_ship],
      address_addition_ship: details[:address_addition_ship],
      zip_code_ship: details[:zip_code_ship],
      city_ship: details[:city_ship],
      floor: details[:floor],
      elevator: details[:elevator],
      comment: details[:comment],
      payment_method: details[:payment_method],
      order_number: details[:order_number],
      retour_old_mattress: details[:retour_old_mattress],
      price: details[:price],
      mattress: details[:mattress],
      topper: details[:topper],
      mattress2: details[:mattress2],
      topper2: details[:topper2]
    }

    @answers = {
      name: answers[:name],
      name2: answers[:name2],
      gender: answers[:gender],
      gender2: answers[:gender2],
      age: answers[:age],
      age2: answers[:age2],
      weight: answers[:weight],
      weight2: answers[:weight2],
      length: answers[:length],
      length2: answers[:length2],
      sleep_position: answers[:sleep_position],
      sleep_position2: answers[:sleep_position2],
      body_shape: answers[:body_shape],
      body_shape2: answers[:body_shape2],
      warm_sleeping: answers[:warm_sleeping],
      warm_sleeping2: answers[:warm_sleeping2],
      neck_or_back_pain: answers[:neck_or_back_pain],
      neck_or_back_pain2: answers[:neck_or_back_pain2],
      mattress_length: answers[:mattress_length],
      mattress_width: answers[:mattress_width],
      category: answers[:category],
      comfort: answers[:comfort],
      comfort2: answers[:comfort2],
      diseases: answers[:diseases],
      diseases2: answers[:diseases2],
      chassis: answers[:chassis],
      separation: answers[:separation]
    }
    mail(to: 'info@tenzen.nl', from: 'info@tenzen.nl', subject: 'Nieuwe bestelling!')
  end
end

class Patient < ActiveRecord::Base

  scope :adult_medicine, ->{ where encounter_type: 'adult_medicine' }
  scope :icu, ->{ where encounter_type: 'icu' }
  scope :encountered_today, ->{ where 'created_at > ?', Date.today }

end

class Patient < ActiveRecord::Base

  scope :adult_medicine, ->{ where encounter_type: 'adult_medicine' }
  scope :icu, ->{ where encounter_type: 'icu' }
  scope :encountered_today, ->{ where 'created_at > ?', Date.today }

  belongs_to :user

  validates :encounter_type, presence: true
  validates :encountered_on, presence: true

  after_commit :transaction_success
  after_rollback :transaction_failure

  private
    #TODO: improve transaction error logging!
    def transaction_success
      STDOUT.puts "Transaction success for Patient #{self.inspect}"
    end

    def transaction_failure
      STDOUT.puts "Transaction failure for Patient #{self.inspect}"
    end
end

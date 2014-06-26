class PatientPolicy < ApplicationPolicy
  attr_reader :user, :patient

  def initialize(user, patient)
    @user = user
    @patient = patient
  end

  def index?
    user.name == patient.user.name || user.role == 'Admin'
  end

  class Scope < Struct.new(:user, :scope)
    def resolve
      scope
    end
  end
end

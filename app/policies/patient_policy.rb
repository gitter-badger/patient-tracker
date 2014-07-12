class PatientPolicy < ApplicationPolicy
  attr_reader :user, :patient

  def initialize(user, patient)
    @user = user
    @patient = patient
  end

  def index?
    user.id == patient.user.id || user.role == 'Admin'
  end

  def show?
    index?
  end

  def new?
    create?
  end

  def create?
    user.role == 'Resident'
  end

  def edit?
    update?
  end

  def update?
    user.role == 'Resident' && user.id == patient.user.id
  end

  def destroy?
    user.id == patient.user.id
  end

  class Scope < Struct.new(:user, :scope)
    def resolve
      scope
    end
  end
end

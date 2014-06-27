class PatientPolicy < ApplicationPolicy
  attr_reader :user, :patient

  def initialize(user, patient)
    @user = user
    @patient = patient
  end

  def index?
    user.name == patient.user.name || user.role == 'Admin'
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
    user.role == 'Resident' && user.name == patient.user.name
  end

  def destroy?
    create?
  end

  class Scope < Struct.new(:user, :scope)
    def resolve
      scope
    end
  end
end

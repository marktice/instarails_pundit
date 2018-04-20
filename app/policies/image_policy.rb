class ImagePolicy < ApplicationPolicy
  
  def index?
    user.admin?
  end

  def update?
    user == record.user
  end

  def create?
    user == record.user    
  end
end
class HomeController < ApplicationController
  def index
    
  end
  
  def makeuseraccount
    @ni = params[:newid]
    User.create(realID: params[:newid], pw: params[:newpw], power: 0)
    redirect_to controller: 'home', action: 'dashboard', user_rid: params[:newid]
  end
  
  def setting
    
  end
  
  def dashboard
    @user = User.find_by! realID: params[:user_rid]
    @identities = Identity.where("user_id = ?" , @user.id).order("id desc")
    #@subjects = Subject.where("identity_id = ?" , @identities.id).order("id desc")
    #p @identities.id
    
  end
  
  def addRole
    Identity.create(user_id: params[:user_nid], role: params[:newrole], objective: params[:newobjective])
    redirect_to controller: 'home', action: 'dashboard', user_rid: params[:user_rid]
  end
  
  def addSubject
    Subject.create(identity_id: params[:identity_id], title: params[:title], goal: params[:goal])
    redirect_to controller: 'home', action: 'dashboard', user_rid: params[:user_rid]
  end
  
  def subject
    
  end
end

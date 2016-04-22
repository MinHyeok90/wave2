class HomeController < ApplicationController
  def index
  end
  
  def makeuseraccount
    User.create(realID: params[:newid], pw: params[:newpw], power: 0)
    redirect_to controller: 'home', action: 'dashboard', user_rid: params[:newid]
  end
  
  def setting
  end
  
  def dashboard
    @user = User.find_by! realID: params[:user_rid]
    @identities = Identity.where("user_id = ?" , @user.id).order("id desc")
  end
  
  def addRole
    Identity.create(user_id: params[:user_nid], role: params[:newrole], objective: params[:newobjective])
    redirect_to controller: 'home', action: 'dashboard', user_rid: params[:user_rid]
  end
  
  def deleteRole
    @one_post = Identity.find(params[:identity_id])
    @one_post.destroy
    redirect_to controller: 'home', action: 'dashboard', user_rid: params[:user_rid]
  end
  
  def addSubject
    Subject.create(identity_id: params[:identity_id], title: params[:title], goal: params[:goal])
    redirect_to controller: 'home', action: 'dashboard', user_rid: params[:user_rid]
  end
  
  def deleteSubject
    p "22"
    @one_post = Subject.find(params[:subject_id])
    @one_post.destroy
    redirect_to controller: 'home', action: 'dashboard', user_rid: params[:user_rid]
  end
  
  def subject
  end
end

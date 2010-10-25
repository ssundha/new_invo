class LoginController < ApplicationController
  
  protect_from_forgery :except => [:user_registration]
  layout 'main_layout'
    
  def show_mainpage
    # this is the landing page for the application where users can either register or log-in
    render 'main_page'
  end
    
  def user_registration
    # control comes here when the user clicks the register button on the main_page
    
    # create a new user
    
    # populate the e-mail id and set the status to PENDING
    email_id = params[:email_id]
    login_status = "PENDING"
    
    # send a generated URL to the registered e-mail id
    
    # display relevant information in the message_page   
    render 'message_page'
  end
  
  def forgot_password
    # control comes here when the user clicks the forgot password button on the main_page
    # set the login status to PENDING
    # send a generated URL to the registered e-mail id
    # display relevant information in the message_page
    render 'message_page'
  end
  
  def user_validation
    # control comes here when the user clicks on the generated URL or change password in the show_profile page
    # the user gets re-directed to set_password page to set his/her password
    render 'set_password' 
  end
  
  def password_confirmation
    # control comes here when the user clicks the confirm button on the set_password page
    # change the login status to VALIDATED
    # re-direct the user to the show_dashboard page
    render 'dashboard/show_dashboard' 
  end   
  
  def login
    # control comes here upon valid login
    # re-direct the user to the show_dashboard page
    render 'dashboard/show_dashboard'
  end
  
end

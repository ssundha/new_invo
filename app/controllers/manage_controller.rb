class ManageController < ApplicationController
  
  layout 'master_layout'
  
  def show_profile
    # control comes here when the user clicks the manage menu item
    # this renders the show_profile
    render 'update_profile'
  end
  
  def save_profile
    # control comes here when the user clicks the save button in the show_profile page
    # get confirmation from the user before saving changes to the user_profile
    # render the show_dashboard page
    render 'dashboard/show_dashboard'
  end
  
  def cancel_profile
    # control comes here when the user clicks the cancel button in the show_profile page
    # drop everything
    # render the show_dashboard page
    render 'dashboard/show_dashboard'
  end
  
end

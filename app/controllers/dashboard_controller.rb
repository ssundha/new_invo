class DashboardController < ApplicationController
  
  layout 'master_layout'

  def show_dashboard
    # control comes here when the user logs-in and other times as-well
    # this renders the show_dashboard
    render 'show_dashboard'
  end
  
  def pay_invoice
    # control comes here when the user clicks the pay button in the received invoice table
    # this is used to change the state from PENDING to PAID
    # this then renders the show_dashboard
    render 'show_dashboard'
  end
  
  def reject_invoice
    # control comes here when the user clicks the reject button in the received invoice table
    # this is used to change the state from PENDING to REJECT
    # this then renders the show_dashboard
    render 'show_dashboard'
  end
  
  def close_invoice
    # control comes here when the user clicks the close button in the received invoice table
    # this button is activated only if the current invoice state in PAID
    # this is used to change the state from PAID to CLOSE
    # this then renders the show_dashboard
    render 'show_dashboard'
  end 
  
end

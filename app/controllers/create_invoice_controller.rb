class CreateInvoiceController < ApplicationController
  
  protect_from_forgery :except => [:user_registration]
  layout 'master_layout'

  def create_new_invoice
    # control comes here when the user clicks the create invoice menu item
    # load only the sender info    
    # re-direct the user to the update_invoice page
    render 'update_invoice'
  end
  
  def update_invoice
    # control comes here when the user clicks edit button in the dashboard
    # load all the available contents of the invoice to be edited  
    # re-direct the user to the update_invoice page
    render 'update_invoice'
  end
  
  def show_invoice
    # control comes here when the user clicks the invoice in the sent or received invoice table
    # load all the available contents of the invoice to be displayed  
    # re-direct the user to the update_invoice page
    render 'update_invoice'
  end
  
  def save_invoice
    # control comes here when the user clicks the save button of the update-invoice page
    
    # get the entered values
    @name = params[:name]
    @email_id = params[:email_id]
    @addr_line1 = params[:addr_line1]
    @addr_line2 = params[:addr_line2]
    @city = params[:city]
    @state = params[:state]
    @state = params[:phone]  
    
    # generate a pdf dcoument for this invoice
    
    # if the current state of the invoice is REJECT don't overwrite the existing pdf but generate a new one
    # save the invoice into the sent invoice table
    # mark the invoice as DRAFT    
    # re-direct the user to the show_invoice page
    render 'show_invoice'
  end

  def cancel_invoice
    # control comes here when the user clicks the cancel button in the show_invoice page
    # drop everything 
    # re-direct the user to the show_dashboard page
    render 'dashboard/show_dashboard'
  end
    
  def send_invoice
    # control comes here when the user clicks the send button in the show_invoice page
    # if invoice_id is not present generate a new invoice id 
    # check to see if the recepient is in the contact list
    # check to see if the recepient has an account in new_invo
    # if the recepient has an account send it to the received invoice table of the recepient
    # and add recepient to the contact list 
    # else if the recepient does not have an account send the pdf form to the recepient's e-mail
    # mark the invoice as PENDING
    # re-direct the user to the show_dashboard page
    render 'dashboard/show_dashboard'
  end
  
  def delete_invoice
    # control comes here when the user clicks the delete button of the invoice in the dashboard
    # get confirmation from the user before deleting
    # delete the invoice (remove the entry from the sent invoice table)
    # re-direct the user to the show_dashboard page
    render 'dashboard/show_dashboard'
  end 
    
end

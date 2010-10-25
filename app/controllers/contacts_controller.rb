class ContactsController < ApplicationController
  
  layout 'master_layout'

  def show_contacts
    # control comes here when the user clicks the contacts menu item
    # contacts are displayed as a table in the show_contacts page
    render 'show_contacts'
  end
  
  def create_contact
    # control comes here when the user clicks on the create button in show_contacts page
    # contact gets added in the update_contact page
    render 'update_contacts'
  end
  
  def update_contact
    # control comes here when the user chooses to update a contact info
    # load the available contact info
    # contacts get updated in the update_contact page
    render 'update_contacts'
  end

  def delete_contacts
    # control comes here when the user chooses to delete a contact or a bunch of contacts
    # remove the contacts from the contacts_table
    # control goes back to show_contacts page
    render 'show_contacts'
  end
  
end

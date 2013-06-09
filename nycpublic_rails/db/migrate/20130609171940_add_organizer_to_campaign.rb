class AddOrganizerToCampaign < ActiveRecord::Migration
  def change
    add_column :campaigns, :organizer_id, :integer, references: :users
  end
end

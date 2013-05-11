class Contact < ActiveRecord::Base
  attr_accessible :email, :name

  def self.all_cached
    Rails.cache.fetch('Contact.all') { all }
  end
end

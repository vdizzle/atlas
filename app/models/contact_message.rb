# == Schema Information
#
# Table name: contact_messages
# id                    :integer         not null primary key
# name                  :string
# email                 :string
# message               :text
# read                  :boolean
# created_at            :datetime
# updated_at            :datetime

require 'active_record'

class ContactMessage < ActiveRecord::Base
  validates :name, presence: true
  validates :email, presence: true
  validates :message, presence: true
end

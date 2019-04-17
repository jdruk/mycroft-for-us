# == Schema Information
#
# Table name: users
#
#  id                     :bigint(8)        not null, primary key
#  approved               :boolean          default(FALSE), not null
#  current_sign_in_at     :datetime
#  current_sign_in_ip     :inet
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  failed_attempts        :integer          default(0), not null
#  last_sign_in_at        :datetime
#  last_sign_in_ip        :inet
#  locked_at              :datetime
#  name                   :string
#  remember_created_at    :datetime
#  reset_password_sent_at :datetime
#  reset_password_token   :string
#  role                   :integer          default(0), not null
#  sign_in_count          :integer          default(0), not null
#  unlock_token           :string
#  username               :string
#  visible                :boolean          default(TRUE), not null
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#
# Indexes
#
#  index_users_on_email                 (email) UNIQUE
#  index_users_on_reset_password_token  (reset_password_token) UNIQUE
#  index_users_on_username              (username) UNIQUE
#

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  #:confirmable, :, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable,
  :lockable, :trackable, :timeoutable

    def active_for_authentication? 
        super && approved? 
    end 

    def inactive_message 
        approved? ? super : :not_approved
    end

    def status_login
      approved 
    end

    def status_sanitized
      status_login ? 'Ativado' : 'Desativado'
    end 

    def self.send_reset_password_instructions(attributes={})
        recoverable = find_or_initialize_with_errors(reset_password_keys, attributes, :not_found)
        if !recoverable.approved?
          recoverable.errors[:base] << I18n.t("devise.failure.not_approved")
      elsif recoverable.persisted?
          recoverable.send_reset_password_instructions
      end
      recoverable
    end
end

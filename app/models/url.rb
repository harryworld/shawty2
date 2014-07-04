class Url < ActiveRecord::Base

  validate :check_original_url

  def check_original_url
    if self.original.blank?
      self.errors.add :base, 'Original URL should not be blank'
    end
  end

end

class Ticket < ApplicationRecord
  belongs_to :assigned_to, polymorphic: true

  def assigned_to_sgid=(value)
    self.assigned_to = GlobalID::Locator.locate_signed(value, for: :polymorphic_select)
  end
end

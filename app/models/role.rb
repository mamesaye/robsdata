class Role < ActiveRecord::Base
  attr_accessible :guest, :host
end

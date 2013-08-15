class Appearance < ActiveRecord::Base
  attr_accessible :date, :end, :guest, :host, :network, :show, :start, :topic
end

require 'rails_helper'
describe Album do
  it { should have_and_belong_to_many :users }
end

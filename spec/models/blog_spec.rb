require 'rails_helper'

RSpec.describe Blog, :type => :model do
  it { should have_db_column(:title) }
  it { should have_db_column(:content) }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:content) }
  it { should have_and_belong_to_many(:tags) }
end

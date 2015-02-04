require 'rails_helper'

RSpec.describe Blog, :type => :model do
  it { should have_db_column(:title) }
  it { should have_db_column(:content) }
end

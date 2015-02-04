require 'rails_helper'

RSpec.describe Tag, :type => :model do
  it { should have_db_column(:name) }
  it { should have_db_column(:count) }
  it { should validate_presence_of(:name) }
  it { should validate_uniqueness_of(:name).case_insensitive }
  it { should have_and_belong_to_many(:blogs) }

  describe "count" do
    let(:tag) {FactoryGirl.create :tag}
    it "should default to 0" do
      expect(tag.count).to eq(0)
    end
  end
end

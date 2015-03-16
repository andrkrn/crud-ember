require 'rails_helper'

RSpec.describe Article, :type => :model do
  context "Attributes" do
    it { should respond_to :title }
    it { should respond_to :body }
  end

  context "Validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:body) }
  end
end

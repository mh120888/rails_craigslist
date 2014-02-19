require_relative '../spec_helper'
  
describe Category do
  it { should validate_presence_of(:title) }
  it { should allow_mass_assignment_of(:title) }
  it { should have_many(:posts) }
end
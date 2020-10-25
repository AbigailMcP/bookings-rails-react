require 'rails_helper'

RSpec.describe Booking, type: :model do
  let(:space) { Space.create name: 'London' }

  subject do
    described_class.new(
      description: 'A description',
      start_date: Date.today,
      end_date: Date.today + 1,
      space: space
    )
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a description' do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a start date' do
    subject.start_date = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an end date' do
    subject.end_date = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without a space' do
    subject.space = nil
    expect(subject).to_not be_valid
  end
end

require 'rails_helper'

RSpec.describe Book, type: :model do
  subject { described_class.new(title: 'Correct Book', author: 'Shawn Gao', price: 20, published_date: Date.new(2025,1,1)) }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a title' do
    subject.title=nil
    expect(subject).not_to be_valid
  end
end


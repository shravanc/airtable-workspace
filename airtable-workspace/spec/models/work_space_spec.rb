require 'rails_helper'

RSpec.describe WorkSpace, type: :model do
  subject { described_class.new }

  it 'is valid metadata' do
    subject.title = 'sample'
    subject.description = 'example'
    expect(subject).to be_valid
  end

  it 'with no title is not valid' do
    subject.description = 'example'
    expect(subject).to_not be_valid
    expect(subject.errors.messages[:title]).to eq ["can't be blank"]
  end

  it 'with no description is not valid' do
    subject.title = 'example'
    expect(subject).to_not be_valid
    expect(subject.errors.messages[:description]).to eq ["can't be blank"]
  end
end

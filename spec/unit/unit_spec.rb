# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter')
  end

  it 'is valid with valid title' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end

RSpec.describe Book, type: :model do
    subject do
      described_class.new(author: 'jk rowling')
    end
  
    it 'is valid with valid author' do
      expect(subject).to be_valid
    end
  
    it 'is not valid without an author' do
      subject.author = nil
      expect(subject).not_to be_valid
    end
  end

  RSpec.describe Book, type: :model do
    subject do
      described_class.new(price: 3.00)
    end
  
    it 'is valid with valid price' do
      expect(subject).to be_valid
    end
  
    it 'is not valid with a negative number' do
      subject.price = -2.12 
      expect(subject).not_to be_valid
    end

    it 'is not valid with a zero' do
        subject.price = 0
        expect(subject).not_to be_valid
      end
  end

  RSpec.describe Book, type: :model do
    subject do
      described_class.new(published_date: Date.today)
    end
  
    it 'is valid with valid date' do
      expect(subject).to be_valid
    end
  
    it 'is not valid in the future' do
      subject.published_date = Date.tomorrow
      expect(subject).not_to be_valid
    end
  end
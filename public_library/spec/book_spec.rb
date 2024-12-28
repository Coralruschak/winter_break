require './lib/book'

RSpec.describe Book do
  before(:each) do
    @book = Book.new({author_first_name: "Harper", author_last_name: "Lee", title: "To Kill a Mockingbird", publication_date: "July 11, 1960"})
  end

  describe '#initialize' do
    it 'exists' do
      expect(@book).to_be_a Book
    end

    it 'has attributes' do
      expect(@book.author_first_name).to eq("Harper")
      expect(@book.author_last_name).to eq("Lee")
      expect(@book.title).to eq("To Kill A Mockingbird")
      expect(@book.publication_date).to eq("July 11, 1960")
    end
  end

  describe '#author' do
    it 'combines first & last name attribtues' do
      expect(@book.author).to eq("Harper Lee")
    end
  end

  describe '#publication_year' do
    it 'pulls last four characters from publication_date' do
      expect(@book.publication_year).to eq("1960git ")
    end
  end
end
require './lib/book'
require './lib/author'

RSpec.describe Author do
    before(:each) do
        @charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    end
    
    describe '#initilize' do
        it 'exists' do
            expect(@charlotte_bronte).to_be Author
        end
        
        it 'has first_name' do
            expect(@charlotte_bronte.first_name).to eq("Charlotte")
        end
        
        it 'has last_name' do
            expect(@charlotte_bronte.last_name).to eq("Bronte")
        end
        
        it 'has an empty array for books' do
            expect(@charlotte_bronte.books).to eq([])
        end
    end
    
    describe '#name' do
        it 'combines first_name and last_name' do
            expect(@charlotte_bronte.name).to eq("Charlotte Bronte")
        end
    end
    
    describe '#write' do
        it 'creates Book object by Author & Book methods can be accessed' do
            jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
            
            expect(jane_eyre.class).to_be_a Book
            expect(jane_eyre.title).to eq("Jane Eyre")
        end
        
        it 'adds Book to Authors book array' do
            jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
            
            expect(@charlotte_bronte.books).to eq([jane_eyre])
            expect(jane_eyre.title).to eq("Jane Eyre")
        end
        
        it 'tracks multiple books written by Author' do
            jane_eyre = charlotte_bronte.write("Jane Eyre", "October 16, 1847")
            villette = charlotte_bronte.write("Villette", "1853")
            
            expect(@charlotte_bronte.books).to eq([jane_eyre, villette])
        end
    end
end







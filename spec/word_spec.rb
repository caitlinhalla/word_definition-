require('rspec')
require('word')
require('definition')


describe(Word) do
  describe("#initialize") do
    it('creates a new Word object and sets its attributes') do
      test_word = Word.new({:word=> "incipient"})
      expect(test_word.word).to(eq("incipient"))
      expect(test_word.id).to(eq(1))
    end
  end

  describe(".all") do
    it('returns an empty @@words') do
      expect(Word.all).to(eq([]))
    end
  end

  describe("#save") do
    it('adds a word to the @@words array') do
      test_word = Word.new({:word=> "immure"})
      test_word.save()
      expect(Word.all).to(eq([test_word]))
    end
  end

  describe(".clear") do
    it('empties all of the saved words from the @@words array') do
      Word.new({:word=> "immure"}).save()
      Word.clear()
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#find') do
    it('returns a word by its id number') do
      test_word1 = Word.new({:word=> "incipient"})
      test_word1.save
      test_word2 = Word.new({:word=> "pleonasm"})
      test_word2.save
      expect(Word.find(test_word1.id())).to(eq(test_word1))
    end
  end
end

describe(Definition) do
  describe("#initialize") do
    it('creates a new Definition object and sets its attributes') do
      test_definition = Definition.new({:definition=> "in an initial stage", :speach_part=>"adjective"})
      expect(test_definition.definition).to(eq("in an initial stage"))
      expect(test_definition.speach_part).to(eq("adjective"))
      expect(test_definition.id).to(eq(1))
    end
  end

  describe(".all") do
    it('returns an empty @@definitions') do
      expect(Definition.all).to(eq([]))
    end
  end
  #
  describe("#save") do
    it('adds a definition to the @@definitionss array') do
      test_definition = Definition.new({:definition=> "in an initial stage", :speach_part=>"adjective"})
      test_definition.save()
      expect(Definition.all).to(eq([test_definition]))
    end
  end
  #
  # describe(".clear") do
  #   it('empties all of the saved words from the @@words array') do
  #     Word.new({:word=> "immure", :definition=> "to shut in"}).save()
  #     Word.clear()
  #     expect(Word.all()).to(eq([]))
  #   end
  # end
  #
  # describe('#find') do
  #   it('returns a word by its id number') do
  #     test_word1 = Word.new({:word=> "incipient", :definition=> "in an initial stage"})
  #     test_word1.save
  #     test_word2 = Word.new({:word=> "pleonasm", :definition=> "redundancy"})
  #     test_word2.save
  #     expect(Word.find(test_word1.id())).to(eq(test_word1))
  #   end
  # end
  #
  #
end

require_relative '../lib/substrings'

describe 'Substrings' do
  describe 'substrings' do
    dictionary = %w[below down go going horn how howdy it i low own part partner
                    sit]

    it 'should return a hash listing each substring (case insensitive) that was found in the original string and how many times it was found' do
      expect(substrings('Below', dictionary)).to eq({ 'below' => 1, 'low' => 1 })
    end

    it 'should handle multiple words' do
      expect(substrings("Howdy partner, sit down! How's it going?",
                        dictionary)).to eq({ 'down' => 1, 'go' => 1, 'going' => 1, 'how' => 2, 'howdy' => 1, 'it' => 2, 'i' => 3, 'own' => 1,
                                             'part' => 1, 'partner' => 1, 'sit' => 1 })
    end
  end
end

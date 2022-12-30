def substrings(string, dictionary)
  matches = {}

  string.split(' ').each do |s|
    dictionary.each do |d|
      if s.match?(/#{d}/i)
        if matches.dig(d)
          matches[d] += 1
        else
          matches[d] = 1
        end
      end
    end
  end

  matches
end

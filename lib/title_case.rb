class String
  def cap()
    title_array = [];
    split_string = self.downcase.split
    split_string.each_with_index do |word, idx|
      if idx == 0
        title_array.push(word.capitalize)
      elsif ['of', 'in', 'the', 'at', 'for', 'on', 'by', 'is', 'as'].include?(word)
        title_array.push(word)
      else
        title_array.push(word.capitalize)
      end
    end
    title_array.join(' ')
  end
end

puts 'the dog is cool'.cap()

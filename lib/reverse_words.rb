# A method to reverse each word in a sentence, in place.
require 'pry'
def reverse_words(my_words)

  char_count = my_words.length

  if char_count <= 1
    return my_words
  end

  i = 0
  first_letter_index = 0

  until i == char_count

    word_length = 0

    until my_words[i] == nil || my_words[i] == " "
      word_length += 1
      i += 1
    end

    last_letter_index = word_length - 1

    if word_length.odd?
      middle_index = word_length / 2
      until first_letter_index == middle_index
        a = my_words[first_letter_index]
        b = my_words[last_letter_index]
        my_words[first_letter_index] = b
        my_words[last_letter_index] = a
        first_letter_index += 1
        last_letter_index -= 1
      end
    else
      middle = word_length / 2
      middle_letter = my_words[middle]
      until my_words[middle - 1] == middle_letter
        a = my_words[first_letter_index]
        b = my_words[last_letter_index]
        my_words[first_letter_index] = b
        my_words[last_letter_index] = a
        first_letter_index += 1
        last_letter_index -= 1
      end
    end
    i += 1
  end
  return my_words
end
  # def string_reverse(my_string)
  #
  #   length = my_string.length
  #   index_1 = 0
  #   index_2 = length - 1
  #
  #   # if length == 1
  #   #   return my_string
  #   elsif length.odd?
  #     middle_index = length / 2
  #     until index_1 == middle_index
  #       a = my_string[index_1]
  #       b = my_string[index_2]
  #       my_string[index_1] = b
  #       my_string[index_2] = a
  #       index_1 += 1
  #       index_2 -= 1
  #     end
  #     return my_string
  #   else
  #     middle = length / 2
  #     middle_letter = my_string[middle]
  #     until my_string[middle - 1] == middle_letter
  #       a = my_string[index_1]
  #       b = my_string[index_2]
  #       my_string[index_1] = b
  #       my_string[index_2] = a
  #       index_1 += 1
  #       index_2 -= 1
  #     end
  #     return my_string
  #   end
  # end

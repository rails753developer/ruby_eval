class HammingDifference

  # input from user for first DNA Strand
  puts "Enter first DNA Strand"
  strand1 = gets.chomp

  # input from user for second DNA Strand
  puts "Enter second DNA Strand"
  strand2 = gets.chomp

  # method to calculate hamming distance
  def self.compute_difference(string1, string2)
    begin
      if string1.length != string2.length
        # raise error
        raise
      else
        hamming_distance = 0
        length = string1.length
        for i in 0..length
          # debugger
          if string1[i] != string2[i]
            hamming_distance += 1
          end
        end
        p hamming_distance
        return hamming_distance
      end
    rescue
      p 'You should pass strings of equal length'
    end

  end
  HammingDifference.compute_difference(strand1, strand2)
end

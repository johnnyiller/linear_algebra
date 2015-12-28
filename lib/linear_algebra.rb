require "linear_algebra/version"

# This is a bucket of linear algebra alorigthms.  The algorithms
# are intentionally written as a series of simple functions and
# make no attempt to alter any ruby built ins. These functions
# work for 2 dimensional arrays only...
module LinearAlgebra
  # This method takes takes a matrix and returns a new matrix
  # in Reduced echelon form.
  #
  # @param matrix [Matrix] the matrix you wish to operate on.
  def self.ref(matrix: matrix)
     
  end

  def self.is_echelon_form?(matrix: matrix)
    indexes = matrix.to_a.map { |row| row.find_index { |e| e.nonzero? } }.compact
    indexes.sort == indexes
  end

  def self.is_reduced_echelon_form?(matrix: matrix)
    indexes = matrix.to_a.map { |row| row.find_index { |e| e.nonzero? } }.compact
    return false unless indexes.sort == indexes
    indexes.each_with_index do |column_index, row_index|
      return false unless matrix[row_index,column_index] == 1
      above_values = (0...row_index).all? do |r| 
        matrix[r,column_index].zero? 
      end
      return false unless above_values
    end
    true
  end

  # This method returns reduced row echelon form.  This can
  # be used to extract the solution to a system of linear equations
  def self.rref(matrix: matrix)
    
  end

end

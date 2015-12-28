require 'minitest/autorun'
require 'linear_algebra'
require 'matrix'

class LinearAlgebraTest < Minitest::Test


=begin
  def test_reduced_echelon_form
    matrix_given = Matrix[
      [1,-2,1,0],
      [0,2,-8,8],
      [-4,5,9,-9]
    ]
    matrix_expected = Matrix[
      [1,-2,1,0],
      [0,1,-4,4],
      [0,0,1,3]
    ]
    ref_matrix = ::LinearAlgebra.ref(matrix: matrix_given)
    assert_equal matrix_expected, ref_matrix
  end
=end

  def test_is_echelon_form?
    matrix_one = Matrix[
      [1,-2,1,0],
      [0,2,-8,8],
      [-4,5,9,-9]
    ]
    matrix_two = Matrix[
      [1,-2,1,0],
      [0,1,-4,4],
      [0,0,1,3]
    ]

    assert !::LinearAlgebra.is_echelon_form?(matrix: matrix_one)
    assert ::LinearAlgebra.is_echelon_form?(matrix: matrix_two)

    matrix_one = Matrix[
      [0,0,1,0,12],
      [0,21,0,8,23],
      [0,0,9,-9,-3],
      [0,0,8,-9,-9]
    ]
    matrix_two = Matrix[
      [0,6,1,1,1,1,1,-1,1,1],
      [0,0,0,2,1,-1,1,1,1,1],
      [0,0,0,0,3,-1,1,1,1,1],
      [0,0,0,0,0,2,-1,1,1,1],
      [0,0,0,0,0,0,0,0,-9,1]
    ]

    assert !::LinearAlgebra.is_echelon_form?(matrix: matrix_one)
    assert ::LinearAlgebra.is_echelon_form?(matrix: matrix_two)

  end

  def test_is_reduced_echelon_form?
    matrix = Matrix[
      [0,6,1,1,1,1,1,-1,1,1],
      [0,0,0,2,1,-1,1,1,1,1],
      [0,0,0,0,3,-1,1,1,1,1],
      [0,0,0,0,0,2,-1,1,1,1],
      [0,0,0,0,0,0,0,0,-9,1]
    ]
    assert !::LinearAlgebra.is_reduced_echelon_form?(matrix: matrix)

    matrix = Matrix[
      [0,1,1,1,1,1,1,-1,1,1],
      [0,0,0,1,1,-1,1,1,1,1],
      [0,0,0,0,1,-1,1,1,1,1],
      [0,0,0,0,0,1,-1,1,1,1],
      [0,0,0,0,0,0,0,0,1,1]
    ]
    assert !::LinearAlgebra.is_reduced_echelon_form?(matrix: matrix)

    matrix = Matrix[
      [0,1,6,0,0,0,3,3,0,7],
      [0,0,0,1,0,0,3,3,0,5],
      [0,0,0,0,1,0,3,3,0,4],
      [0,0,0,0,0,1,1,1,0,3],
      [0,0,0,0,0,0,0,0,1,1]
    ]
    assert ::LinearAlgebra.is_reduced_echelon_form?(matrix: matrix)

    matrix = Matrix[
      [1,0,3,6],
      [0,1,3,1],
      [0,0,0,0],
      [0,0,0,0],
    ]
    assert ::LinearAlgebra.is_reduced_echelon_form?(matrix: matrix)



  end

end

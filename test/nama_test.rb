require "test_helper"

class NamaTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Nama::VERSION
  end

  def test_it_does_something_useful
    assert true # Now I checked this :)
  end

  def test_that_extract_texts
    output = File.read "test/output.txt"
    assert_equal Nama.extract_text, output

  end

end

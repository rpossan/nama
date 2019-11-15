require "test_helper"

class NamaTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Nama::VERSION
  end

  def test_it_does_something_useful
    assert true # Now I checked this :)
  end

  def test_correct_interval
    Nama.set_interval 0..50
    assert_instance_of Range, Nama.interval
  end

  def test_invalid_interval
    error = assert_raises(TypeError) { Nama.set_interval 100 }
    assert_equal error.message, 'Interval must be an Enumerator'
  end

  def test_that_extract_texts
    output = File.read "test/output.txt"
    assert_output (output) { Nama.extract_text }
  end

end

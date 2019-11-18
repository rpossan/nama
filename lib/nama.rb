require "nama/version"
require "nama/classificator"

module Nama
  class Error < StandardError; end

  @@interval = 1..100

  def self.set_interval(interval)
    raise TypeError.new "Interval must be an Enumerator" unless interval.respond_to? :each
    @@interval = interval
  end

  def self.interval
    @@interval
  end

  def self.extract_text
    extract_from self.interval
  end

  def self.extract_from(interval)
    values = []
    interval.each {|number| values << get_label(number) }
    print values.join(', ')
  end

  def self.get_label(number)
    return 'Nama Team' if number.remainder(Classificator::VALUES[:nama_team]).zero?
    return 'Team' if number.remainder(Classificator::VALUES[:team]).zero?
    return 'Nama' if number.remainder(Classificator::VALUES[:nama]).zero?

    return number 
  end
end

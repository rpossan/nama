# frozen_string_literal: true

require 'nama/version'
require 'nama/classificator'

module Nama
  class Error < StandardError; end

  @interval = 1..100

  def self.config_interval(interval)
    unless interval.respond_to? :each
      raise TypeError, 'Interval must be an Enumerator'
    end

    @interval = interval
  end

  def self.interval
    @interval
  end

  def self.extract_text
    extract_from interval
  end

  def self.extract_from(interval)
    values = []
    interval.each { |number| values << get_label(number) }
    print values.join(', ')
  end

  def self.get_label(number)
    classification = Classificator::VALUES
    return 'Nama Team' if number.remainder(classification[:nama_team]).zero?
    return 'Team' if number.remainder(classification[:team]).zero?
    return 'Nama' if number.remainder(classification[:nama]).zero?

    number
  end
end

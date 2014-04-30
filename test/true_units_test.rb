require 'test_helper'

class TrueUnitsTest < ActiveSupport::TestCase

  test "valid method name" do
    assert 32.respond_to?("tu_hours")
  end

  test "invalid method name" do
    assert_not 84.respond_to?("tu_2")
  end

  test "test 1" do
    assert_equal "31 #{I18n.t("true_units.hours.v1")}", 31.tu_hours
  end

  test "test 2" do
    assert_equal "2 #{I18n.t("true_units.minutes.v2")}", 2.tu_minutes
  end

  test "test 3" do
    assert_equal "25 #{I18n.t("true_units.days.v3")}", 25.tu_days
  end
end

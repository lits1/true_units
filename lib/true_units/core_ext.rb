require 'true_units/modules/true_units'

Bignum.class_eval do
  include TrueUnits
end

Fixnum.class_eval do
  include TrueUnits
end
module TrueUnits
    TRUE_UNITS_METHOD_NAME_PREFIX = "tu_"
    TRUE_UNITS_METHOD_NAME_PATTERN = /^tu_[a-z]+$/

    def method_missing(name, *args, &block)
      if TRUE_UNITS_METHOD_NAME_PATTERN.match name
        true_units_string(name[TRUE_UNITS_METHOD_NAME_PREFIX.length..-1], self)
      else
        super.method_missing(name, *args, &block)
      end
    end

    def respond_to?(name, include_private = false)
      TRUE_UNITS_METHOD_NAME_PATTERN.match(name) || super
    end

    private

    # will return true units depending value by predefined type
    def true_units type, value
      if value >= 5 && value <= 20
        v = 3
      else
        last_digit = value.to_s.last.to_i
        case last_digit
        when 1
          v = 1
        when 2..4
          v = 2
        else
          v = 3
        end
      end
      I18n.t "true_units.#{type}.v#{v}"
    end

    def true_units_string(type, value)
      "#{value.to_i} #{true_units(type, value.to_i)}"
    end
  end

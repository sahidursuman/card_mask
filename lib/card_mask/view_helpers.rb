module CardMask
  module ViewHelpers
    def card_mask(card_type, last4)
      case card_type
      when "Visa", "MasterCard", "Discover", "JCB"
        content_tag :span, "**** **** **** #{last4}"
      when "American Express"
        content_tag :span, "**** ****** *#{last4}"
      when "Diners Club"
        content_tag :span, "**** ****** #{last4}"
      else
        content_tag :span, "#{card_type} ending in #{last4}"
      end
    end
  end
end

module CardMask
  module ViewHelpers
    def card_mask(card_type, last4, options = nil)

      # options ||= {}
      options = options.stringify_keys

      output_string = case card_type
      when "Visa", "MasterCard", "Discover", "JCB"
        "**** **** **** #{last4}"
      when "American Express"
        "**** ****** *#{last4}"
      when "Diners Club"
        "**** ****** #{last4}"
      else
        "#{card_type} ending in #{last4}"
      end

      # Generate final tag
      content_tag(:span, output_string, options)
    end
  end
end

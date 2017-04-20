module CardMask
  module ViewHelpers
    def card_mask(card_type, last4, html_options = {})

      # html_options ||= {}
      # html_options = html_options.stringify_keys

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
      content_tag(:span, output_string, html_options)
    end
  end
end

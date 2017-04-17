require 'card_mask/view_helpers'
module CardMask
  class Railtie < Rails::Railtie
    initializer "card_mask.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end

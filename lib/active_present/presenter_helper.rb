module ActivePresent
  module PresenterHelper
    extend ActiveSupport::Concern

    included do
      helper_method :present
    end

    def present(object, klass = nil)
      klass ||= "#{object.class}Presenter".constantize
      presenter = klass.new(object, view_context)

      return yield presenter if block_given?
      presenter
    end

  end
end
class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    before_action :authenticate_user!
    before_action :set_locale_based_on_browser
 
    def set_locale_based_on_browser
        locale = extract_locale_from_accept_language_header
    
        I18n.locale =
          if locale_valid?(locale)
            locale
          else
            :en
          end
      end
    
      private
    
      def locale_valid?(locale)
        I18n.available_locales.map(&:to_s).include?(locale)
      end
    
      def extract_locale_from_accept_language_header
        accept_language = request.env['HTTP_ACCEPT_LANGUAGE']
        return unless accept_language
    
        accept_language.scan(/^[a-z]{2}/).first
      end
end

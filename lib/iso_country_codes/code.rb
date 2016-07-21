require 'singleton'

class IsoCountryCodes
  class Code
    include Singleton

    def name
      self.class.name
    end

    def numeric
      self.class.numeric
    end

    def alpha2
      self.class.alpha2
    end

    def alpha3
      self.class.alpha3
    end

    def calling
      self.class.calling
    end

    def calling_code
      self.class.calling_code
    end

    def continent
      self.class.continent
    end

    def main_currency
      self.class.main_currency
    end

    def currency
      self.class.currency
    end

    def currencies
      self.class.currencies
    end

    def iso
      self.class.iso
    end

    class << self
      attr_accessor :name, :numeric, :alpha2, :alpha3, :calling, :continent, :main_currency
      attr_writer :currencies
      alias_method :currency, :main_currency
      alias_method :calling_code, :calling

      @@codes = []
      def inherited(code) #:nodoc:
        super
        @@codes << code.instance if self == IsoCountryCodes::Code
      end

      def all
        ordering only_active.uniq
      end

      def only_active
        return @@codes unless IsoCountryCodes.configuration.active
        @@codes.select { |code| IsoCountryCodes.configuration.active.include?(code.iso) }
      end

      def ordering(codes)
        return codes unless IsoCountryCodes.configuration.priority
        codes.sort_by { |code| IsoCountryCodes.configuration.priority.find_index { |iso| iso == code.iso }.to_i }
      end

      def for_select(type = :alpha2)
        all.map { |country| [country.name, country.send(type)] }
      end

      def iso
        IsoCountryCodes.configuration.iso_type = :alpha2 unless respond_to? IsoCountryCodes.configuration.iso_type
        public_send IsoCountryCodes.configuration.iso_type
      end

      def currencies
        if defined? @currencies
          return @currencies
        else
          return [@main_currency]
        end
      end
    end
  end
end

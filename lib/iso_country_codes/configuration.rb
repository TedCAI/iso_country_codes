class IsoCountryCodes
  class Configuration
    attr_accessor :iso_type, :priority, :active

    def initialize
      @iso_type = :alpha2
    end
  end
end

module Fae

  # A language described by any number of characters
  class Language
    attr_accessor :characters

    # Creates a new language instance.
    #
    # @param characters [Array] an array of characters
    def initialize(characters)
      @characters = []
      @characters = characters.uniq
    end

    # Checks if a string is valid for this language.
    #
    # @param string [String] the string to check
    def string_is_valid(string)
      # Use lookahead to check for valid string
      regex = "^(?=.*\\D)[#{@characters.join('|')}]+$"

      if (string.match /#{regex}/)
        return true
      end
      return false
    end

    # Adds a character to the language.
    #
    # @param char [String] the character to add
    def add_character(char)
      @characters << char
    end
  end
end
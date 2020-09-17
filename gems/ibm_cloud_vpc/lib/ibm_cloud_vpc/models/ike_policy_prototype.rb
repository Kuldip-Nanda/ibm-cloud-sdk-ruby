=begin
#Virtual Private Cloud API

#The IBM Cloud Virtual Private Cloud (VPC) API can be used to programmatically provision and manage infrastructure resources, including virtual server instances, subnets, volumes, and load balancers.

The version of the OpenAPI document: 2020-09-08

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'date'

module IbmCloudVpc
  class IKEPolicyPrototype
    # The authentication algorithm
    attr_accessor :authentication_algorithm

    # The Diffie-Hellman group
    attr_accessor :dh_group

    # The encryption algorithm
    attr_accessor :encryption_algorithm

    # The IKE protocol version
    attr_accessor :ike_version

    # The key lifetime in seconds
    attr_accessor :key_lifetime

    # The user-defined name for this IKE policy
    attr_accessor :name

    attr_accessor :resource_group

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'authentication_algorithm' => :'authentication_algorithm',
        :'dh_group' => :'dh_group',
        :'encryption_algorithm' => :'encryption_algorithm',
        :'ike_version' => :'ike_version',
        :'key_lifetime' => :'key_lifetime',
        :'name' => :'name',
        :'resource_group' => :'resource_group'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'authentication_algorithm' => :'String',
        :'dh_group' => :'Integer',
        :'encryption_algorithm' => :'String',
        :'ike_version' => :'Integer',
        :'key_lifetime' => :'Integer',
        :'name' => :'String',
        :'resource_group' => :'ResourceGroupIdentity'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `IbmCloudVpc::IKEPolicyPrototype` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IbmCloudVpc::IKEPolicyPrototype`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'authentication_algorithm')
        self.authentication_algorithm = attributes[:'authentication_algorithm']
      end

      if attributes.key?(:'dh_group')
        self.dh_group = attributes[:'dh_group']
      end

      if attributes.key?(:'encryption_algorithm')
        self.encryption_algorithm = attributes[:'encryption_algorithm']
      end

      if attributes.key?(:'ike_version')
        self.ike_version = attributes[:'ike_version']
      end

      if attributes.key?(:'key_lifetime')
        self.key_lifetime = attributes[:'key_lifetime']
      else
        self.key_lifetime = 28800
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'resource_group')
        self.resource_group = attributes[:'resource_group']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @authentication_algorithm.nil?
        invalid_properties.push('invalid value for "authentication_algorithm", authentication_algorithm cannot be nil.')
      end

      if @dh_group.nil?
        invalid_properties.push('invalid value for "dh_group", dh_group cannot be nil.')
      end

      if @encryption_algorithm.nil?
        invalid_properties.push('invalid value for "encryption_algorithm", encryption_algorithm cannot be nil.')
      end

      if @ike_version.nil?
        invalid_properties.push('invalid value for "ike_version", ike_version cannot be nil.')
      end

      if !@key_lifetime.nil? && @key_lifetime > 86400
        invalid_properties.push('invalid value for "key_lifetime", must be smaller than or equal to 86400.')
      end

      if !@key_lifetime.nil? && @key_lifetime < 1800
        invalid_properties.push('invalid value for "key_lifetime", must be greater than or equal to 1800.')
      end

      if !@name.nil? && @name.to_s.length > 63
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 63.')
      end

      if !@name.nil? && @name.to_s.length < 1
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 1.')
      end

      pattern = Regexp.new(/^([a-z]|[a-z][-a-z0-9]*[a-z0-9])$/)
      if !@name.nil? && @name !~ pattern
        invalid_properties.push("invalid value for \"name\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @authentication_algorithm.nil?
      authentication_algorithm_validator = EnumAttributeValidator.new('String', ["md5", "sha1", "sha256"])
      return false unless authentication_algorithm_validator.valid?(@authentication_algorithm)
      return false if @dh_group.nil?
      dh_group_validator = EnumAttributeValidator.new('Integer', [2, 5, 14])
      return false unless dh_group_validator.valid?(@dh_group)
      return false if @encryption_algorithm.nil?
      encryption_algorithm_validator = EnumAttributeValidator.new('String', ["triple_des", "aes128", "aes256"])
      return false unless encryption_algorithm_validator.valid?(@encryption_algorithm)
      return false if @ike_version.nil?
      ike_version_validator = EnumAttributeValidator.new('Integer', [1, 2])
      return false unless ike_version_validator.valid?(@ike_version)
      return false if !@key_lifetime.nil? && @key_lifetime > 86400
      return false if !@key_lifetime.nil? && @key_lifetime < 1800
      return false if !@name.nil? && @name.to_s.length > 63
      return false if !@name.nil? && @name.to_s.length < 1
      return false if !@name.nil? && @name !~ Regexp.new(/^([a-z]|[a-z][-a-z0-9]*[a-z0-9])$/)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] authentication_algorithm Object to be assigned
    def authentication_algorithm=(authentication_algorithm)
      validator = EnumAttributeValidator.new('String', ["md5", "sha1", "sha256"])
      unless validator.valid?(authentication_algorithm)
        fail ArgumentError, "invalid value for \"authentication_algorithm\", must be one of #{validator.allowable_values}."
      end
      @authentication_algorithm = authentication_algorithm
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] dh_group Object to be assigned
    def dh_group=(dh_group)
      validator = EnumAttributeValidator.new('Integer', [2, 5, 14])
      unless validator.valid?(dh_group)
        fail ArgumentError, "invalid value for \"dh_group\", must be one of #{validator.allowable_values}."
      end
      @dh_group = dh_group
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] encryption_algorithm Object to be assigned
    def encryption_algorithm=(encryption_algorithm)
      validator = EnumAttributeValidator.new('String', ["triple_des", "aes128", "aes256"])
      unless validator.valid?(encryption_algorithm)
        fail ArgumentError, "invalid value for \"encryption_algorithm\", must be one of #{validator.allowable_values}."
      end
      @encryption_algorithm = encryption_algorithm
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ike_version Object to be assigned
    def ike_version=(ike_version)
      validator = EnumAttributeValidator.new('Integer', [1, 2])
      unless validator.valid?(ike_version)
        fail ArgumentError, "invalid value for \"ike_version\", must be one of #{validator.allowable_values}."
      end
      @ike_version = ike_version
    end

    # Custom attribute writer method with validation
    # @param [Object] key_lifetime Value to be assigned
    def key_lifetime=(key_lifetime)
      if !key_lifetime.nil? && key_lifetime > 86400
        fail ArgumentError, 'invalid value for "key_lifetime", must be smaller than or equal to 86400.'
      end

      if !key_lifetime.nil? && key_lifetime < 1800
        fail ArgumentError, 'invalid value for "key_lifetime", must be greater than or equal to 1800.'
      end

      @key_lifetime = key_lifetime
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.length > 63
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 63.'
      end

      if !name.nil? && name.to_s.length < 1
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^([a-z]|[a-z][-a-z0-9]*[a-z0-9])$/)
      if !name.nil? && name !~ pattern
        fail ArgumentError, "invalid value for \"name\", must conform to the pattern #{pattern}."
      end

      @name = name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          authentication_algorithm == o.authentication_algorithm &&
          dh_group == o.dh_group &&
          encryption_algorithm == o.encryption_algorithm &&
          ike_version == o.ike_version &&
          key_lifetime == o.key_lifetime &&
          name == o.name &&
          resource_group == o.resource_group
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [authentication_algorithm, dh_group, encryption_algorithm, ike_version, key_lifetime, name, resource_group].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        IbmCloudVpc.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end
        
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end

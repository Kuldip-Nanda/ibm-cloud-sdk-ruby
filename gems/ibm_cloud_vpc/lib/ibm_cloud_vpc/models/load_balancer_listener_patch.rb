=begin
#Virtual Private Cloud API

#The IBM Cloud Virtual Private Cloud (VPC) API can be used to programmatically provision and manage infrastructure resources, including virtual server instances, subnets, volumes, and load balancers.

The version of the OpenAPI document: 2020-09-08

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'date'

module IbmCloudVpc
  class LoadBalancerListenerPatch
    attr_accessor :certificate_instance

    # The connection limit of the listener.
    attr_accessor :connection_limit

    attr_accessor :default_pool

    # The listener port number.
    attr_accessor :port

    # The listener protocol. Load balancers in the `network` family support `tcp`. Load balancers in the `application` family support `tcp`, `http`, and `https`.
    attr_accessor :protocol

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
        :'certificate_instance' => :'certificate_instance',
        :'connection_limit' => :'connection_limit',
        :'default_pool' => :'default_pool',
        :'port' => :'port',
        :'protocol' => :'protocol'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'certificate_instance' => :'CertificateInstanceIdentity',
        :'connection_limit' => :'Integer',
        :'default_pool' => :'LoadBalancerPoolIdentity',
        :'port' => :'Integer',
        :'protocol' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IbmCloudVpc::LoadBalancerListenerPatch` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IbmCloudVpc::LoadBalancerListenerPatch`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'certificate_instance')
        self.certificate_instance = attributes[:'certificate_instance']
      end

      if attributes.key?(:'connection_limit')
        self.connection_limit = attributes[:'connection_limit']
      end

      if attributes.key?(:'default_pool')
        self.default_pool = attributes[:'default_pool']
      end

      if attributes.key?(:'port')
        self.port = attributes[:'port']
      end

      if attributes.key?(:'protocol')
        self.protocol = attributes[:'protocol']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@connection_limit.nil? && @connection_limit > 15000
        invalid_properties.push('invalid value for "connection_limit", must be smaller than or equal to 15000.')
      end

      if !@connection_limit.nil? && @connection_limit < 1
        invalid_properties.push('invalid value for "connection_limit", must be greater than or equal to 1.')
      end

      if !@port.nil? && @port > 65535
        invalid_properties.push('invalid value for "port", must be smaller than or equal to 65535.')
      end

      if !@port.nil? && @port < 1
        invalid_properties.push('invalid value for "port", must be greater than or equal to 1.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@connection_limit.nil? && @connection_limit > 15000
      return false if !@connection_limit.nil? && @connection_limit < 1
      return false if !@port.nil? && @port > 65535
      return false if !@port.nil? && @port < 1
      protocol_validator = EnumAttributeValidator.new('String', ["http", "https", "tcp"])
      return false unless protocol_validator.valid?(@protocol)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] connection_limit Value to be assigned
    def connection_limit=(connection_limit)
      if !connection_limit.nil? && connection_limit > 15000
        fail ArgumentError, 'invalid value for "connection_limit", must be smaller than or equal to 15000.'
      end

      if !connection_limit.nil? && connection_limit < 1
        fail ArgumentError, 'invalid value for "connection_limit", must be greater than or equal to 1.'
      end

      @connection_limit = connection_limit
    end

    # Custom attribute writer method with validation
    # @param [Object] port Value to be assigned
    def port=(port)
      if !port.nil? && port > 65535
        fail ArgumentError, 'invalid value for "port", must be smaller than or equal to 65535.'
      end

      if !port.nil? && port < 1
        fail ArgumentError, 'invalid value for "port", must be greater than or equal to 1.'
      end

      @port = port
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] protocol Object to be assigned
    def protocol=(protocol)
      validator = EnumAttributeValidator.new('String', ["http", "https", "tcp"])
      unless validator.valid?(protocol)
        fail ArgumentError, "invalid value for \"protocol\", must be one of #{validator.allowable_values}."
      end
      @protocol = protocol
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          certificate_instance == o.certificate_instance &&
          connection_limit == o.connection_limit &&
          default_pool == o.default_pool &&
          port == o.port &&
          protocol == o.protocol
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [certificate_instance, connection_limit, default_pool, port, protocol].hash
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

=begin
#Virtual Private Cloud API

#The IBM Cloud Virtual Private Cloud (VPC) API can be used to programmatically provision and manage infrastructure resources, including virtual server instances, subnets, volumes, and load balancers.

The version of the OpenAPI document: 2020-09-08

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'date'

module IbmCloudVpc
  class IPsecPolicy
    # The authentication algorithm
    attr_accessor :authentication_algorithm

    # Collection of references to VPN gateway connections that use this IPsec policy
    attr_accessor :connections

    # The date and time that this IPsec policy was created
    attr_accessor :created_at

    # The encapsulation mode used. Only `tunnel` is supported.
    attr_accessor :encapsulation_mode

    # The encryption algorithm
    attr_accessor :encryption_algorithm

    # The IPsec policy's canonical URL
    attr_accessor :href

    # The unique identifier for this IPsec policy
    attr_accessor :id

    # The key lifetime in seconds
    attr_accessor :key_lifetime

    # The user-defined name for this IPsec policy
    attr_accessor :name

    # Perfect Forward Secrecy
    attr_accessor :pfs

    attr_accessor :resource_group

    # The resource type
    attr_accessor :resource_type

    # The transform protocol used. Only `esp` is supported.
    attr_accessor :transform_protocol

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
        :'connections' => :'connections',
        :'created_at' => :'created_at',
        :'encapsulation_mode' => :'encapsulation_mode',
        :'encryption_algorithm' => :'encryption_algorithm',
        :'href' => :'href',
        :'id' => :'id',
        :'key_lifetime' => :'key_lifetime',
        :'name' => :'name',
        :'pfs' => :'pfs',
        :'resource_group' => :'resource_group',
        :'resource_type' => :'resource_type',
        :'transform_protocol' => :'transform_protocol'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'authentication_algorithm' => :'String',
        :'connections' => :'Array<VPNGatewayConnectionReference>',
        :'created_at' => :'DateTime',
        :'encapsulation_mode' => :'String',
        :'encryption_algorithm' => :'String',
        :'href' => :'String',
        :'id' => :'String',
        :'key_lifetime' => :'Integer',
        :'name' => :'String',
        :'pfs' => :'String',
        :'resource_group' => :'ResourceGroupReference',
        :'resource_type' => :'String',
        :'transform_protocol' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IbmCloudVpc::IPsecPolicy` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IbmCloudVpc::IPsecPolicy`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'authentication_algorithm')
        self.authentication_algorithm = attributes[:'authentication_algorithm']
      end

      if attributes.key?(:'connections')
        if (value = attributes[:'connections']).is_a?(Array)
          self.connections = value
        end
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'encapsulation_mode')
        self.encapsulation_mode = attributes[:'encapsulation_mode']
      end

      if attributes.key?(:'encryption_algorithm')
        self.encryption_algorithm = attributes[:'encryption_algorithm']
      end

      if attributes.key?(:'href')
        self.href = attributes[:'href']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'key_lifetime')
        self.key_lifetime = attributes[:'key_lifetime']
      else
        self.key_lifetime = 3600
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'pfs')
        self.pfs = attributes[:'pfs']
      end

      if attributes.key?(:'resource_group')
        self.resource_group = attributes[:'resource_group']
      end

      if attributes.key?(:'resource_type')
        self.resource_type = attributes[:'resource_type']
      end

      if attributes.key?(:'transform_protocol')
        self.transform_protocol = attributes[:'transform_protocol']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @authentication_algorithm.nil?
        invalid_properties.push('invalid value for "authentication_algorithm", authentication_algorithm cannot be nil.')
      end

      if @connections.nil?
        invalid_properties.push('invalid value for "connections", connections cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @encapsulation_mode.nil?
        invalid_properties.push('invalid value for "encapsulation_mode", encapsulation_mode cannot be nil.')
      end

      if @encryption_algorithm.nil?
        invalid_properties.push('invalid value for "encryption_algorithm", encryption_algorithm cannot be nil.')
      end

      if @href.nil?
        invalid_properties.push('invalid value for "href", href cannot be nil.')
      end

      pattern = Regexp.new(/^http(s)?:\\/\\/([^\\/?#]*)([^?#]*)(\?([^#]*))?(#(.*))?$/)
      if @href !~ pattern
        invalid_properties.push("invalid value for \"href\", must conform to the pattern #{pattern}.")
      end

      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @id.to_s.length > 64
        invalid_properties.push('invalid value for "id", the character length must be smaller than or equal to 64.')
      end

      if @id.to_s.length < 1
        invalid_properties.push('invalid value for "id", the character length must be great than or equal to 1.')
      end

      pattern = Regexp.new(/^[-0-9a-z_]+$/)
      if @id !~ pattern
        invalid_properties.push("invalid value for \"id\", must conform to the pattern #{pattern}.")
      end

      if @key_lifetime.nil?
        invalid_properties.push('invalid value for "key_lifetime", key_lifetime cannot be nil.')
      end

      if @key_lifetime > 86400
        invalid_properties.push('invalid value for "key_lifetime", must be smaller than or equal to 86400.')
      end

      if @key_lifetime < 1800
        invalid_properties.push('invalid value for "key_lifetime", must be greater than or equal to 1800.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @name.to_s.length > 63
        invalid_properties.push('invalid value for "name", the character length must be smaller than or equal to 63.')
      end

      if @name.to_s.length < 1
        invalid_properties.push('invalid value for "name", the character length must be great than or equal to 1.')
      end

      pattern = Regexp.new(/^([a-z]|[a-z][-a-z0-9]*[a-z0-9])$/)
      if @name !~ pattern
        invalid_properties.push("invalid value for \"name\", must conform to the pattern #{pattern}.")
      end

      if @pfs.nil?
        invalid_properties.push('invalid value for "pfs", pfs cannot be nil.')
      end

      if @resource_group.nil?
        invalid_properties.push('invalid value for "resource_group", resource_group cannot be nil.')
      end

      if @resource_type.nil?
        invalid_properties.push('invalid value for "resource_type", resource_type cannot be nil.')
      end

      if @transform_protocol.nil?
        invalid_properties.push('invalid value for "transform_protocol", transform_protocol cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @authentication_algorithm.nil?
      authentication_algorithm_validator = EnumAttributeValidator.new('String', ["md5", "sha1", "sha256"])
      return false unless authentication_algorithm_validator.valid?(@authentication_algorithm)
      return false if @connections.nil?
      return false if @created_at.nil?
      return false if @encapsulation_mode.nil?
      encapsulation_mode_validator = EnumAttributeValidator.new('String', ["tunnel"])
      return false unless encapsulation_mode_validator.valid?(@encapsulation_mode)
      return false if @encryption_algorithm.nil?
      encryption_algorithm_validator = EnumAttributeValidator.new('String', ["triple_des", "aes128", "aes256"])
      return false unless encryption_algorithm_validator.valid?(@encryption_algorithm)
      return false if @href.nil?
      return false if @href !~ Regexp.new(/^http(s)?:\\/\\/([^\\/?#]*)([^?#]*)(\?([^#]*))?(#(.*))?$/)
      return false if @id.nil?
      return false if @id.to_s.length > 64
      return false if @id.to_s.length < 1
      return false if @id !~ Regexp.new(/^[-0-9a-z_]+$/)
      return false if @key_lifetime.nil?
      return false if @key_lifetime > 86400
      return false if @key_lifetime < 1800
      return false if @name.nil?
      return false if @name.to_s.length > 63
      return false if @name.to_s.length < 1
      return false if @name !~ Regexp.new(/^([a-z]|[a-z][-a-z0-9]*[a-z0-9])$/)
      return false if @pfs.nil?
      pfs_validator = EnumAttributeValidator.new('String', ["disabled", "group_14", "group_2", "group_5"])
      return false unless pfs_validator.valid?(@pfs)
      return false if @resource_group.nil?
      return false if @resource_type.nil?
      resource_type_validator = EnumAttributeValidator.new('String', ["ipsec_policy"])
      return false unless resource_type_validator.valid?(@resource_type)
      return false if @transform_protocol.nil?
      transform_protocol_validator = EnumAttributeValidator.new('String', ["esp"])
      return false unless transform_protocol_validator.valid?(@transform_protocol)
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
    # @param [Object] encapsulation_mode Object to be assigned
    def encapsulation_mode=(encapsulation_mode)
      validator = EnumAttributeValidator.new('String', ["tunnel"])
      unless validator.valid?(encapsulation_mode)
        fail ArgumentError, "invalid value for \"encapsulation_mode\", must be one of #{validator.allowable_values}."
      end
      @encapsulation_mode = encapsulation_mode
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

    # Custom attribute writer method with validation
    # @param [Object] href Value to be assigned
    def href=(href)
      if href.nil?
        fail ArgumentError, 'href cannot be nil'
      end

      pattern = Regexp.new(/^http(s)?:\\/\\/([^\\/?#]*)([^?#]*)(\?([^#]*))?(#(.*))?$/)
      if href !~ pattern
        fail ArgumentError, "invalid value for \"href\", must conform to the pattern #{pattern}."
      end

      @href = href
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.nil?
        fail ArgumentError, 'id cannot be nil'
      end

      if id.to_s.length > 64
        fail ArgumentError, 'invalid value for "id", the character length must be smaller than or equal to 64.'
      end

      if id.to_s.length < 1
        fail ArgumentError, 'invalid value for "id", the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^[-0-9a-z_]+$/)
      if id !~ pattern
        fail ArgumentError, "invalid value for \"id\", must conform to the pattern #{pattern}."
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] key_lifetime Value to be assigned
    def key_lifetime=(key_lifetime)
      if key_lifetime.nil?
        fail ArgumentError, 'key_lifetime cannot be nil'
      end

      if key_lifetime > 86400
        fail ArgumentError, 'invalid value for "key_lifetime", must be smaller than or equal to 86400.'
      end

      if key_lifetime < 1800
        fail ArgumentError, 'invalid value for "key_lifetime", must be greater than or equal to 1800.'
      end

      @key_lifetime = key_lifetime
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.nil?
        fail ArgumentError, 'name cannot be nil'
      end

      if name.to_s.length > 63
        fail ArgumentError, 'invalid value for "name", the character length must be smaller than or equal to 63.'
      end

      if name.to_s.length < 1
        fail ArgumentError, 'invalid value for "name", the character length must be great than or equal to 1.'
      end

      pattern = Regexp.new(/^([a-z]|[a-z][-a-z0-9]*[a-z0-9])$/)
      if name !~ pattern
        fail ArgumentError, "invalid value for \"name\", must conform to the pattern #{pattern}."
      end

      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pfs Object to be assigned
    def pfs=(pfs)
      validator = EnumAttributeValidator.new('String', ["disabled", "group_14", "group_2", "group_5"])
      unless validator.valid?(pfs)
        fail ArgumentError, "invalid value for \"pfs\", must be one of #{validator.allowable_values}."
      end
      @pfs = pfs
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] resource_type Object to be assigned
    def resource_type=(resource_type)
      validator = EnumAttributeValidator.new('String', ["ipsec_policy"])
      unless validator.valid?(resource_type)
        fail ArgumentError, "invalid value for \"resource_type\", must be one of #{validator.allowable_values}."
      end
      @resource_type = resource_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transform_protocol Object to be assigned
    def transform_protocol=(transform_protocol)
      validator = EnumAttributeValidator.new('String', ["esp"])
      unless validator.valid?(transform_protocol)
        fail ArgumentError, "invalid value for \"transform_protocol\", must be one of #{validator.allowable_values}."
      end
      @transform_protocol = transform_protocol
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          authentication_algorithm == o.authentication_algorithm &&
          connections == o.connections &&
          created_at == o.created_at &&
          encapsulation_mode == o.encapsulation_mode &&
          encryption_algorithm == o.encryption_algorithm &&
          href == o.href &&
          id == o.id &&
          key_lifetime == o.key_lifetime &&
          name == o.name &&
          pfs == o.pfs &&
          resource_group == o.resource_group &&
          resource_type == o.resource_type &&
          transform_protocol == o.transform_protocol
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [authentication_algorithm, connections, created_at, encapsulation_mode, encryption_algorithm, href, id, key_lifetime, name, pfs, resource_group, resource_type, transform_protocol].hash
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

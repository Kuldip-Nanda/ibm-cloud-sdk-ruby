=begin
#Virtual Private Cloud API

#The IBM Cloud Virtual Private Cloud (VPC) API can be used to programmatically provision and manage infrastructure resources, including virtual server instances, subnets, volumes, and load balancers.

The version of the OpenAPI document: 2020-09-08

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'date'

module IbmCloudVpc
  class NetworkInterface
    # The date and time that the network interface was created
    attr_accessor :created_at

    # Array of references to floating IPs associated with this network interface
    attr_accessor :floating_ips

    # The URL for this network interface
    attr_accessor :href

    # The unique identifier for this network interface
    attr_accessor :id

    # The user-defined name for this network interface
    attr_accessor :name

    # The network interface port speed in Mbps
    attr_accessor :port_speed

    # The primary IPv4 address
    attr_accessor :primary_ipv4_address

    # The resource type
    attr_accessor :resource_type

    # Collection of security groups
    attr_accessor :security_groups

    # The status of the network interface
    attr_accessor :status

    attr_accessor :subnet

    # The type of this network interface as it relates to an instance
    attr_accessor :type

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
        :'created_at' => :'created_at',
        :'floating_ips' => :'floating_ips',
        :'href' => :'href',
        :'id' => :'id',
        :'name' => :'name',
        :'port_speed' => :'port_speed',
        :'primary_ipv4_address' => :'primary_ipv4_address',
        :'resource_type' => :'resource_type',
        :'security_groups' => :'security_groups',
        :'status' => :'status',
        :'subnet' => :'subnet',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'created_at' => :'DateTime',
        :'floating_ips' => :'Array<FloatingIPReference>',
        :'href' => :'String',
        :'id' => :'String',
        :'name' => :'String',
        :'port_speed' => :'Integer',
        :'primary_ipv4_address' => :'String',
        :'resource_type' => :'String',
        :'security_groups' => :'Array<SecurityGroupReference>',
        :'status' => :'String',
        :'subnet' => :'SubnetReference',
        :'type' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IbmCloudVpc::NetworkInterface` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IbmCloudVpc::NetworkInterface`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'floating_ips')
        if (value = attributes[:'floating_ips']).is_a?(Array)
          self.floating_ips = value
        end
      end

      if attributes.key?(:'href')
        self.href = attributes[:'href']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'port_speed')
        self.port_speed = attributes[:'port_speed']
      end

      if attributes.key?(:'primary_ipv4_address')
        self.primary_ipv4_address = attributes[:'primary_ipv4_address']
      end

      if attributes.key?(:'resource_type')
        self.resource_type = attributes[:'resource_type']
      end

      if attributes.key?(:'security_groups')
        if (value = attributes[:'security_groups']).is_a?(Array)
          self.security_groups = value
        end
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'subnet')
        self.subnet = attributes[:'subnet']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
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

      if @port_speed.nil?
        invalid_properties.push('invalid value for "port_speed", port_speed cannot be nil.')
      end

      if @primary_ipv4_address.nil?
        invalid_properties.push('invalid value for "primary_ipv4_address", primary_ipv4_address cannot be nil.')
      end

      pattern = Regexp.new(/^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$/)
      if @primary_ipv4_address !~ pattern
        invalid_properties.push("invalid value for \"primary_ipv4_address\", must conform to the pattern #{pattern}.")
      end

      if @resource_type.nil?
        invalid_properties.push('invalid value for "resource_type", resource_type cannot be nil.')
      end

      if @security_groups.nil?
        invalid_properties.push('invalid value for "security_groups", security_groups cannot be nil.')
      end

      if @status.nil?
        invalid_properties.push('invalid value for "status", status cannot be nil.')
      end

      if @subnet.nil?
        invalid_properties.push('invalid value for "subnet", subnet cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @created_at.nil?
      return false if @href.nil?
      return false if @href !~ Regexp.new(/^http(s)?:\\/\\/([^\\/?#]*)([^?#]*)(\?([^#]*))?(#(.*))?$/)
      return false if @id.nil?
      return false if @id.to_s.length > 64
      return false if @id.to_s.length < 1
      return false if @id !~ Regexp.new(/^[-0-9a-z_]+$/)
      return false if @name.nil?
      return false if @name.to_s.length > 63
      return false if @name.to_s.length < 1
      return false if @name !~ Regexp.new(/^([a-z]|[a-z][-a-z0-9]*[a-z0-9])$/)
      return false if @port_speed.nil?
      return false if @primary_ipv4_address.nil?
      return false if @primary_ipv4_address !~ Regexp.new(/^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$/)
      return false if @resource_type.nil?
      resource_type_validator = EnumAttributeValidator.new('String', ["network_interface"])
      return false unless resource_type_validator.valid?(@resource_type)
      return false if @security_groups.nil?
      return false if @status.nil?
      status_validator = EnumAttributeValidator.new('String', ["available", "failed", "pending"])
      return false unless status_validator.valid?(@status)
      return false if @subnet.nil?
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["primary", "secondary"])
      return false unless type_validator.valid?(@type)
      true
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

    # Custom attribute writer method with validation
    # @param [Object] primary_ipv4_address Value to be assigned
    def primary_ipv4_address=(primary_ipv4_address)
      if primary_ipv4_address.nil?
        fail ArgumentError, 'primary_ipv4_address cannot be nil'
      end

      pattern = Regexp.new(/^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])$/)
      if primary_ipv4_address !~ pattern
        fail ArgumentError, "invalid value for \"primary_ipv4_address\", must conform to the pattern #{pattern}."
      end

      @primary_ipv4_address = primary_ipv4_address
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] resource_type Object to be assigned
    def resource_type=(resource_type)
      validator = EnumAttributeValidator.new('String', ["network_interface"])
      unless validator.valid?(resource_type)
        fail ArgumentError, "invalid value for \"resource_type\", must be one of #{validator.allowable_values}."
      end
      @resource_type = resource_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["available", "failed", "pending"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["primary", "secondary"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          created_at == o.created_at &&
          floating_ips == o.floating_ips &&
          href == o.href &&
          id == o.id &&
          name == o.name &&
          port_speed == o.port_speed &&
          primary_ipv4_address == o.primary_ipv4_address &&
          resource_type == o.resource_type &&
          security_groups == o.security_groups &&
          status == o.status &&
          subnet == o.subnet &&
          type == o.type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [created_at, floating_ips, href, id, name, port_speed, primary_ipv4_address, resource_type, security_groups, status, subnet, type].hash
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

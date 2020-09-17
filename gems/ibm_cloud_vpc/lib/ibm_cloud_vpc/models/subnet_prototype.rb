=begin
#Virtual Private Cloud API

#The IBM Cloud Virtual Private Cloud (VPC) API can be used to programmatically provision and manage infrastructure resources, including virtual server instances, subnets, volumes, and load balancers.

The version of the OpenAPI document: 2020-09-08

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'date'

module IbmCloudVpc
  class SubnetPrototype
    # The IP version(s) to support for this subnet.
    attr_accessor :ip_version

    # The user-defined name for this subnet. Names must be unique within the VPC the subnet resides in. If unspecified, the name will be a hyphenated list of randomly-selected words.
    attr_accessor :name

    # The network ACL to use for this subnet. If unspecified, the default network ACL for the VPC is used
    attr_accessor :network_acl

    attr_accessor :public_gateway

    attr_accessor :resource_group

    attr_accessor :vpc

    # The total number of IPv4 addresses required. Must be a power of 2. The VPC must have a default address prefix in the specified zone, and that prefix must have a free CIDR range with at least this number of addresses.
    attr_accessor :total_ipv4_address_count

    attr_accessor :zone

    # The IPv4 range of the subnet, expressed in CIDR format. The prefix length of the subnet's CIDR must be between `/8` (16,777,216 addresses) and `/29` (8 addresses). The IPv4 range of the subnet's CIDR must fall within an existing address prefix in the VPC. The subnet will be created in the zone of the address prefix that contains the IPv4 CIDR. If zone is specified, it must match the zone of the address prefix that contains the subnet's IPv4 CIDR.
    attr_accessor :ipv4_cidr_block

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'ip_version' => :'ip_version',
        :'name' => :'name',
        :'network_acl' => :'network_acl',
        :'public_gateway' => :'public_gateway',
        :'resource_group' => :'resource_group',
        :'vpc' => :'vpc',
        :'total_ipv4_address_count' => :'total_ipv4_address_count',
        :'zone' => :'zone',
        :'ipv4_cidr_block' => :'ipv4_cidr_block'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'ip_version' => :'String',
        :'name' => :'String',
        :'network_acl' => :'NetworkACLIdentity',
        :'public_gateway' => :'PublicGatewayIdentity',
        :'resource_group' => :'ResourceGroupIdentity',
        :'vpc' => :'VPCIdentity',
        :'total_ipv4_address_count' => :'Integer',
        :'zone' => :'ZoneIdentity',
        :'ipv4_cidr_block' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # List of class defined in oneOf (OpenAPI v3)
    def self.openapi_one_of
      [
      :'SubnetByCIDR',
      :'SubnetByTotalCount'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `IbmCloudVpc::SubnetPrototype` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IbmCloudVpc::SubnetPrototype`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'ip_version')
        self.ip_version = attributes[:'ip_version']
      else
        self.ip_version = 'ipv4'
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'network_acl')
        self.network_acl = attributes[:'network_acl']
      end

      if attributes.key?(:'public_gateway')
        self.public_gateway = attributes[:'public_gateway']
      end

      if attributes.key?(:'resource_group')
        self.resource_group = attributes[:'resource_group']
      end

      if attributes.key?(:'vpc')
        self.vpc = attributes[:'vpc']
      end

      if attributes.key?(:'total_ipv4_address_count')
        self.total_ipv4_address_count = attributes[:'total_ipv4_address_count']
      end

      if attributes.key?(:'zone')
        self.zone = attributes[:'zone']
      end

      if attributes.key?(:'ipv4_cidr_block')
        self.ipv4_cidr_block = attributes[:'ipv4_cidr_block']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
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

      if @vpc.nil?
        invalid_properties.push('invalid value for "vpc", vpc cannot be nil.')
      end

      if @total_ipv4_address_count.nil?
        invalid_properties.push('invalid value for "total_ipv4_address_count", total_ipv4_address_count cannot be nil.')
      end

      if @total_ipv4_address_count > 16777216
        invalid_properties.push('invalid value for "total_ipv4_address_count", must be smaller than or equal to 16777216.')
      end

      if @total_ipv4_address_count < 8
        invalid_properties.push('invalid value for "total_ipv4_address_count", must be greater than or equal to 8.')
      end

      if @zone.nil?
        invalid_properties.push('invalid value for "zone", zone cannot be nil.')
      end

      if @ipv4_cidr_block.nil?
        invalid_properties.push('invalid value for "ipv4_cidr_block", ipv4_cidr_block cannot be nil.')
      end

      pattern = Regexp.new(/^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\\/(3[0-2]|[1-2][0-9]|[0-9]))$/)
      if @ipv4_cidr_block !~ pattern
        invalid_properties.push("invalid value for \"ipv4_cidr_block\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      ip_version_validator = EnumAttributeValidator.new('String', ["ipv4"])
      return false unless ip_version_validator.valid?(@ip_version)
      return false if !@name.nil? && @name.to_s.length > 63
      return false if !@name.nil? && @name.to_s.length < 1
      return false if !@name.nil? && @name !~ Regexp.new(/^([a-z]|[a-z][-a-z0-9]*[a-z0-9])$/)
      return false if @vpc.nil?
      return false if @total_ipv4_address_count.nil?
      return false if @total_ipv4_address_count > 16777216
      return false if @total_ipv4_address_count < 8
      return false if @zone.nil?
      return false if @ipv4_cidr_block.nil?
      return false if @ipv4_cidr_block !~ Regexp.new(/^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\\/(3[0-2]|[1-2][0-9]|[0-9]))$/)
      _one_of_found = false
      self.class.openapi_one_of.each do |_class|
        _one_of = IbmCloudVpc.const_get(_class).build_from_hash(self.to_hash)
        if _one_of.valid?
          if _one_of_found
            return false
          else
            _one_of_found = true
          end
        end
      end

      if !_one_of_found
        return false
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ip_version Object to be assigned
    def ip_version=(ip_version)
      validator = EnumAttributeValidator.new('String', ["ipv4"])
      unless validator.valid?(ip_version)
        fail ArgumentError, "invalid value for \"ip_version\", must be one of #{validator.allowable_values}."
      end
      @ip_version = ip_version
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

    # Custom attribute writer method with validation
    # @param [Object] total_ipv4_address_count Value to be assigned
    def total_ipv4_address_count=(total_ipv4_address_count)
      if total_ipv4_address_count.nil?
        fail ArgumentError, 'total_ipv4_address_count cannot be nil'
      end

      if total_ipv4_address_count > 16777216
        fail ArgumentError, 'invalid value for "total_ipv4_address_count", must be smaller than or equal to 16777216.'
      end

      if total_ipv4_address_count < 8
        fail ArgumentError, 'invalid value for "total_ipv4_address_count", must be greater than or equal to 8.'
      end

      @total_ipv4_address_count = total_ipv4_address_count
    end

    # Custom attribute writer method with validation
    # @param [Object] ipv4_cidr_block Value to be assigned
    def ipv4_cidr_block=(ipv4_cidr_block)
      if ipv4_cidr_block.nil?
        fail ArgumentError, 'ipv4_cidr_block cannot be nil'
      end

      pattern = Regexp.new(/^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\\/(3[0-2]|[1-2][0-9]|[0-9]))$/)
      if ipv4_cidr_block !~ pattern
        fail ArgumentError, "invalid value for \"ipv4_cidr_block\", must conform to the pattern #{pattern}."
      end

      @ipv4_cidr_block = ipv4_cidr_block
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          ip_version == o.ip_version &&
          name == o.name &&
          network_acl == o.network_acl &&
          public_gateway == o.public_gateway &&
          resource_group == o.resource_group &&
          vpc == o.vpc &&
          total_ipv4_address_count == o.total_ipv4_address_count &&
          zone == o.zone &&
          ipv4_cidr_block == o.ipv4_cidr_block
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [ip_version, name, network_acl, public_gateway, resource_group, vpc, total_ipv4_address_count, zone, ipv4_cidr_block].hash
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

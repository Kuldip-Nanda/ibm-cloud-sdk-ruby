=begin
#Virtual Private Cloud API

#The IBM Cloud Virtual Private Cloud (VPC) API can be used to programmatically provision and manage infrastructure resources, including virtual server instances, subnets, volumes, and load balancers.

The version of the OpenAPI document: 2020-09-08

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'date'

module IbmCloudVpc
  class InstanceGroupManager
    # The time window in seconds to aggregate metrics prior to evaluation
    attr_accessor :aggregation_window

    # The duration of time in seconds to pause further scale actions after scaling has taken place
    attr_accessor :cooldown

    # The URL for this instance group manager
    attr_accessor :href

    # The unique identifier for this instance group manager
    attr_accessor :id

    # If set to `true`, this manager will control the instance group.
    attr_accessor :management_enabled

    # The type of instance group manager.
    attr_accessor :manager_type

    # The maximum number of members in a managed instance group
    attr_accessor :max_membership_count

    # The minimum number of members in a managed instance group
    attr_accessor :min_membership_count

    # The user-defined name for this instance group manager. Names must be unique within the instance group.
    attr_accessor :name

    # The policies of the instance group manager
    attr_accessor :policies

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
        :'aggregation_window' => :'aggregation_window',
        :'cooldown' => :'cooldown',
        :'href' => :'href',
        :'id' => :'id',
        :'management_enabled' => :'management_enabled',
        :'manager_type' => :'manager_type',
        :'max_membership_count' => :'max_membership_count',
        :'min_membership_count' => :'min_membership_count',
        :'name' => :'name',
        :'policies' => :'policies'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'aggregation_window' => :'Integer',
        :'cooldown' => :'Integer',
        :'href' => :'String',
        :'id' => :'String',
        :'management_enabled' => :'Boolean',
        :'manager_type' => :'String',
        :'max_membership_count' => :'Integer',
        :'min_membership_count' => :'Integer',
        :'name' => :'String',
        :'policies' => :'Array<InstanceGroupManagerPolicyReference>'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IbmCloudVpc::InstanceGroupManager` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IbmCloudVpc::InstanceGroupManager`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'aggregation_window')
        self.aggregation_window = attributes[:'aggregation_window']
      else
        self.aggregation_window = 90
      end

      if attributes.key?(:'cooldown')
        self.cooldown = attributes[:'cooldown']
      else
        self.cooldown = 300
      end

      if attributes.key?(:'href')
        self.href = attributes[:'href']
      end

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'management_enabled')
        self.management_enabled = attributes[:'management_enabled']
      else
        self.management_enabled = true
      end

      if attributes.key?(:'manager_type')
        self.manager_type = attributes[:'manager_type']
      end

      if attributes.key?(:'max_membership_count')
        self.max_membership_count = attributes[:'max_membership_count']
      end

      if attributes.key?(:'min_membership_count')
        self.min_membership_count = attributes[:'min_membership_count']
      else
        self.min_membership_count = 1
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'policies')
        if (value = attributes[:'policies']).is_a?(Array)
          self.policies = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@aggregation_window.nil? && @aggregation_window > 600
        invalid_properties.push('invalid value for "aggregation_window", must be smaller than or equal to 600.')
      end

      if !@aggregation_window.nil? && @aggregation_window < 90
        invalid_properties.push('invalid value for "aggregation_window", must be greater than or equal to 90.')
      end

      if !@cooldown.nil? && @cooldown > 3600
        invalid_properties.push('invalid value for "cooldown", must be smaller than or equal to 3600.')
      end

      if !@cooldown.nil? && @cooldown < 120
        invalid_properties.push('invalid value for "cooldown", must be greater than or equal to 120.')
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

      if @management_enabled.nil?
        invalid_properties.push('invalid value for "management_enabled", management_enabled cannot be nil.')
      end

      if @manager_type.nil?
        invalid_properties.push('invalid value for "manager_type", manager_type cannot be nil.')
      end

      if !@max_membership_count.nil? && @max_membership_count > 100
        invalid_properties.push('invalid value for "max_membership_count", must be smaller than or equal to 100.')
      end

      if !@max_membership_count.nil? && @max_membership_count < 1
        invalid_properties.push('invalid value for "max_membership_count", must be greater than or equal to 1.')
      end

      if !@min_membership_count.nil? && @min_membership_count > 100
        invalid_properties.push('invalid value for "min_membership_count", must be smaller than or equal to 100.')
      end

      if !@min_membership_count.nil? && @min_membership_count < 1
        invalid_properties.push('invalid value for "min_membership_count", must be greater than or equal to 1.')
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

      pattern = Regexp.new(/^([a-z]|[a-z][-a-z0-9]*[a-z0-9]|[0-9][-a-z0-9]*([a-z]|[-a-z][-a-z0-9]*[a-z0-9]))$/)
      if @name !~ pattern
        invalid_properties.push("invalid value for \"name\", must conform to the pattern #{pattern}.")
      end

      if @policies.nil?
        invalid_properties.push('invalid value for "policies", policies cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@aggregation_window.nil? && @aggregation_window > 600
      return false if !@aggregation_window.nil? && @aggregation_window < 90
      return false if !@cooldown.nil? && @cooldown > 3600
      return false if !@cooldown.nil? && @cooldown < 120
      return false if @href.nil?
      return false if @href !~ Regexp.new(/^http(s)?:\\/\\/([^\\/?#]*)([^?#]*)(\?([^#]*))?(#(.*))?$/)
      return false if @id.nil?
      return false if @id.to_s.length > 64
      return false if @id.to_s.length < 1
      return false if @id !~ Regexp.new(/^[-0-9a-z_]+$/)
      return false if @management_enabled.nil?
      return false if @manager_type.nil?
      manager_type_validator = EnumAttributeValidator.new('String', ["autoscale"])
      return false unless manager_type_validator.valid?(@manager_type)
      return false if !@max_membership_count.nil? && @max_membership_count > 100
      return false if !@max_membership_count.nil? && @max_membership_count < 1
      return false if !@min_membership_count.nil? && @min_membership_count > 100
      return false if !@min_membership_count.nil? && @min_membership_count < 1
      return false if @name.nil?
      return false if @name.to_s.length > 63
      return false if @name.to_s.length < 1
      return false if @name !~ Regexp.new(/^([a-z]|[a-z][-a-z0-9]*[a-z0-9]|[0-9][-a-z0-9]*([a-z]|[-a-z][-a-z0-9]*[a-z0-9]))$/)
      return false if @policies.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] aggregation_window Value to be assigned
    def aggregation_window=(aggregation_window)
      if !aggregation_window.nil? && aggregation_window > 600
        fail ArgumentError, 'invalid value for "aggregation_window", must be smaller than or equal to 600.'
      end

      if !aggregation_window.nil? && aggregation_window < 90
        fail ArgumentError, 'invalid value for "aggregation_window", must be greater than or equal to 90.'
      end

      @aggregation_window = aggregation_window
    end

    # Custom attribute writer method with validation
    # @param [Object] cooldown Value to be assigned
    def cooldown=(cooldown)
      if !cooldown.nil? && cooldown > 3600
        fail ArgumentError, 'invalid value for "cooldown", must be smaller than or equal to 3600.'
      end

      if !cooldown.nil? && cooldown < 120
        fail ArgumentError, 'invalid value for "cooldown", must be greater than or equal to 120.'
      end

      @cooldown = cooldown
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] manager_type Object to be assigned
    def manager_type=(manager_type)
      validator = EnumAttributeValidator.new('String', ["autoscale"])
      unless validator.valid?(manager_type)
        fail ArgumentError, "invalid value for \"manager_type\", must be one of #{validator.allowable_values}."
      end
      @manager_type = manager_type
    end

    # Custom attribute writer method with validation
    # @param [Object] max_membership_count Value to be assigned
    def max_membership_count=(max_membership_count)
      if !max_membership_count.nil? && max_membership_count > 100
        fail ArgumentError, 'invalid value for "max_membership_count", must be smaller than or equal to 100.'
      end

      if !max_membership_count.nil? && max_membership_count < 1
        fail ArgumentError, 'invalid value for "max_membership_count", must be greater than or equal to 1.'
      end

      @max_membership_count = max_membership_count
    end

    # Custom attribute writer method with validation
    # @param [Object] min_membership_count Value to be assigned
    def min_membership_count=(min_membership_count)
      if !min_membership_count.nil? && min_membership_count > 100
        fail ArgumentError, 'invalid value for "min_membership_count", must be smaller than or equal to 100.'
      end

      if !min_membership_count.nil? && min_membership_count < 1
        fail ArgumentError, 'invalid value for "min_membership_count", must be greater than or equal to 1.'
      end

      @min_membership_count = min_membership_count
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

      pattern = Regexp.new(/^([a-z]|[a-z][-a-z0-9]*[a-z0-9]|[0-9][-a-z0-9]*([a-z]|[-a-z][-a-z0-9]*[a-z0-9]))$/)
      if name !~ pattern
        fail ArgumentError, "invalid value for \"name\", must conform to the pattern #{pattern}."
      end

      @name = name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          aggregation_window == o.aggregation_window &&
          cooldown == o.cooldown &&
          href == o.href &&
          id == o.id &&
          management_enabled == o.management_enabled &&
          manager_type == o.manager_type &&
          max_membership_count == o.max_membership_count &&
          min_membership_count == o.min_membership_count &&
          name == o.name &&
          policies == o.policies
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [aggregation_window, cooldown, href, id, management_enabled, manager_type, max_membership_count, min_membership_count, name, policies].hash
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

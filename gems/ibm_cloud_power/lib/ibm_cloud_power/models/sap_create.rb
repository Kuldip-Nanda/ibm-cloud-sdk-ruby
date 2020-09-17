=begin
#Power Cloud API

#IBM Power Cloud API for Power Hardware / Infrastructure

The version of the OpenAPI document: 1.0.0
Contact: kylej@us.ibm.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'date'

module IbmCloudPower
  class SAPCreate
    # Name of the sap pvm-instance
    attr_accessor :name

    # Image ID of the sap image to use for the server
    attr_accessor :image_id

    # SAP Profile ID for the amount of cores and memory
    attr_accessor :profile_id

    # The pvm instance networks information
    attr_accessor :networks

    # List of Volume IDs to attach to the pvm-instance on creation
    attr_accessor :volume_i_ds

    attr_accessor :instances

    # The name of the SSH Key to provide to the server for authenticating
    attr_accessor :ssh_key_name

    # Cloud init user defined data
    attr_accessor :user_data

    attr_accessor :pin_policy

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'image_id' => :'imageID',
        :'profile_id' => :'profileID',
        :'networks' => :'networks',
        :'volume_i_ds' => :'volumeIDs',
        :'instances' => :'instances',
        :'ssh_key_name' => :'sshKeyName',
        :'user_data' => :'userData',
        :'pin_policy' => :'pinPolicy'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'name' => :'String',
        :'image_id' => :'String',
        :'profile_id' => :'String',
        :'networks' => :'Array<PVMInstanceAddNetwork>',
        :'volume_i_ds' => :'Array<String>',
        :'instances' => :'PVMInstanceMultiCreate',
        :'ssh_key_name' => :'String',
        :'user_data' => :'String',
        :'pin_policy' => :'PinPolicy'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IbmCloudPower::SAPCreate` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IbmCloudPower::SAPCreate`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'image_id')
        self.image_id = attributes[:'image_id']
      end

      if attributes.key?(:'profile_id')
        self.profile_id = attributes[:'profile_id']
      end

      if attributes.key?(:'networks')
        if (value = attributes[:'networks']).is_a?(Array)
          self.networks = value
        end
      end

      if attributes.key?(:'volume_i_ds')
        if (value = attributes[:'volume_i_ds']).is_a?(Array)
          self.volume_i_ds = value
        end
      end

      if attributes.key?(:'instances')
        self.instances = attributes[:'instances']
      end

      if attributes.key?(:'ssh_key_name')
        self.ssh_key_name = attributes[:'ssh_key_name']
      end

      if attributes.key?(:'user_data')
        self.user_data = attributes[:'user_data']
      end

      if attributes.key?(:'pin_policy')
        self.pin_policy = attributes[:'pin_policy']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @image_id.nil?
        invalid_properties.push('invalid value for "image_id", image_id cannot be nil.')
      end

      if @profile_id.nil?
        invalid_properties.push('invalid value for "profile_id", profile_id cannot be nil.')
      end

      if @networks.nil?
        invalid_properties.push('invalid value for "networks", networks cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @image_id.nil?
      return false if @profile_id.nil?
      return false if @networks.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          image_id == o.image_id &&
          profile_id == o.profile_id &&
          networks == o.networks &&
          volume_i_ds == o.volume_i_ds &&
          instances == o.instances &&
          ssh_key_name == o.ssh_key_name &&
          user_data == o.user_data &&
          pin_policy == o.pin_policy
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [name, image_id, profile_id, networks, volume_i_ds, instances, ssh_key_name, user_data, pin_policy].hash
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
        IbmCloudPower.const_get(type).build_from_hash(value)
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

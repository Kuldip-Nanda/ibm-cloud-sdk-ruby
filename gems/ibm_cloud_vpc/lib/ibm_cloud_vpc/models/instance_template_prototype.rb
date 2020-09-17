=begin
#Virtual Private Cloud API

#The IBM Cloud Virtual Private Cloud (VPC) API can be used to programmatically provision and manage infrastructure resources, including virtual server instances, subnets, volumes, and load balancers.

The version of the OpenAPI document: 2020-09-08

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'date'

module IbmCloudVpc
  class InstanceTemplatePrototype
    # The public SSH keys for the administrative user of the virtual server instance. Up to 10 keys may be provided; if no keys are provided the instance will be inaccessible unless the image used provides another means of access. For Windows instances, one of the keys will be used to encrypt the administrator password.  Keys will be made available to the virtual server instance as cloud-init vendor data. For cloud-init enabled images, these keys will also be added as SSH authorized keys for the administrative user.
    attr_accessor :keys

    # The unique user-defined name for this virtual server instance (and default system hostname). If unspecified, the name will be a hyphenated list of randomly-selected words.
    attr_accessor :name

    # Collection of additional network interfaces to create for the virtual server instance
    attr_accessor :network_interfaces

    attr_accessor :profile

    attr_accessor :resource_group

    # User data to be made available when setting up the virtual server instance
    attr_accessor :user_data

    # Collection of volume attachments
    attr_accessor :volume_attachments

    attr_accessor :vpc

    attr_accessor :boot_volume_attachment

    attr_accessor :image

    attr_accessor :primary_network_interface

    attr_accessor :zone

    attr_accessor :source_template

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'keys' => :'keys',
        :'name' => :'name',
        :'network_interfaces' => :'network_interfaces',
        :'profile' => :'profile',
        :'resource_group' => :'resource_group',
        :'user_data' => :'user_data',
        :'volume_attachments' => :'volume_attachments',
        :'vpc' => :'vpc',
        :'boot_volume_attachment' => :'boot_volume_attachment',
        :'image' => :'image',
        :'primary_network_interface' => :'primary_network_interface',
        :'zone' => :'zone',
        :'source_template' => :'source_template'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'keys' => :'Array<KeyIdentity>',
        :'name' => :'String',
        :'network_interfaces' => :'Array<NetworkInterfacePrototype>',
        :'profile' => :'InstanceProfileIdentity',
        :'resource_group' => :'ResourceGroupIdentity',
        :'user_data' => :'String',
        :'volume_attachments' => :'Array<VolumeAttachmentPrototypeInstanceContext>',
        :'vpc' => :'VPCIdentity',
        :'boot_volume_attachment' => :'VolumeAttachmentPrototypeInstanceByImageContext',
        :'image' => :'ImageIdentity',
        :'primary_network_interface' => :'NetworkInterfacePrototype',
        :'zone' => :'ZoneIdentity',
        :'source_template' => :'InstanceTemplateIdentity'
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
      :'InstanceByImage',
      :'InstanceBySourceTemplate'
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `IbmCloudVpc::InstanceTemplatePrototype` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IbmCloudVpc::InstanceTemplatePrototype`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'keys')
        if (value = attributes[:'keys']).is_a?(Array)
          self.keys = value
        end
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'network_interfaces')
        if (value = attributes[:'network_interfaces']).is_a?(Array)
          self.network_interfaces = value
        end
      end

      if attributes.key?(:'profile')
        self.profile = attributes[:'profile']
      end

      if attributes.key?(:'resource_group')
        self.resource_group = attributes[:'resource_group']
      end

      if attributes.key?(:'user_data')
        self.user_data = attributes[:'user_data']
      end

      if attributes.key?(:'volume_attachments')
        if (value = attributes[:'volume_attachments']).is_a?(Array)
          self.volume_attachments = value
        end
      end

      if attributes.key?(:'vpc')
        self.vpc = attributes[:'vpc']
      end

      if attributes.key?(:'boot_volume_attachment')
        self.boot_volume_attachment = attributes[:'boot_volume_attachment']
      end

      if attributes.key?(:'image')
        self.image = attributes[:'image']
      end

      if attributes.key?(:'primary_network_interface')
        self.primary_network_interface = attributes[:'primary_network_interface']
      end

      if attributes.key?(:'zone')
        self.zone = attributes[:'zone']
      end

      if attributes.key?(:'source_template')
        self.source_template = attributes[:'source_template']
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

      if @image.nil?
        invalid_properties.push('invalid value for "image", image cannot be nil.')
      end

      if @primary_network_interface.nil?
        invalid_properties.push('invalid value for "primary_network_interface", primary_network_interface cannot be nil.')
      end

      if @zone.nil?
        invalid_properties.push('invalid value for "zone", zone cannot be nil.')
      end

      if @source_template.nil?
        invalid_properties.push('invalid value for "source_template", source_template cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@name.nil? && @name.to_s.length > 63
      return false if !@name.nil? && @name.to_s.length < 1
      return false if !@name.nil? && @name !~ Regexp.new(/^([a-z]|[a-z][-a-z0-9]*[a-z0-9])$/)
      return false if @image.nil?
      return false if @primary_network_interface.nil?
      return false if @zone.nil?
      return false if @source_template.nil?
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
          keys == o.keys &&
          name == o.name &&
          network_interfaces == o.network_interfaces &&
          profile == o.profile &&
          resource_group == o.resource_group &&
          user_data == o.user_data &&
          volume_attachments == o.volume_attachments &&
          vpc == o.vpc &&
          boot_volume_attachment == o.boot_volume_attachment &&
          image == o.image &&
          primary_network_interface == o.primary_network_interface &&
          zone == o.zone &&
          source_template == o.source_template
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [keys, name, network_interfaces, profile, resource_group, user_data, volume_attachments, vpc, boot_volume_attachment, image, primary_network_interface, zone, source_template].hash
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

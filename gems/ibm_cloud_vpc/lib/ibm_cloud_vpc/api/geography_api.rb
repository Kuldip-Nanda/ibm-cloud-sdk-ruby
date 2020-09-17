=begin
#Virtual Private Cloud API

#The IBM Cloud Virtual Private Cloud (VPC) API can be used to programmatically provision and manage infrastructure resources, including virtual server instances, subnets, volumes, and load balancers.

The version of the OpenAPI document: 2020-09-08

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'cgi'

module IbmCloudVpc
  class GeographyApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Retrieve a region
    # This request retrieves a single region specified by the name in the URL.
    # @param version [String] Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
    # @param generation [Integer] The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
    # @param name [String] The region name
    # @param [Hash] opts the optional parameters
    # @return [Region]
    def get_region(version, generation, name, opts = {})
      data, _status_code, _headers = get_region_with_http_info(version, generation, name, opts)
      data
    end

    # Retrieve a region
    # This request retrieves a single region specified by the name in the URL.
    # @param version [String] Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
    # @param generation [Integer] The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
    # @param name [String] The region name
    # @param [Hash] opts the optional parameters
    # @return [Array<(Region, Integer, Hash)>] Region data, response status code and response headers
    def get_region_with_http_info(version, generation, name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GeographyApi.get_region ...'
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling GeographyApi.get_region"
      end
      pattern = Regexp.new(/^[0-9]{4}-[0-9]{2}-[0-9]{2}$/)
      if @api_client.config.client_side_validation && version !~ pattern
        fail ArgumentError, "invalid value for 'version' when calling GeographyApi.get_region, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'generation' is set
      if @api_client.config.client_side_validation && generation.nil?
        fail ArgumentError, "Missing the required parameter 'generation' when calling GeographyApi.get_region"
      end
      # verify enum value
      allowable_values = [2]
      if @api_client.config.client_side_validation && !allowable_values.include?(generation)
        fail ArgumentError, "invalid value for \"generation\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling GeographyApi.get_region"
      end
      # resource path
      local_var_path = '/regions/{name}'.sub('{' + 'name' + '}', CGI.escape(name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'version'] = version
      query_params[:'generation'] = generation

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Region' 

      # auth_names
      auth_names = opts[:auth_names] || ['iamToken']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GeographyApi#get_region\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Retrieve a zone
    # This request retrieves a single zone specified by the region and zone names in the URL.
    # @param version [String] Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
    # @param generation [Integer] The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
    # @param region_name [String] The region name
    # @param zone_name [String] The zone name
    # @param [Hash] opts the optional parameters
    # @return [Zone]
    def get_region_zone(version, generation, region_name, zone_name, opts = {})
      data, _status_code, _headers = get_region_zone_with_http_info(version, generation, region_name, zone_name, opts)
      data
    end

    # Retrieve a zone
    # This request retrieves a single zone specified by the region and zone names in the URL.
    # @param version [String] Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
    # @param generation [Integer] The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
    # @param region_name [String] The region name
    # @param zone_name [String] The zone name
    # @param [Hash] opts the optional parameters
    # @return [Array<(Zone, Integer, Hash)>] Zone data, response status code and response headers
    def get_region_zone_with_http_info(version, generation, region_name, zone_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GeographyApi.get_region_zone ...'
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling GeographyApi.get_region_zone"
      end
      pattern = Regexp.new(/^[0-9]{4}-[0-9]{2}-[0-9]{2}$/)
      if @api_client.config.client_side_validation && version !~ pattern
        fail ArgumentError, "invalid value for 'version' when calling GeographyApi.get_region_zone, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'generation' is set
      if @api_client.config.client_side_validation && generation.nil?
        fail ArgumentError, "Missing the required parameter 'generation' when calling GeographyApi.get_region_zone"
      end
      # verify enum value
      allowable_values = [2]
      if @api_client.config.client_side_validation && !allowable_values.include?(generation)
        fail ArgumentError, "invalid value for \"generation\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'region_name' is set
      if @api_client.config.client_side_validation && region_name.nil?
        fail ArgumentError, "Missing the required parameter 'region_name' when calling GeographyApi.get_region_zone"
      end
      # verify the required parameter 'zone_name' is set
      if @api_client.config.client_side_validation && zone_name.nil?
        fail ArgumentError, "Missing the required parameter 'zone_name' when calling GeographyApi.get_region_zone"
      end
      # resource path
      local_var_path = '/regions/{region_name}/zones/{zone_name}'.sub('{' + 'region_name' + '}', CGI.escape(region_name.to_s)).sub('{' + 'zone_name' + '}', CGI.escape(zone_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'version'] = version
      query_params[:'generation'] = generation

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'Zone' 

      # auth_names
      auth_names = opts[:auth_names] || ['iamToken']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GeographyApi#get_region_zone\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all zones in a region
    # This request lists all zones in a region. Zones represent logically-isolated data centers with high-bandwidth and low-latency interconnects to other zones in the same region. Faults in a zone do not affect other zones.
    # @param version [String] Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
    # @param generation [Integer] The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
    # @param region_name [String] The region name
    # @param [Hash] opts the optional parameters
    # @return [ZoneCollection]
    def list_region_zones(version, generation, region_name, opts = {})
      data, _status_code, _headers = list_region_zones_with_http_info(version, generation, region_name, opts)
      data
    end

    # List all zones in a region
    # This request lists all zones in a region. Zones represent logically-isolated data centers with high-bandwidth and low-latency interconnects to other zones in the same region. Faults in a zone do not affect other zones.
    # @param version [String] Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
    # @param generation [Integer] The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
    # @param region_name [String] The region name
    # @param [Hash] opts the optional parameters
    # @return [Array<(ZoneCollection, Integer, Hash)>] ZoneCollection data, response status code and response headers
    def list_region_zones_with_http_info(version, generation, region_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GeographyApi.list_region_zones ...'
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling GeographyApi.list_region_zones"
      end
      pattern = Regexp.new(/^[0-9]{4}-[0-9]{2}-[0-9]{2}$/)
      if @api_client.config.client_side_validation && version !~ pattern
        fail ArgumentError, "invalid value for 'version' when calling GeographyApi.list_region_zones, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'generation' is set
      if @api_client.config.client_side_validation && generation.nil?
        fail ArgumentError, "Missing the required parameter 'generation' when calling GeographyApi.list_region_zones"
      end
      # verify enum value
      allowable_values = [2]
      if @api_client.config.client_side_validation && !allowable_values.include?(generation)
        fail ArgumentError, "invalid value for \"generation\", must be one of #{allowable_values}"
      end
      # verify the required parameter 'region_name' is set
      if @api_client.config.client_side_validation && region_name.nil?
        fail ArgumentError, "Missing the required parameter 'region_name' when calling GeographyApi.list_region_zones"
      end
      # resource path
      local_var_path = '/regions/{region_name}/zones'.sub('{' + 'region_name' + '}', CGI.escape(region_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'version'] = version
      query_params[:'generation'] = generation

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ZoneCollection' 

      # auth_names
      auth_names = opts[:auth_names] || ['iamToken']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GeographyApi#list_region_zones\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all regions
    # This request lists all regions. Each region is a separate geographic area that contains multiple isolated zones. Resources can be provisioned into a one or more zones in a region. Each zone is isolated, but connected to other zones in the same region with low-latency and high-bandwidth links. Regions represent the top-level of fault isolation available. Resources deployed within a single region also benefit from the low latency afforded by geographic proximity.
    # @param version [String] Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
    # @param generation [Integer] The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
    # @param [Hash] opts the optional parameters
    # @return [RegionCollection]
    def list_regions(version, generation, opts = {})
      data, _status_code, _headers = list_regions_with_http_info(version, generation, opts)
      data
    end

    # List all regions
    # This request lists all regions. Each region is a separate geographic area that contains multiple isolated zones. Resources can be provisioned into a one or more zones in a region. Each zone is isolated, but connected to other zones in the same region with low-latency and high-bandwidth links. Regions represent the top-level of fault isolation available. Resources deployed within a single region also benefit from the low latency afforded by geographic proximity.
    # @param version [String] Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
    # @param generation [Integer] The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
    # @param [Hash] opts the optional parameters
    # @return [Array<(RegionCollection, Integer, Hash)>] RegionCollection data, response status code and response headers
    def list_regions_with_http_info(version, generation, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: GeographyApi.list_regions ...'
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling GeographyApi.list_regions"
      end
      pattern = Regexp.new(/^[0-9]{4}-[0-9]{2}-[0-9]{2}$/)
      if @api_client.config.client_side_validation && version !~ pattern
        fail ArgumentError, "invalid value for 'version' when calling GeographyApi.list_regions, must conform to the pattern #{pattern}."
      end

      # verify the required parameter 'generation' is set
      if @api_client.config.client_side_validation && generation.nil?
        fail ArgumentError, "Missing the required parameter 'generation' when calling GeographyApi.list_regions"
      end
      # verify enum value
      allowable_values = [2]
      if @api_client.config.client_side_validation && !allowable_values.include?(generation)
        fail ArgumentError, "invalid value for \"generation\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/regions'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'version'] = version
      query_params[:'generation'] = generation

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'RegionCollection' 

      # auth_names
      auth_names = opts[:auth_names] || ['iamToken']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: GeographyApi#list_regions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end

=begin
#Virtual Private Cloud API

#The IBM Cloud Virtual Private Cloud (VPC) API can be used to programmatically provision and manage infrastructure resources, including virtual server instances, subnets, volumes, and load balancers.

The version of the OpenAPI document: 2020-09-08

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'spec_helper'
require 'json'

# Unit tests for IbmCloudVpc::FloatingIPsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'FloatingIPsApi' do
  before do
    # run before each test
    @api_instance = IbmCloudVpc::FloatingIPsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of FloatingIPsApi' do
    it 'should create an instance of FloatingIPsApi' do
      expect(@api_instance).to be_instance_of(IbmCloudVpc::FloatingIPsApi)
    end
  end

  # unit tests for create_floating_ip
  # Reserve a floating IP
  # This request reserves a new floating IP.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param unknown_base_type The floating IP prototype object
  # @param [Hash] opts the optional parameters
  # @return [FloatingIP]
  describe 'create_floating_ip test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_floating_ip
  # Release the specified floating IP
  # This request disassociates (if associated) and releases a floating IP. This operation cannot be reversed. For this request to succeed, the floating IP must not be required by another resource, such as a public gateway.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The floating IP identifier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_floating_ip test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_floating_ip
  # Retrieve the specified floating IP
  # This request retrieves a single floating IP specified by the identifier in the URL.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The floating IP identifier
  # @param [Hash] opts the optional parameters
  # @return [FloatingIP]
  describe 'get_floating_ip test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_floating_ips
  # List all floating IPs
  # This request retrieves all floating IPs in the region. Floating IPs allow inbound and outbound traffic from the Internet to an instance.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :start A server-supplied token determining what resource to start the page on
  # @option opts [Integer] :limit The number of resources to return on a page
  # @option opts [String] :resource_group_id Filters the collection to resources within one of the resource groups identified in a comma-separated list of resource group identifiers
  # @return [FloatingIPCollection]
  describe 'list_floating_ips test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_floating_ip
  # Update the specified floating IP
  # This request updates a floating IP&#39;s name and/or target.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The floating IP identifier
  # @param floating_ip_patch The floating IP patch
  # @param [Hash] opts the optional parameters
  # @return [FloatingIP]
  describe 'update_floating_ip test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

=begin
#Virtual Private Cloud API

#The IBM Cloud Virtual Private Cloud (VPC) API can be used to programmatically provision and manage infrastructure resources, including virtual server instances, subnets, volumes, and load balancers.

The version of the OpenAPI document: 2020-09-08

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'spec_helper'
require 'json'

# Unit tests for IbmCloudVpc::VPCsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'VPCsApi' do
  before do
    # run before each test
    @api_instance = IbmCloudVpc::VPCsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of VPCsApi' do
    it 'should create an instance of VPCsApi' do
      expect(@api_instance).to be_instance_of(IbmCloudVpc::VPCsApi)
    end
  end

  # unit tests for create_vpc
  # Create a VPC
  # This request creates a new VPC from a VPC prototype object. The prototype object is structured in the same way as a retrieved VPC, and contains the information necessary to create the new VPC.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param [Hash] opts the optional parameters
  # @option opts [VPCPrototype] :vpc_prototype The VPC prototype object
  # @return [VPC]
  describe 'create_vpc test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_vpc_address_prefix
  # Create an address pool prefix
  # This request creates a new prefix from a prefix prototype object. The prototype object is structured in the same way as a retrieved prefix, and contains the information necessary to create the new prefix.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param vpc_id The VPC identifier
  # @param address_prefix_prototype The prefix prototype object
  # @param [Hash] opts the optional parameters
  # @return [AddressPrefix]
  describe 'create_vpc_address_prefix test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_vpc_route
  # Create a route in the VPC&#39;s default routing table
  # This request creates a new route in the VPC&#39;s default routing table. The route prototype object is structured in the same way as a retrieved route, and contains the information necessary to create the new route. The request will fail if the new route will cause a loop.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param vpc_id The VPC identifier
  # @param route_prototype The route prototype object
  # @param [Hash] opts the optional parameters
  # @return [Route]
  describe 'create_vpc_route test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_vpc
  # Delete specified VPC
  # This request deletes a VPC. This operation cannot be reversed. For this request to succeed, the VPC must not contain any instances, subnets, or public gateways. All security groups and network ACLs associated with the VPC are automatically deleted. All flow log collectors with &#x60;auto_delete&#x60; set to &#x60;true&#x60; targeting the VPC or any resource in the VPC are automatically deleted.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The VPC identifier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_vpc test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_vpc_address_prefix
  # Delete specified address pool prefix
  # This request deletes a prefix. This operation cannot be reversed. The request will fail if any subnets use addresses from this prefix.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param vpc_id The VPC identifier
  # @param id The prefix identifier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_vpc_address_prefix test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_vpc_route
  # Delete the specified route in the VPC&#39;s default routing table
  # This request deletes a route. This operation cannot be reversed.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param vpc_id The VPC identifier
  # @param id The route identifier
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_vpc_route test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_vpc
  # Retrieve specified VPC
  # This request retrieves a single VPC specified by the identifier in the URL.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The VPC identifier
  # @param [Hash] opts the optional parameters
  # @return [VPC]
  describe 'get_vpc test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_vpc_address_prefix
  # Retrieve specified address pool prefix
  # This request retrieves a single prefix specified by the identifier in the URL.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param vpc_id The VPC identifier
  # @param id The prefix identifier
  # @param [Hash] opts the optional parameters
  # @return [AddressPrefix]
  describe 'get_vpc_address_prefix test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_vpc_default_network_acl
  # Retrieve a VPC&#39;s default network ACL
  # This request retrieves the default network ACL for the VPC specified by the identifier in the URL. The default network ACL is applied to any new subnets in the VPC which do not specify a network ACL.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The VPC identifier
  # @param [Hash] opts the optional parameters
  # @return [DefaultNetworkACL]
  describe 'get_vpc_default_network_acl test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_vpc_default_security_group
  # Retrieve a VPC&#39;s default security group
  # This request retrieves the default security group for the VPC specified by the identifier in the URL. The default security group is applied to any new network interfaces in the VPC that do not specify a security group.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The VPC identifier
  # @param [Hash] opts the optional parameters
  # @return [DefaultSecurityGroup]
  describe 'get_vpc_default_security_group test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_vpc_route
  # Retrieve the specified route in the VPC&#39;s default routing table
  # This request retrieves a single route specified by the identifier in the URL.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param vpc_id The VPC identifier
  # @param id The route identifier
  # @param [Hash] opts the optional parameters
  # @return [Route]
  describe 'get_vpc_route test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_vpc_address_prefixes
  # List all address pool prefixes for a VPC
  # This request lists all address pool prefixes for a VPC.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param vpc_id The VPC identifier
  # @param [Hash] opts the optional parameters
  # @option opts [String] :start A server-supplied token determining what resource to start the page on
  # @option opts [Integer] :limit The number of resources to return on a page
  # @return [AddressPrefixCollection]
  describe 'list_vpc_address_prefixes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_vpc_routes
  # List all routes in the VPC&#39;s default routing table.
  # This request retrieves routes in the VPC&#39;s default routing table. For compatibility, routes with &#x60;action&#x60; values other than &#x60;deliver&#x60; are omitted. Each route is zone-specific and directs any packets matching its destination CIDR block to a &#x60;next_hop&#x60; IP address. The most specific route matching a packet&#39;s destination will be used. If multiple equally-specific routes exist, traffic will be distributed across them.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param vpc_id The VPC identifier
  # @param [Hash] opts the optional parameters
  # @option opts [String] :zone_name Filters the collection to resources in the zone with the exact specified name
  # @return [RouteCollection]
  describe 'list_vpc_routes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_vpcs
  # List all VPCs
  # This request lists all VPCs. A VPC is a virtual network that belongs to an account and provides logical isolation from other networks. A VPC is made up of resources in one or more zones. VPCs are regional, and each VPC can contain resources in multiple zones in a region.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :start A server-supplied token determining what resource to start the page on
  # @option opts [Integer] :limit The number of resources to return on a page
  # @option opts [String] :resource_group_id Filters the collection to resources within one of the resource groups identified in a comma-separated list of resource group identifiers
  # @option opts [Boolean] :classic_access The &#x60;classic_access&#x60; parameter filters the returned collection by the supplied field. If the supplied field is &#x60;true&#x60;, only Classic Access VPCs will be returned. If the supplied field is &#x60;false&#x60;, only VPCs without Classic Access will be returned.
  # @return [VPCCollection]
  describe 'list_vpcs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_vpc
  # Update specified VPC
  # This request updates a VPC&#39;s name.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param id The VPC identifier
  # @param vpc_patch The VPC patch
  # @param [Hash] opts the optional parameters
  # @return [VPC]
  describe 'update_vpc test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_vpc_address_prefix
  # Update an address pool prefix
  # This request updates a prefix with the information in a provided prefix patch. The prefix patch object is structured in the same way as a retrieved prefix and contains only the information to be updated.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param vpc_id The VPC identifier
  # @param id The prefix identifier
  # @param address_prefix_patch The prefix patch
  # @param [Hash] opts the optional parameters
  # @return [AddressPrefix]
  describe 'update_vpc_address_prefix test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_vpc_route
  # Update the specified route in the VPC&#39;s default routing table
  # This request updates a route with the information in a provided route patch. The route patch object is structured in the same way as a retrieved route and contains only the information to be updated.
  # @param version Requests the version of the API as of a date in the format &#x60;YYYY-MM-DD&#x60;. Any date up to the current date may be provided. Specify the current date to request the latest version.
  # @param generation The infrastructure generation for the request. For the API behavior documented here, use &#x60;2&#x60;.
  # @param vpc_id The VPC identifier
  # @param id The route identifier
  # @param route_patch The route patch
  # @param [Hash] opts the optional parameters
  # @return [Route]
  describe 'update_vpc_route test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

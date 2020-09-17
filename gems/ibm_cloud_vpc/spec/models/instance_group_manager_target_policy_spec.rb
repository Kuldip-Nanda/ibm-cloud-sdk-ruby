=begin
#Virtual Private Cloud API

#The IBM Cloud Virtual Private Cloud (VPC) API can be used to programmatically provision and manage infrastructure resources, including virtual server instances, subnets, volumes, and load balancers.

The version of the OpenAPI document: 2020-09-08

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for IbmCloudVpc::InstanceGroupManagerTargetPolicy
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'InstanceGroupManagerTargetPolicy' do
  before do
    # run before each test
    @instance = IbmCloudVpc::InstanceGroupManagerTargetPolicy.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of InstanceGroupManagerTargetPolicy' do
    it 'should create an instance of InstanceGroupManagerTargetPolicy' do
      expect(@instance).to be_instance_of(IbmCloudVpc::InstanceGroupManagerTargetPolicy)
    end
  end
  describe 'test attribute "metric_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["cpu", "memory", "network_in", "network_out"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.metric_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "metric_value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "policy_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["target"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.policy_type = value }.not_to raise_error
      # end
    end
  end

end

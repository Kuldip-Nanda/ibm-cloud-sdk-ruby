=begin
#Power Cloud API

#IBM Power Cloud API for Power Hardware / Infrastructure

The version of the OpenAPI document: 1.0.0
Contact: kylej@us.ibm.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for IbmCloudPower::PVMInstanceAction
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PVMInstanceAction' do
  before do
    # run before each test
    @instance = IbmCloudPower::PVMInstanceAction.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PVMInstanceAction' do
    it 'should create an instance of PVMInstanceAction' do
      expect(@instance).to be_instance_of(IbmCloudPower::PVMInstanceAction)
    end
  end
  describe 'test attribute "action"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["start", "stop", "immediate-shutdown", "hard-reboot", "soft-reboot", "reset-state"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.action = value }.not_to raise_error
      # end
    end
  end

end

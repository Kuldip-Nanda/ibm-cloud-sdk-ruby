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

# Unit tests for IbmCloudPower::PCloudSnapshotsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PCloudSnapshotsApi' do
  before do
    # run before each test
    @api_instance = IbmCloudPower::PCloudSnapshotsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PCloudSnapshotsApi' do
    it 'should create an instance of PCloudSnapshotsApi' do
      expect(@api_instance).to be_instance_of(IbmCloudPower::PCloudSnapshotsApi)
    end
  end

  # unit tests for pcloud_cloudinstances_snapshots_delete
  # Delete a PVM instance snapshot of a cloud instance
  # @param cloud_instance_id Cloud Instance ID of a PCloud Instance
  # @param snapshot_id PVM Instance snapshot id
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'pcloud_cloudinstances_snapshots_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for pcloud_cloudinstances_snapshots_get
  # Get the detail of a snapshot
  # @param cloud_instance_id Cloud Instance ID of a PCloud Instance
  # @param snapshot_id PVM Instance snapshot id
  # @param [Hash] opts the optional parameters
  # @return [Snapshot]
  describe 'pcloud_cloudinstances_snapshots_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for pcloud_cloudinstances_snapshots_getall
  # List all PVM instance snapshots for this cloud instance
  # @param cloud_instance_id Cloud Instance ID of a PCloud Instance
  # @param [Hash] opts the optional parameters
  # @return [Snapshots]
  describe 'pcloud_cloudinstances_snapshots_getall test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for pcloud_cloudinstances_snapshots_put
  # Update a PVM instance snapshot
  # @param cloud_instance_id Cloud Instance ID of a PCloud Instance
  # @param snapshot_id PVM Instance snapshot id
  # @param body Parameters for the update of a PVM instance snapshot
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'pcloud_cloudinstances_snapshots_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

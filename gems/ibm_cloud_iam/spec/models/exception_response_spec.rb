=begin
#IAM Identity Services API

#The IAM Identity Service API allows for the management of Identities (Service IDs, ApiKeys).

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for IbmCloudIam::ExceptionResponse
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ExceptionResponse' do
  before do
    # run before each test
    @instance = IbmCloudIam::ExceptionResponse.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ExceptionResponse' do
    it 'should create an instance of ExceptionResponse' do
      expect(@instance).to be_instance_of(IbmCloudIam::ExceptionResponse)
    end
  end
  describe 'test attribute "context"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "status_code"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "errors"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "trace"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end

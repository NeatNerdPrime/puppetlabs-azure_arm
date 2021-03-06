require "puppet/parameter/boolean"

# Autogenic core type

Puppet::Type.newtype(:azure_account_filter) do
  @doc = "An Account Filter."

  ensurable

  validate do
    required_properties = []
    required_properties.each do |property|
      # We check for both places so as to cover the puppet resource path as well
      if self[:ensure] == :present && self[property].nil? && self.provider.send(property) == :absent
        raise Puppet::Error, "In azure_account_filter you must provide a value for #{property}"
      end
    end
  end
  newproperty(:id) do
    desc "Fully qualified resource ID for the resource."
    validate do |value|
      true
    end
  end
  newparam(:name) do
    isnamevar
    desc "The name of the resource."
    validate do |value|
      true
    end
  end
  newproperty(:properties) do
    desc ""
    validate do |value|
      true
    end
  end
  newproperty(:type) do
    desc "The type of the resource."
    validate do |value|
      true
    end
  end
  newparam(:account_name) do
    desc "The Media Services account name."
    validate do |value|
      true
    end
  end
  newparam(:api_version) do
    desc "The Version of the API to be used with the client request."
    validate do |value|
      true
    end
  end
  newparam(:filter_name) do
    desc "The Account Filter name"
    validate do |value|
      true
    end
  end
  newparam(:parameters) do
    desc "The request parameters"
    validate do |value|
      true
    end
  end
  newparam(:resource_group_name) do
    desc "The name of the resource group within the Azure subscription."
    validate do |value|
      true
    end
  end
  newparam(:subscription_id) do
    desc "The unique identifier for a Microsoft Azure subscription."
    validate do |value|
      true
    end
  end
end

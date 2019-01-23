
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'

Puppet::Type.newtype(:kubernetes_secret) do
  
  @doc = "Secret holds secret data of a certain type. The total bytes of the values in the Data field must be less than MaxSecretSize bytes."
  

  ensurable

  

  newparam(:name, namevar: true) do
    desc 'Name of the secret.'
  end
  
  newparam(:namespace, namevar: true) do
    desc 'Namespace of the secret.'
  end
  
    
  
    
      newproperty(:metadata) do
        
        desc "Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/api-conventions.md#metadata"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:data) do
        
        desc "Data contains the secret data. Each key must consist of alphanumeric characters, '-', '_' or '.'. The serialized form of the secret data is a base64 encoded string, representing the arbitrary (possibly non-string) data value here. Described in https://tools.ietf.org/html/rfc4648#section-4"
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
  
    
      newproperty(:type) do
        
        desc "Used to facilitate programmatic handling of secret data."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end

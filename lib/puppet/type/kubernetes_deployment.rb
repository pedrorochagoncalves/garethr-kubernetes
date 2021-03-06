
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../puppet_x/puppetlabs/swagger/fuzzy_compare'

Puppet::Type.newtype(:kubernetes_deployment) do
  
  @doc = "Deployment enables declarative updates for Pods and ReplicaSets."
  

  ensurable

  

  newparam(:name, namevar: true) do
    desc 'Name of the deployment.'
  end
  
    
  
    
  
    
      newproperty(:metadata) do
        
        desc "Standard object metadata."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:spec) do
        
        desc "Specification of the desired behavior of the Deployment."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
    
      newproperty(:status) do
        
        desc "Most recently observed status of the Deployment."
        
        def insync?(is)
          PuppetX::Puppetlabs::Swagger::Utils::fuzzy_compare(is, should)
        end
      end
    
  
end

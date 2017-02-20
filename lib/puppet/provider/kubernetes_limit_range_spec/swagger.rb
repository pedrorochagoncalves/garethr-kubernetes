
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_limit_range_spec).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        limits: instance.limits.respond_to?(:to_hash) ? instance.limits.to_hash : instance.limits,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_limit_range_spec #{name}")
    create_instance_of('limit_range_spec', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('limit_range_spec', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_limit_range_spec #{name}")
    destroy_instance_of('limit_range_spec', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('limit_range_spec')
  end

  def build_params
    params = {
    
      
        limits: resource[:limits],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end

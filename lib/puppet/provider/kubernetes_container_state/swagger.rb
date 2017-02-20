
# This file is automatically generated by puppet-swagger-generator and
# any manual changes are likely to be clobbered when the files
# are regenerated.

require_relative '../../../puppet_x/puppetlabs/kubernetes/provider'

Puppet::Type.type(:kubernetes_container_state).provide(:swagger, :parent => PuppetX::Puppetlabs::Kubernetes::Provider) do

  mk_resource_methods

  def self.instance_to_hash(instance)
    {
    ensure: :present,
    name: instance.metadata.name,
    
      
        waiting: instance.waiting.respond_to?(:to_hash) ? instance.waiting.to_hash : instance.waiting,
      
    
      
        running: instance.running.respond_to?(:to_hash) ? instance.running.to_hash : instance.running,
      
    
      
        terminated: instance.terminated.respond_to?(:to_hash) ? instance.terminated.to_hash : instance.terminated,
      
    
    object: instance,
    }
  end

  def create
    Puppet.info("Creating kubernetes_container_state #{name}")
    create_instance_of('container_state', name, build_params)
  end

  def flush
   unless @property_hash.empty?
     unless resource[:ensure] == :absent
        flush_instance_of('container_state', name, @property_hash[:object], build_params)
      end
    end
  end

  def destroy
    Puppet.info("Deleting kubernetes_container_state #{name}")
    destroy_instance_of('container_state', name)
    @property_hash[:ensure] = :absent
  end

  private
  def self.list_instances
    list_instances_of('container_state')
  end

  def build_params
    params = {
    
      
        waiting: resource[:waiting],
      
    
      
        running: resource[:running],
      
    
      
        terminated: resource[:terminated],
      
    
    }
    params.delete_if { |key, value| value.nil? }
    params
  end
end

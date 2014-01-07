if RUBY_VERSION >= '1.9'
  require 'coveralls'
  Coveralls.wear! do
    add_filter 'spec/'
    add_filter 'lib/puppet/provider/packagex.rb'
    add_filter 'lib/puppet/provider/packagex/openbsd.rb'
    add_filter 'lib/puppet/provider/packagex/freebsd.rb'
  end
end

require 'puppetlabs_spec_helper/module_spec_helper'
# this module depends on ptomulik/packagex_resource, ptomulik/portsxutil and ptomulik/vash
$LOAD_PATH.unshift File.join(RSpec.configuration.module_path,'packagex_resource/lib')
$LOAD_PATH.unshift File.join(RSpec.configuration.module_path,'portsxutil/lib')
$LOAD_PATH.unshift File.join(RSpec.configuration.module_path,'vash/lib')

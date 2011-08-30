require 'rbconfig'
require 'java'

case RbConfig::CONFIG['target_os']
when "darwin"
  require 'sikuli/osx/sikuli-script.jar'
when "linux"
  case RbConfig::CONFIG['target_cpu']
  when "i386"   ; require 'sikuli/linux/sikuli-script-x86.jar'
  when "x86_64" ; require 'sikuli/linux/sikuli-script-x86_64.jar'
  else raise "Platform not supported yet"
  end
end

require "sikuli/version"

require "sikuli/app"
require "sikuli/exception"
require "sikuli/region"
require "sikuli/screen"
require "sikuli/key_code"
require "sikuli/config"

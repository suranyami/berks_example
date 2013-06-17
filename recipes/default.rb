#
# Cookbook Name:: berks_example
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

group "berk"

user "berk" do
  group "berk"
  system true
  shell "/bin/bash"
end

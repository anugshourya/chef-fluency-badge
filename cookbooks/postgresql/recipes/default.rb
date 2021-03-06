#
# Cookbook Name:: postgresql
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

package 'postgresql-server' do
    notifies:run,'execute[postgresql -init]'
end

execute 'postgresql-init' do
  command 'postgresql -setup initbd'
  action:nothing
end

service 'postgresql'do
action[:start,:enable]
end







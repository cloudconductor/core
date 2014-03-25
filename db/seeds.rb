# -*- coding: utf-8 -*-
# Copyright 2014 TIS Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# coding: utf-8
# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside
# the db with db:setup).

# CommonMachineConfig
common_machine_configs = [
  { name: 'tiny', min_cpu: 1, min_memory: 512 },
  { name: 'small', min_cpu: 1, min_memory: 1740 },
  { name: 'medium', min_cpu: 2, min_memory: 3840 },
  { name: 'large', min_cpu: 4, min_memory: 7680 },
  { name: 'xlarge', min_cpu: 8, min_memory: 15_360 },
]
common_machine_configs.each do |config|
  CommonMachineConfig.where(config).first_or_create
end

# CommonMachineImage
common_machine_images = [
  { name: 'CentOS 6.5', os: 'CentOS', version: '6.5', cpu_arch: 'x86_64' },
]
common_machine_images.each do |image|
  CommonMachineImage.where(image).first_or_create
end

# Infrastructure
infrastructures = [
  { name: 'OpenStack', driver: 'openstack' },
  { name: 'AWS', driver: 'ec2' },
]
infrastructures.each do |infra|
  Infrastructure.where(infra).first_or_create
end

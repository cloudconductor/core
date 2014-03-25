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
class CreateMachineConfigs < ActiveRecord::Migration
  def up
    create_table :machine_configs do |t|
      t.string :ref_id
      t.string :name
      t.integer :cpu
      t.integer :memory
      t.integer :cloud_entry_point_id
      t.integer :common_machine_config_id
      t.timestamps
    end
  end

  def down
    drop_table :machine_configs
  end
end

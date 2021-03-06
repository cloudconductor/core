About
=====

CloudConductor is hybrid cloud management and deployment tool.
It targets to enable transparent management of multiple cloud environment
and self-directive operation.

CloudConductor comprises following applications:

- core (this application)
- ui
- maker

For more information, please visit [official web site](http://cloudconductor.org/).


Requirements
============

System Requirements
-------------------

- OS: Red Hat Enterprise Linux 6.5 or CentOS 6.5

Prerequisites
-------------

- git
- sqlite-devel (or other database software)
- ruby (>= 2.0.0)
- rubygems
- bundler


Quick Start
===========

### Clone github repository

```bash
git clone https://github.com/cloudconductor/core.git
```

### Install dependencies and initialize database

```bash
cd conductor
script/deltacloud install
bundle install
bundle exec rake init
```

### Run server

```bash
script/deltacloud start
bundle exec rake server:start
```

### Stop server

```bash
bundle exec rake server:stop
script/deltacloud stop
```


Copyright and License
=====================

Copyright 2014 TIS inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.


Contact
=======

For more information: <http://cloudconductor.org/>

Report issues and requests: <https://github.com/cloudconductor/core/issues>

Send feedback to: <ccndctr@gmail.com>

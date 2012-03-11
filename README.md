Description
===========

Installs an elasticsearch node from source.

Requirements
============

Cookbooks
---------

* java
* runit

Platform
--------

Only tested on Ubuntu.

Recipes
=======

Recipes are written in a modular way to support composable components. The
cookbook provides these composed services by default:

* stand-alone - compose a stand-alone elasticsearch server

Low-level recipes:

* \_config - configure elasticsearch
* \_dependencies - install required dependencies
* \_directories - setup directories used by elasticsearch
* \_group - install elasticsearch group
* \_runit - setup service with runit
* \_set\_limits - setup limits in PAM
* \_source - install elasticsearch from source
* \_user - install elasticsearch user

Usage
=====

Either use the pre-composed recipe or compose your own versions from
the low-level recipes.

License and Author
==================

Author:: Nikolay Sturm <opscode@erisiandiscord.de>

Copyright:: 2012

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

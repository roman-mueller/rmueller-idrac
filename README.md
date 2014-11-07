# idrac

#### Table of Contents

1. [Overview](#overview)
2. [Limitations - OS compatibility, etc.](#limitations)

## Overview

Currently this module only exports the fact idrac_version.  
Additionally it can be used to install the dependency package srvadmin-all.

## Limitations

At the moment it does not deploy the Dell repository required for the package  
installation.  
You probably have a mirror of that repo already setup and managed via Puppet.  
It is advised to call it for example like this then:  

      class { 'idrac':
        require => Yumrepo['dell'],
      }


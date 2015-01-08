#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with etc_services](#setup)
    * [What etc_services affects](#what-etc_services-affects)
    * [Setup requirements](#setup-requirements)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

Manage a single `/etc/services` entry.

## Module Description

Manage a single `/etc/services` entry.

## Setup

### What etc_services affects

* `/etc/services`

### Setup Requirements

* [puppetlabs-stdlib](https://github.com/puppetlabs/puppetlabs-stdlib.git)

## Usage

### Classes and Defined Types

#### Defined Type: `etc_services`

Manage `/etc/services` entries.

Separator `/` is used between _service_name_ and _protocol_ and is *mandatory*.

Example:

```puppet
::etc_services { 'kerberos/udp':
  port    => '88',
  aliases => [ 'kerberos5', 'krb5', 'kerberos-sec' ],
  comment => 'Kerberos v5'
}
```

## Reference

### Defined Types

* [etc_services](#defined-type-etc_services-type-etc_services): Manage `/etc/services` entry.

## Limitations

This module could be used on any operating systems that has support for augeas and uses `/etc/services` file.

## Development

If you want to contribute or adjust some of the settings / behavior, either:
* create a new _Pull Request_.

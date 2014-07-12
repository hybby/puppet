# motd/README.md

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with motd](#setup)
    * [What motd affects](#what-motd-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with motd](#beginning-with-motd)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

Sets the /etc/motd and /etc/issue.net files appropriately.

## Module Description

Pretty much just makes sure this host has the correct files in
place for /etc/issue.net and /etc/motd.  The files have been 
included in the ${modulebase}/files/default dir, with the 
thought that there might be per-host configuration later on.

## Setup

### What motd affects

* /etc/motd
* /etc/issue.net

### Setup Requirements **OPTIONAL**

Nothing special.

### Beginning with motd

Just use it.

## Usage

Not right now.

## Reference

Not right now.

## Limitations

Redhat only at the moment.

## Development

Do whatever you like.  This module is pretty shit anyways.

## Release Notes/Contributors/Etc **Optional**

Started work on this module on Saturday 12th July 2014.
What a latecomer to the Puppet party.

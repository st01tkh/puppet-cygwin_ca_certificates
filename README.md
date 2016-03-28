# cygwin_ca_certificates

#### Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with cygwin_ca_certificates](#setup)
    * [What cygwin_ca_certificates affects](#what-cygwin_ca_certificates-affects)
    * [Setup requirements](#setup-requirements)
    * [Beginning with cygwin_ca_certificates](#beginning-with-cygwin_ca_certificates)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

## Overview

Puppet module to update CigWin's CA certificates (for git, curl, etc)

## Module Description

This module installs by apt-cyg ca-ceriticates and switches git to use it 

## Setup

### What cygwin_ca_certificates affects

Modules ensures that apt-cyg is installed.

### Setup Requirements **OPTIONAL**

cygwin's apt-cyg in /usr/local/bin directory

### Beginning with cygwin_ca_certificates

## Usage

Just include it in your manifests like this:
include cygwin_ca_certificates

## Reference

## Limitations

This is Windows/CygWin only puppet module

## Development

## Release Notes/Contributors/Etc **Optional**

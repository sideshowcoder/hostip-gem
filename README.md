![Status](https://travis-ci.org/sideshowcoder/hostip-gem.png)

# hostip

A simple Ruby Gem wrapper for hostip.info

Includes a command line tool hostip to get all information from the command line as well

## example

```ruby
require 'hostip'

hip = Hostip.new

# get current ip
hip.ip

# get current country
hip.country_name
# get country abbriviated
hip.country_abbrev
# get current geo location
hip.geo_location

# all this also works for a given ip like 74.125.77.104 (google.com)
hip.geo_location "74.125.77.104"
hip.country_name "74.125.77.104"
```

## command line
```shell
$ hostip --help
hostip version 0.2.0
Usage: hostip [options]
    -v, --version                    display version
    -h, --help                       display help
    -V, --verbose                    be more verbose
        --city                       get the city only i.e. Munich
        --geo                        get longtitude and latitude, i.e. 12.45, 12.23
        --country                    get the country i.e. Germany
        --country-abbrev             get the country abbreviation i.e. US
```

## license

(the BSD license)

Copyright 2013 Philipp Fehre. All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are
permitted provided that the following conditions are met:

   1. Redistributions of source code must retain the above copyright notice, this list of
      conditions and the following disclaimer.

   2. Redistributions in binary form must reproduce the above copyright notice, this list
      of conditions and the following disclaimer in the documentation and/or other materials
      provided with the distribution.

THIS SOFTWARE IS PROVIDED BY PHILIPP FEHRE ``AS IS'' AND ANY EXPRESS OR IMPLIED
WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL <COPYRIGHT HOLDER> OR
CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

The views and conclusions contained in the software and documentation are those of the
authors and should not be interpreted as representing official policies, either expressed
or implied, of Philipp Fehre.

#
# class for all EPICS modules and IOCs that automatically brings in epics-base and epics-base-native
#

require epics-module.inc

# All EPICS modules depend on epics-base and epics-base-native.
# These must be virtual packages to allow for override by slac-epics-base
DEPENDS += "virtual/epics-base virtual/epics-base-native"

# Add all EPICS dependencies to the image
RDEPENDS:${PN} += "${EPICS_DEPENDS}"

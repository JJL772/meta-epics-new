#
# class for all SLAC EPICS modules and IOCs that automatically brings in epics-base and epics-base-native, with SLAC patches
#

require epics-module.inc

# All EPICS modules depend on slac-epics-base and slac-epics-base-native. These will override the virtual packages.
DEPENDS += "slac-epics-base slac-epics-base-native"

# Add all EPICS dependencies to the image
RDEPENDS:${PN} += "${EPICS_DEPENDS}"

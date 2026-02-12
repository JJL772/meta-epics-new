# Appends SLAC specific patches to EPICS base

require epics-base_7.0.9.inc

PROVIDES += "virtual/epics-base"

BBCLASSEXTEND = "native nativesdk"

RCONFLICTS:${PN} = "epics-base"
RREPLACES:${PN} = "epics-base"

SRC_URI += " \
            file://0002-slac-additional-install-rules.patch \
           "

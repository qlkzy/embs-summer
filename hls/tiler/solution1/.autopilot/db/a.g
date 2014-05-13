#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /usr/userfs/d/drm511/embs/embs-summer/hls/tiler/solution1/.autopilot/db/a.g.bc ${1+"$@"}

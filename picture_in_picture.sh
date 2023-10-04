export GST_DEBUG_DUMP_DOT_DIR=/tmp/

gst-launch-1.0   \
    filesrc location="$SRC2" ! \
    decodebin ! videoconvert ! \
    videoscale ! video/x-raw,width=640,height=360 ! \
    compositor name=mix sink_0::alpha=1 sink_1::alpha=1 sink_1::xpos=50 sink_1::ypos=50 !   \
    videoconvert ! autovideosink \
    filesrc location="$SRC" ! \
    decodebin ! videoconvert ! \
    videoscale ! video/x-raw,width=320,height=180! \
    mix.

viewnior /tmp/pipeline.png

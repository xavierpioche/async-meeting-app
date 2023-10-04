gst-launch-1.0 \
    compositor name=videomix ! autovideosink \
    audiomixer name=audiomix !  audioconvert ! autoaudiosink \
    videotestsrc pattern=ball ! videomix. \
    videotestsrc pattern=pinwheel ! videoscale ! video/x-raw,width=100 ! videomix. \
    audiotestsrc freq=400 ! audiomix. \
    audiotestsrc freq=600 ! audiomix.

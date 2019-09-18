#!/bin/bash
streamlink --stdout --quiet --hds-segment-threads 3 "$1" best | ffmpeg -loglevel quiet -i pipe:0 -vcodec copy -acodec copy -mpegts_service_type advanced_codec_digital_hdtv -f mpegts pipe:1
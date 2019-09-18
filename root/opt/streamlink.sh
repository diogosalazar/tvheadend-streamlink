#!/bin/bash
streamlink --stdout --quiet --hds-segment-threads 3 "$1" best
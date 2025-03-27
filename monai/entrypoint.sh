#!/bin/bash

set -x

S=${STUDIES:-http://127.0.0.1:8042/dicom-web}
M=${MODELS:-segmentation_spleen}

/usr/local/bin/monailabel start_server --app apps/radiology --studies "$S" --conf models "$M"

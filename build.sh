#!/usr/bin/env bash
COMPONENTS=src/components/*
COMPILE_DIST="lessc "
COMPILE_MAP="lessc --source-map"

# Clean
rm -rf dist

# Write
for file in ${COMPONENTS}
do
  echo "Processing ${file} file..."
  DEST_FILE=${file//src\/components/bundles}
  eval "${COMPILE_DIST} ${file} dist/${DEST_FILE//\.less/.css}"
done

eval "${COMPILE_MAP} src/main.less ./main.css"
eval "${COMPILE_DIST} src/stand-alone-imports.less dist/stand-alone-imports.css"
eval "${COMPILE_DIST} src/with-pure-imports.less dist/with-pure-imports.css"
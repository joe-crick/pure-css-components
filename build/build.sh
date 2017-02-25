#!/usr/bin/env bash
COMPONENTS=src/components/*
COMPILE_DIST="lessc --autoprefix=\"last 4 versions\" --clean-css=\"--s1 --compatibility=ie9\" "
COMPILE_MAP="lessc --source-map"

# Clean
rm -rf dist

# Write
for file in ${COMPONENTS}
do
  echo "Processing ${file}..."
  DEST_FILE=${file//src\/components/bundles}
  eval "${COMPILE_DIST} ${file} dist/${DEST_FILE//\.less/.css}"
done

eval "${COMPILE_MAP} src/main.less ./main.css"
eval "${COMPILE_DIST} src/stand-alone-imports.less dist/pure-components.css"
eval "${COMPILE_DIST} src/with-pure-imports.less dist/pure-components-bundled.css"

tar cvzf pure-components.tar.gz dist
mv pure-components.tar.gz dist
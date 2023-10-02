#!/bin/sh

echo "Build for production"
npm run build:prod

echo "Copy readme to dist so we can have it show on github project home and also on npm package page"
cp README.md dist/ngx-ivy-barcode/

echo "Publish build"
cd dist/ngx-ivy-barcode && npm publish

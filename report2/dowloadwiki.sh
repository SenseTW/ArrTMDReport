#!/bin/bash
find ./ -iname "*.md" -type f -exec sh -c 'pandoc --extract-media=sensetw.wiki/images --resource-path="sensetw.wiki" "${0}" -o "./sensetw.wiki/$(basename ${0%.md}.org)"' {} \;

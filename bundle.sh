#!/bin/bash

if [ -f submission.zip ]; then
  mkdir -p past_submissions/
  old=$(date +%s)
  echo "Back up old submission as submission-${old}\n"
  mv submission.zip past_submissions/submission-${old}.zip
fi

zip -r submission.zip \
    refactorings.pdf \
    ai/ \
    src/towers \
    test/towers/enemies \
    -x \*package-info\* \
    \*.DS_Store\*

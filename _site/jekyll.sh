#!/bin/bash

# --host 0.0.0.0 needed to access jekyll from Windows host
# --force_polling needed to get watch (for changes) to work

jekyll server --host 0.0.0.0 --force_polling --future

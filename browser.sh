#!/bin/bash
browser-sync start --reload-delay 1000 --proxy josafa.dev:3000 --files "app/app/assets/**/*, app/app/views/**/*.html.*, !tmp, !log"
--host josafa.dev

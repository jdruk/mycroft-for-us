#!/bin/bash
browser-sync start --proxy localhost:3000 --files "app/app/assets/**/*, app/app/views/**/*.html.*, !tmp, !log"

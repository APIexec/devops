#!/usr/bin/env bash
phpbrew update
phpbrew install -j $(nproc) 7.2.0 +default
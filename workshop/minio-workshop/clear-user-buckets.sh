#!/bin/sh
for i in user{1..40}; do echo mc rm --recursive --force riviera/$i; done
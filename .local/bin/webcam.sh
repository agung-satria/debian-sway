#!/bin/bash

sudo modprobe v4l2loopback devices=1 video_nr=10 card_label="OBS Camera" exclusive_caps=1

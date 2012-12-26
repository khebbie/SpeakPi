#!/bin/bash
say() { 
wget -q -U Mozilla -O out.mp3 "http://translate.google.com/translate_tts?tl=da&q=$*";

local IFS=+;omxplayer out.mp3; 
}
say $*

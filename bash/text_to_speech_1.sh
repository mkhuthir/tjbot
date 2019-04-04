#!/bin/sh

# Synthesize text in US English
# Synthesize the string "hello world" and produce a WAV file that is named hello_world.wav
# Request uses the default US English voice, en-US_MichaelVoice

echo "Synthesize text in US English"

if test "$#" -ne 1; then
    echo "Usage: $0 api-key"
else
	echo " Calling Watson Service API Using -> \"apikey:$1\""
	curl -X POST -u "apikey:$1" \
		--header "Content-Type: application/json" \
		--header "Accept: audio/wav" \
		--data "{\"text\":\"hello world\"}" \
		--output hello_world.wav \
		"https://gateway-lon.watsonplatform.net/text-to-speech/api/v1/synthesize"
fi
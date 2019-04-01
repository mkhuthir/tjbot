#!/bin/sh

# Transcribe audio with no options
# The example uses the Content-Type header to indicate the type of the audio, audio/flac.
# The example uses the default language model, en-US_BroadbandModel, for transcription.

if test "$#" -ne 1; then
    echo "Usage: $0 api-key"
else
	echo " Calling API Using ---> \"apikey\":\"$1\""
	curl -X POST -u "\"apikey\":\"$1\"" \
		--header "Content-Type: audio/flac" \
		--data-binary @speech/audio-file.flac \
		"https://gateway-lon.watsonplatform.net/speech-to-text/api/v1/recognize"
fi

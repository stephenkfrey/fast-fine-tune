#!/bin/bash
# if there is a filename, then try 
if [ -n "$1" ]; then
    filename=$1
else
    echo "No filename provided"
    exit 1
# if the file exists, then try to run the command cat on it 
fi
if [ -f "$filename" ]; then
    # openai format csv to jsonl 
    yes | openai tools fine_tunes.prepare_data -f $filename
    echo "Done!"
else
    echo "conversion with OpenAI CLI tool failed"
    exit 1
fi
done
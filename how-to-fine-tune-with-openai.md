
# Fine tuning with OpenAI API 

`https://beta.openai.com/docs/guides/fine-tuning`

To do this, pass in the fine-tuned model name when creating a new fine-tuning job (e.g. -m curie:ft-<org>-<date>). Other training parameters do not have to be changed, however if your new training data is much smaller than your previous training data, you may find it useful to reduce learning_rate_multiplier by a factor of 2 to 4.


learning_rate_multiplier - defaults to 0.05, 0.1, or 0.2 depending on final batch_size. The fine-tuning learning rate is the original learning rate used for pretraining multiplied by this multiplier. We recommend experimenting with values in the range 0.02 to 0.2 to see what produces the best results. Empirically, we've found that larger learning rates often perform better with larger batch sizes.


# Create 

openai api fine_tunes.create \ 
-t test.jsonl \
-m ada \
--suffix "custom model name"

## the resulting model would be named: 
ada:ft-your-org:custom-model-name-2022-02-15-04-21-04



## Add small data 

openai api fine_tunes.create \
  -t file-JD89ePi5KMsB3Tayeli5ovfW \
  -m ada \
  --learning_rate_multiplier 0.005 # defaults to 0.05-0.2; decrease by factor of 2 to 4 for smaller updates 


## List all fine tune models 

```
# List all created fine-tunes
openai api fine_tunes.list

# Retrieve the state of a fine-tune. The resulting object includes
# job status (which can be one of pending, running, succeeded, or failed)
# and other information
openai api fine_tunes.get -i <YOUR_FINE_TUNE_JOB_ID>

# Cancel a job
openai api fine_tunes.cancel -i <YOUR_FINE_TUNE_JOB_ID>
```


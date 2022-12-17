# GPT Fast Fine-Tune


Automates creation of fine-tuned models with the OpenAI API. 
- Load data
- Create fine-tuned model
- Send prompts to the fine-tuned model; store responses
- Run and log a series of test prompts 
- Explore hyperparameters (`epochs` and `learning rate multiplier`) and log results 


##### Key files 
Main notebook: `fast-fine-tune.ipynb` 
Add data to the folder: - `data/my_data_file.csv ` 
Edit test prompts: `tests/test-prompts.txt`

## How to train a fine-tuned model: 
##### Load data 
Edit the top cells in `fast-fine-tune.ipynb`  with the path to your data file: 
- `data/my_data_file.csv ` 
--- a CSV file with prompt-completion pairs 
##### Run 
- Run the notebook, or export as a `.py`. 
- The notebook returns the `fine-tuned model id`. 
More details about the fine-tuned model can be retrieved through the [OpenAI Finetuning API](https://beta.openai.com/docs/guides/fine-tuning).

##### How to send queries and get responses from the fine-tuned model: 
- The notebook  provides an example `get_gpt_response_text`, with test cases 

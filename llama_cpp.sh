#!/bin/bash

source /opt/anaconda3/etc/profile.d/conda.sh
source ./.env

if [ ! -e ${MODEL_DOWNLOAD_PATH} ];then
    mkdir ${MODEL_DOWNLOAD_PATH}
fi

# Download llama.cpp
git clone https://github.com/ggerganov/llama.cpp.git
# Set environment from conda
conda create --name togguf -y
conda activate togguf
pip install -r ./llama.cpp/requirements.txt
pip install huggingface_hub
# Download LLM Model from Huggingface
python download.py
# Convert huggingface to gguf
python llama.cpp/convert_hf_to_gguf.py ${MODEL_DOWNLOAD_PATH} \
	                               --outfile ${OUTFILE} \
                                       --outtype ${OUTTYPE}
llama.cpp/examples/quantize ${OUTFILE} ${QUANTIZED_FILE} ${QTYPE}

from huggingface_hub import snapshot_download
from huggingface_hub import login
from dotenv import load_dotenv
import os

load_dotenv()
login(token=os.environ.get("HUGGINGFACE_ACCESS_TOKEN"))

model_id =os.environ.get("MODEL_ID")
local_dir=os.environ.get("MODEL_DOWNLOAD_PATH")

snapshot_download(repo_id  = model_id, 
                  local_dir= local_dir,
                  local_dir_use_symlinks=False,
                  revision="main")



import torch
import argparse
 
def mat(gpu_idx):
    device = torch.device(gpu_idx)
    a = torch.randn(size=(20240, 20240)).to(device)
    cnt = 0
    while True:
        a @ a.T
        cnt += 1
        # if cnt % 1000 == 0:
        #     a = torch.randn(size=(1024, 10240)).to(device)
 
 
 
 
 
if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Pass an integer parameter to the script.")  
    parser.add_argument("--deviceid", type=int, help="Integer parameter to be passed.")  
 
 
 
    args = parser.parse_args()  
    mat(args.deviceid)

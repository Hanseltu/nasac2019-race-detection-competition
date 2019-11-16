import os
import re
import linecache
import subprocess
from tqdm import tqdm

compiler = "clang "
compilerOptions = "-gline-tables-only -O3 -c -emit-llvm  -femit-all-decls -mllvm -disable-llvm-optzns "

opt = "opt "

llvm_dis = "llvm-dis "

for rootPath, dirNames, _ in os.walk('./'):
    
    for dn in dirNames:

        currentProjectDir = os.path.join(rootPath, dn)
        os.chdir(currentProjectDir)

        for rp, _, fileNames in os.walk('./'):
            for fn in fileNames:
                targetFilePath = os.path.join(rootPath, fn)
                targetFileName,_ = os.path.splitext(fn)

                cmd1 = compiler + compilerOptions + targetFilePath
                result = subprocess.getstatusoutput(cmd1)

                cmd2 = opt + " -O3 " + targetFileName+".bc" + " -o " + targetFileName+"-opt.bc"
                result = subprocess.getstatusoutput(cmd2)

                cmd3 = llvm_dis + targetFileName+".bc"
                result = subprocess.getstatusoutput(cmd3)

                cmd4 = llvm_dis + targetFileName+"-opt.bc"
                result = subprocess.getstatusoutput(cmd4)

        os.chdir("../")
        

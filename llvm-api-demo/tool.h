//
// Created by tuhaoxin on 2019-11-16.
//

#ifndef TOOL_H
#define TOOL_H
#include <iostream>
#include "llvm/IR/LLVMContext.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/Function.h"
#include "llvm/Analysis/CFG.h"
#include "llvm/IRReader/IRReader.h"
#include "llvm/Support/SourceMgr.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/DebugInfo.h"
#include "llvm/IR/Instructions.h"
#include "/Users/tuhaoxin/LLVM/llvm/lib/IR/ConstantsContext.h"
#include <vector>
#include <string>
#include <regex>
#include<cstring>
#include <map>

using namespace llvm;

extern std::vector<std::vector<std::string>> mainInfo;
extern std::vector<std::vector<std::vector<std::string>>> isrInfo;

//extern std::vector<std::vector<std::string>> global_var;
extern std::vector<std::string> global_var;
extern std::vector<std::string> global_array;
extern std::vector<std::string> global_union;

extern std::map<std::string,int> mapCalledFun;


extern int g_enable_para;


bool findSubString(std::string str_long,std::string str_short);

void travers1D(std::vector<std::string> vec_1D);

void travers2D(const std::vector<std::vector<std::string>> &vec_2D);

void travers3D(const std::vector<std::vector<std::vector<std::string>>> &vec_3D);

int findNumberInEnbleFun(Module *M);

void exactBasicInfoFun(Function *f,int g_count);

void exactGeteleInfoFun(Function *f);

//deal with four patterns

std::vector<std::vector<std::string>> pattern1RWR(std::vector<std::vector<std::string>> mainInfo,
        std::vector<std::vector<std::vector<std::string>>> isrInfo,std::map<std::string,int> mapCalledFun);

std::vector<std::vector<std::string>> pattern2WWR(std::vector<std::vector<std::string>> mainInfo,
                                    std::vector<std::vector<std::vector<std::string>>> isrInfo,std::map<std::string,int> mapCalledFun);

std::vector<std::vector<std::string>> pattern3RWW(std::vector<std::vector<std::string>> mainInfo,
                                    std::vector<std::vector<std::vector<std::string>>> isrInfo,std::map<std::string,int> mapCalledFun);

std::vector<std::vector<std::string>> pattern4WRW(std::vector<std::vector<std::string>> mainInfo,
                                    std::vector<std::vector<std::vector<std::string>>> isrInfo,std::map<std::string,int> mapCalledFun);



#endif //TOOL_H

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

using namespace llvm;

std::vector<std::string> global_var;
std::vector<std::string> global_array;
std::vector<std::string> global_union;

//result
std::vector<std::vector<std::string>> mainInfo;
std::vector<std::vector<std::vector<std::string>>> isrInfo;

//std::regex pattern(global_var[0]);
//std::smatch result;

bool has_global_var(std::string str){

}

bool findSubString(std::string str_long,std::string str_short)
{
    std::string::size_type idx = str_long.find(str_short);
    if ( idx != std::string::npos )
    {
        return true;
    }
    else
    {
        return false;
    }
}

void travers3D(const std::vector<std::vector<std::vector<std::string>>> &vec_3D) {
    //std::cout << "size " << vec_3D.size() << std::endl;
        for (auto v:vec_3D) {
            std::cout << "isr " << std::endl;
            for (auto i:v) {
                for (auto a:i)
                    std::cout << a << " ";
                std::cout << std::endl;
            }
            std::cout << std::endl;
        }
}


void travers2D(const std::vector<std::vector<std::string>> &vec_2D){
    //std::cout << "size " << vec_2D.size() << std::endl;
    for (auto v:vec_2D){
        for (auto i:v){
            std::cout << i << " ";
        }
        std::cout << std::endl;
    }
}

void travers1D(const std::vector<std::string> vec_1D) {
    for (auto v:vec_1D) {
        std::cout << v << " " << std::endl;
    }
}


void exactInfoFunction(Function &f) {

    //std::cout << " Function: " << f.getName().str() << std::endl;
    std::string fname = f.getName().str();
    if (findSubString(fname, "main")) {
        for (auto &bb : f.getBasicBlockList()) {
            //std::cout << "  BasicBlock: " << bb.getName().str() << std::endl;
            for (auto &inst : bb) {
                std::vector<std::string> temp;
                if (!strncmp(inst.getOpcodeName(), "load", 4)) {
                    //std::cout << "   Instruction " << " : " << inst.getOpcodeName() << " ";
                    temp.push_back(inst.getOpcodeName());
                    unsigned int i = 0;
                    unsigned int opnt_cnt = inst.getNumOperands();
                    for (; i < opnt_cnt; ++i) {
                        Value *opnd = inst.getOperand(i);
                        //errs() << "n " << opnd->getNumUses();

                        //deal with getelement type   e.g. struct union

                        auto gep = dyn_cast<GetElementPtrConstantExpr>(opnd);//gep->getAsInstruction();
                        auto bitcast = opnd->stripPointerCasts();
                        if (gep) {

                            //GetElementPtrInst * GEP = dyn_cast<GetElementPtrInst>(inst.getOperand(0));
                            //Value * v = GEP->getPointerOperand();
                            //v->getName();
                            /*
                           if (ConstantInt *CI = dyn_cast<ConstantInt>(GEP->getOperand(0))){
                               uint64_t Idx = CI->getZExtValue();
                               errs() << Idx;
                           }
                            */

                            StringRef name = gep->getOperand(0)->getName();
                            //std::cout << name.str()  << " ";
                            if (name.str() != "")
                                temp.push_back(name.str());
                        }

                            //deal with bitcast
                        else if (bitcast) {
                            //std::cout << bitcast->getName().str() << " ";
                            if (bitcast->getName().str() != "")
                                temp.push_back(bitcast->getName().str());
                        }

                            //deal with normal variable
                        else {
                            StringRef name;

                            if (opnd->hasName()) {
                                name = opnd->getName();
                                //std::cout << name.str() << " ";
                                if (name.str() != "")
                                    temp.push_back(name.str());
                            }
                        }
                    }
                    // output line number
                    //std::cout << inst.getDebugLoc().getLine() << inst.getDebugLoc().get()->getDirectory().str() << std::endl;
                    //std::cout << inst.getDebugLoc().getLine() << std::endl;
                    temp.push_back(std::to_string(inst.getDebugLoc().getLine()));
                    temp.push_back(inst.getDebugLoc().get()->getDirectory().str() + "/" +
                                   inst.getDebugLoc().get()->getFilename().str());
                    if (temp.size() == 4) {
                        mainInfo.push_back(temp);
                        temp.clear();
                    }
                }

                if (!strncmp(inst.getOpcodeName(), "store", 4)) {
                    //std::cout << "   Instruction " << " : " << inst.getOpcodeName() << " ";
                    temp.push_back(inst.getOpcodeName());
                    unsigned int i = 0;
                    unsigned int opnt_cnt = inst.getNumOperands();
                    for (; i < opnt_cnt; ++i) {
                        Value *opnd = inst.getOperand(i);

                        //deal with getelement type   (array, struct)
                        auto gep = dyn_cast<GetElementPtrConstantExpr>(opnd);
                        auto bitcast = opnd->stripPointerCasts();
                        if (gep) {
                            StringRef name = gep->getOperand(0)->getName();
                            //std::cout << name.str() << " ";
                            if (name.str() != "")
                                temp.push_back(name.str());
                        }

                            //deal with bitcast (union)
                        else if (bitcast) {
                            //std::cout << bitcast->getName().str() << " ";
                            if (bitcast->getName().str() != "")
                                temp.push_back(bitcast->getName().str());
                        }

                            //deal with normal  (variable)
                        else {
                            StringRef name;

                            if (opnd->hasName()) {
                                name = opnd->getName();
                                //std::cout << name.str() << " ";
                                if (name.str() != "")
                                    temp.push_back(name.str());
                                //std::cout << " regex_match return : "<< regex_match(global_var[0], result,:: pattern) << std::endl;
                            }
                        }
                    }
                    // output line number
                    //std::cout << inst.getDebugLoc().getLine() << std::endl;
                    temp.push_back(std::to_string(inst.getDebugLoc().getLine()));
                    temp.push_back(inst.getDebugLoc().get()->getDirectory().str() + "/" +
                                   inst.getDebugLoc().get()->getFilename().str());
                    if (temp.size() == 4) {
                        mainInfo.push_back(temp);
                        temp.clear();
                    }
                }

            }
        }
    }
    if (findSubString(fname, "_isr_")) {
        //errs() << findSubString(fname,"_isr_");
        std::vector<std::vector<std::string>> temp_isr;
        for (auto &bb : f.getBasicBlockList()) {
            //std::cout << "  BasicBlock: " << bb.getName().str() << std::endl;
            for (auto &inst : bb) {
                std::vector<std::string> temp;
                if (!strncmp(inst.getOpcodeName(), "load", 4)) {
                    //std::cout << "   Instruction " << " : " << inst.getOpcodeName() << " ";
                    temp.push_back(inst.getOpcodeName());
                    unsigned int i = 0;
                    unsigned int opnt_cnt = inst.getNumOperands();
                    for (; i < opnt_cnt; ++i) {
                        Value *opnd = inst.getOperand(i);
                        //errs() << "n " << opnd->getNumUses();

                        //deal with getelement type   e.g. struct union

                        auto gep = dyn_cast<GetElementPtrConstantExpr>(opnd);//gep->getAsInstruction();
                        auto bitcast = opnd->stripPointerCasts();
                        if (gep) {

                            //GetElementPtrInst *GEP = dyn_cast<GetElementPtrInst>(inst.getOperand(0));
                            //Value * v = GEP->getPointerOperand();
                            //v->getName();
                            /*
                           if (ConstantInt *CI = dyn_cast<ConstantInt>(GEP->getOperand(0))){
                               uint64_t Idx = CI->getZExtValue();
                               errs() << Idx;
                           }
                            */

                            StringRef name = gep->getOperand(0)->getName();
                            //std::cout << name.str() << " ";
                            if (name.str() != "")
                                temp.push_back(name.str());
                        }

                            //deal with bitcast
                        else if (bitcast) {
                            //std::cout << bitcast->getName().str() << " ";
                            if (bitcast->getName().str() != "")
                                temp.push_back(bitcast->getName().str());
                        }

                            //deal with normal variable
                        else {
                            StringRef name;

                            if (opnd->hasName()) {
                                name = opnd->getName();
                                //std::cout << name.str() << " ";
                                if (name.str() != "")
                                    temp.push_back(name.str());
                            }
                        }
                    }
                    // output line number
                    //std::cout << inst.getDebugLoc().getLine() << inst.getDebugLoc().get()->getDirectory().str() << std::endl;
                    //std::cout << inst.getDebugLoc().getLine() << std::endl;
                    temp.push_back(std::to_string(inst.getDebugLoc().getLine()));
                    temp.push_back(inst.getDebugLoc().get()->getDirectory().str() + "/" +
                                   inst.getDebugLoc().get()->getFilename().str());
                    if (temp.size() == 4) {
                        //travers1D(temp);
                        temp_isr.push_back(temp);
                        temp.clear();
                    }
                }
                    //temp.clear();
                    if (!strncmp(inst.getOpcodeName(), "store", 4)) {
                        //std::cout << "   Instruction " << " : " << inst.getOpcodeName() << " ";
                        temp.push_back(inst.getOpcodeName());
                        unsigned int i = 0;
                        unsigned int opnt_cnt = inst.getNumOperands();
                        for (; i < opnt_cnt; ++i) {
                            Value *opnd = inst.getOperand(i);

                            //deal with getelement type   (array, struct)
                            auto gep = dyn_cast<GetElementPtrConstantExpr>(opnd);
                            auto bitcast = opnd->stripPointerCasts();
                            if (gep) {
                                StringRef name = gep->getOperand(0)->getName();
                                //std::cout << name.str() << " ";
                                if (name.str() != "")
                                    temp.push_back(name.str());
                            }

                                //deal with bitcast (union)
                            else if (bitcast) {
                                //std::cout << bitcast->getName().str() << " ";
                                if (bitcast->getName().str() != "")
                                    temp.push_back(bitcast->getName().str());
                            }

                                //deal with normal  (variable)
                            else {
                                StringRef name;

                                if (opnd->hasName()) {
                                    name = opnd->getName();
                                    //std::cout << name.str() << " ";
                                    if (name.str() != "")
                                        temp.push_back(name.str());
                                    //std::cout << " regex_match return : "<< regex_match(global_var[0], result,:: pattern) << std::endl;
                                }
                            }
                        }
                        // output line number
                        //std::cout << inst.getDebugLoc().getLine() << std::endl;
                        temp.push_back(std::to_string(inst.getDebugLoc().getLine()));
                        temp.push_back(inst.getDebugLoc().get()->getDirectory().str() + "/" +
                                       inst.getDebugLoc().get()->getFilename().str());
                        if (temp.size() == 4) {
                            //travers1D(temp);
                            temp_isr.push_back(temp);
                            temp.clear();
                        }

                    }
                }
            }
        isrInfo.push_back(temp_isr);
        temp_isr.clear();
    }
}

int main(int argc, char **argv) {
        if (argc < 2) {
            errs() << "Expected an argument - IR file name\n";
            exit(1);
        }

        //LLVMContext &Context = getGlobalContext();
        LLVMContext Context;
        SMDiagnostic Err;
        Module *Mod = parseIRFile(argv[1], Err, Context).release();

        if (!Mod) {
            errs() << "Mod is null";
            exit(1);
        }

        //get global varible
        for (auto gv_iter = Mod->global_begin(); gv_iter != Mod->global_end(); gv_iter++) {
            /* GLOBAL DATA INFO*/
            GlobalVariable *gv = &*gv_iter;


            auto a = Mod->globals();
            for (auto &b :a) {
                //errs() << *b.getValueType();
            }

            auto st = Mod->getIdentifiedStructTypes();
            for (int i = 0; i < st.size(); i++) {
                //errs() << "Global Struct " << st.at(i)->getName() << "\n";
            }
            //std::cout << "Global varible " << gv->getGlobalIdentifier() <<std::endl;
            global_var.push_back(gv->getGlobalIdentifier());

        }

        for (auto &f : Mod->getFunctionList()) {
            exactInfoFunction(f);
            //handleNormalFunction(f);
            //handleUnionFunction(f);

        }

        std::cout << "Variable in global_var: " << std::endl;
        travers1D(global_var);
        std::cout << "mainInfo: " << std::endl;
        travers2D(mainInfo);
        std::cout << "isrInfo: " << std::endl;
        travers3D(isrInfo);

        return 0;
}
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

using namespace llvm;

std::vector<std::vector<std::string>> vec_normal;
std::vector<std::vector<std::string>> vec_arrayAndStruct;
std::vector<std::vector<std::string>> vec_union;

std::vector<std::string> global_var;
std::vector<std::string> global_array;
std::vector<std::string> global_union;
//std::regex pattern(global_var[0]);
//std::smatch result;

bool has_global_var(std::string str){

}



void exactInfoFunction(Function &f){

    std::cout << " Function: " << f.getName().str() << std::endl;

    for (auto &bb : f.getBasicBlockList()) {
        //std::cout << "  BasicBlock: " << bb.getName().str() << std::endl;

        for (auto &inst : bb) {
            //GEP->getOperand(0)->getValueName()->getValue();
            //if (auto *CI = dyn_cast<ConstantInt>(GEP->getOperand(1))) {
            //    uint64_t Idx = CI->getZExtValue();
            //    errs() << "Idx: "<<Idx;
            //}
            if (!strncmp(inst.getOpcodeName(), "load", 4)) {
                std::cout << "   Instruction " << " : " << inst.getOpcodeName() << " ";
                unsigned int i = 0;
                unsigned int opnt_cnt = inst.getNumOperands();
                for (; i < opnt_cnt; ++i) {
                    Value *opnd = inst.getOperand(i);
                    //errs() << "n " << opnd->getNumUses();

                    //deal with getelement type   e.g. struct union

                    auto gep = dyn_cast<GetElementPtrConstantExpr>(opnd);//gep->getAsInstruction();
                    auto bitcast = opnd->stripPointerCasts();
                    if(gep){

                        GetElementPtrInst * GEP = dyn_cast<GetElementPtrInst>(inst.getOperand(0));
                        //Value * v = GEP->getPointerOperand();
                        //v->getName();
                        /*
                       if (ConstantInt *CI = dyn_cast<ConstantInt>(GEP->getOperand(0))){
                           uint64_t Idx = CI->getZExtValue();
                           errs() << Idx;
                       }
                        */

                        StringRef name = gep->getOperand(0)->getName();
                        std::cout << name.str()  << " ";
                    }

                    //deal with bitcast
                    else if (bitcast){
                        std::cout << bitcast->getName().str() << " ";
                    }

                    //deal with normal variable
                    else {
                        StringRef name;

                        if (opnd->hasName()) {
                            name = opnd->getName();
                            std::cout << name.str() << " ";
                        }
                    }
                }
                // output line number
                //std::cout << inst.getDebugLoc().getLine() << inst.getDebugLoc().get()->getDirectory().str() << std::endl;
                std::cout << inst.getDebugLoc().getLine() << std::endl;
            }
            if (!strncmp(inst.getOpcodeName(), "store", 4)) {
                std::cout << "   Instruction " << " : " << inst.getOpcodeName() << " ";
                unsigned int i = 0;
                unsigned int opnt_cnt = inst.getNumOperands();
                for (; i < opnt_cnt; ++i) {
                    Value *opnd = inst.getOperand(i);

                    //deal with getelement type   (array, struct)
                    auto gep = dyn_cast<GetElementPtrConstantExpr>(opnd);
                    auto bitcast = opnd->stripPointerCasts();
                    if(gep){
                        StringRef name = gep->getOperand(0)->getName();
                        std::cout << name.str() << " ";
                    }

                        //deal with bitcast (union)
                    else if (bitcast){
                        std::cout << bitcast->getName().str() << " ";
                    }

                        //deal with normal  (variable)
                    else {
                        StringRef name;

                        if (opnd->hasName()) {
                            name = opnd->getName();
                            std::cout << name.str() << " ";
                            //std::cout << " regex_match return : "<< regex_match(global_var[0], result,:: pattern) << std::endl;
                        }
                    }
                }
                // output line number
                std::cout << inst.getDebugLoc().getLine() << std::endl;
            }
        }
    }
}

int main(int argc, char** argv)
{
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
    for (auto gv_iter = Mod->global_begin();gv_iter != Mod->global_end(); gv_iter++) {
        /* GLOBAL DATA INFO*/
        GlobalVariable *gv = &*gv_iter;


        auto a =  Mod->globals();
        for(auto &b :a){
            errs() << *b.getValueType();
        }

        auto st = Mod->getIdentifiedStructTypes();
        for (int i=0; i<st.size(); i++) {
            //errs() << "Global Struct " << st.at(i)->getName() << "\n";
        }
        std::cout << "Global varible " << gv->getGlobalIdentifier() <<std::endl;
        global_var.push_back(gv->getGlobalIdentifier()) ;

    }

    for (auto &f : Mod->getFunctionList()) {
        exactInfoFunction(f);
        //handleNormalFunction(f);
        //handleUnionFunction(f);

    }

    for (auto v:global_var){
        std::cout << "Variable in global_var: " << v << std::endl;
    }


    return 0;
}
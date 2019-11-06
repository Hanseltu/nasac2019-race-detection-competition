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

using namespace llvm;

void exactInfoFunction(Function &f){

    std::cout << " Function: " << f.getName().str() << std::endl;

    for (auto &bb : f.getBasicBlockList()) {
        //std::cout << "  BasicBlock: " << bb.getName().str() << std::endl;

        for (auto &inst : bb) {
            if (!strncmp(inst.getOpcodeName(), "load", 4)) {
                std::cout << "   Instruction " << " : " << inst.getOpcodeName() << " ";
                unsigned int i = 0;
                unsigned int opnt_cnt = inst.getNumOperands();
                for (; i < opnt_cnt; ++i) {
                    Value *opnd = inst.getOperand(i);

                    //deal with getelement type   e.g. struct union
                    auto gep = dyn_cast<GetElementPtrConstantExpr>(opnd);
                    auto bitcast = opnd->stripPointerCasts();
                    if(gep){
                        StringRef name = gep->getOperand(0)->getName();
                        std::cout << name.str() << " ";
                    }

                    //deal with bitcast
                    else if (bitcast){
                        std::cout << bitcast->getName().str() << " ";
                    }

                    //deal with normal variable
                    else {
                        StringRef name;

                        if (opnd->hasName()) {
                            name = opnd->getName().data();
                            std::cout << name.str() << " ";
                        }
                    }
                }
                // output line number
                std::cout << inst.getDebugLoc().getLine() << std::endl;
            }
            if (!strncmp(inst.getOpcodeName(), "store", 4)) {
                std::cout << "   Instruction " << " : " << inst.getOpcodeName() << " ";
                unsigned int i = 0;
                unsigned int opnt_cnt = inst.getNumOperands();
                for (; i < opnt_cnt; ++i) {
                    Value *opnd = inst.getOperand(i);

                    //deal with getelement type   e.g. struct union
                    auto gep = dyn_cast<GetElementPtrConstantExpr>(opnd);
                    auto bitcast = opnd->stripPointerCasts();
                    if(gep){
                        StringRef name = gep->getOperand(0)->getName();
                        std::cout << name.str() << " ";
                    }

                        //deal with bitcast
                    else if (bitcast){
                        std::cout << bitcast->getName().str() << " ";
                    }

                        //deal with normal variable
                    else {
                        StringRef name;

                        if (opnd->hasName()) {
                            name = opnd->getName().data();
                            std::cout << name.str() << " ";
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
        auto st = Mod->getIdentifiedStructTypes();
        for (int i=0; i<st.size(); i++){
        //errs() << "Global Struct " << st.at(i)->getName() << "\n";
        }
        std::cout << "Global varible " << gv->getGlobalIdentifier()  <<std::endl;

    }

    for (auto &f : Mod->getFunctionList()) {
        exactInfoFunction(f);
        //handleNormalFunction(f);
        //handleUnionFunction(f);

    }


    return 0;
}
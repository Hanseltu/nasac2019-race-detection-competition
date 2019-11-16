//
// Created by tuhaoxin on 2019-11-16.
//
#include "tool.h"





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

int findNumberInEnbleFun(Module *M,int g_count){
    /*
    std::string fname = f.getName().str();

    return 0;
     */
    for (auto &f : M->getFunctionList()) {
        //std::string fname = bb.getModule()->getFunction("enable_isr")->getName().str();
        std::string fname = f.getName().str();
        g_count ++;
        if (findSubString(fname, "enable")){
            return g_count;
        }
        //errs() << fname << "\n";
    }
    return 0;
}

void exactInfoFunction(Function *f,int g_count) {
    //std::cout << " Function: " << f->getName().str() << std::endl;
    int retCount,retEnablePara;
    std::string fname = f->getName().str();
    for(auto &arg : f->operands()) {
        //ConstantInt* ci = dyn_cast<ConstantInt>(&arg);
        errs() << arg->getName().str();
        //errs() << *arg << "\n";
    }
    if (findSubString(fname, "main")) {
        int cnt = 0;
        for (auto &bb : f->getBasicBlockList()) {
            cnt += 1;
            //errs() << "cnt " << cnt << " \n";
            //std::cout << "  BasicBlock: " << bb.getName().str() << std::endl;
            //errs() << g_count << " " << "\n";
            if (cnt > g_count){
                for (auto &inst : bb) {
                    //auto *ci = cast<CallInst>(inst);
                    //errs() << ci->getCalledFunction()->getName().str();
                    //get enable parameter
                    if (!strncmp(inst.getOpcodeName(), "call", 4)) {
                        const CallInst * callInst = dyn_cast<CallInst>(&inst);
                        Function* calledFun = callInst->getCalledFunction();
                        std::string funName;
                        funName = calledFun->getName().str();
                        //errs() << funName;
                        auto paraNum = callInst->getNumArgOperands();
                        if (paraNum){
                            for (unsigned int i=0;i<paraNum;i++){
                                Value* para = callInst->getArgOperandUse(i);
                                auto *v = dyn_cast<ConstantInt>(para);
                                //errs() << v->getValue().getSExtValue();
                                g_enable_para = v->getValue().getZExtValue();
                                //errs() << g_enable_para;
                            }
                        }
                        mapCalledFun.insert(std::pair<std::string,int>(funName,g_enable_para));
                    }
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
    }
    if (findSubString(fname, "_isr_")) {
        //errs() << findSubString(fname,"_isr_");
        std::vector<std::vector<std::string>> temp_isr;
        for (auto &bb : f->getBasicBlockList()) {
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

std::vector<std::string> pattern1RWR(std::vector<std::vector<std::string>> mainInfo,
                                    std::vector<std::vector<std::vector<std::string>>> isrInfo,std::map<std::string,int> mapCalledFun){
    std::vector<std::string> ret1;
    return ret1;
}

std::vector<std::string> pattern2WWR(std::vector<std::vector<std::string>> mainInfo,
                                    std::vector<std::vector<std::vector<std::string>>> isrInfo,std::map<std::string,int> mapCalledFun){
    std::vector<std::string> ret2;
    return ret2;
}


std::vector<std::string> pattern3RWW(std::vector<std::vector<std::string>> mainInfo,
                                    std::vector<std::vector<std::vector<std::string>>> isrInfo,std::map<std::string,int> mapCalledFun){
    std::vector<std::string> ret3;
    return ret3;
}

std::vector<std::string> pattern4WRW(std::vector<std::vector<std::string>> mainInfo,
                                    std::vector<std::vector<std::vector<std::string>>> isrInfo,std::map<std::string,int> mapCalledFun){
    std::vector<std::string> ret4;
    return ret4;
}
//
// Created by tuhaoxin on 2019-11-16.
//
#include "tool.h"





bool findSubString(std::string str_long,std::string str_short)
{
    std::string::size_type idx = str_long.find(str_short);
    if ( idx != std::string::npos ){
        return true;
    }
    else{
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

int findNumberInEnbleFun(Module *M){
    /*
    std::string fname = f.getName().str();

    return 0;
     */
    int ret = 0;
    for (auto &f : M->getFunctionList()) {
        //std::string fname = bb.getModule()->getFunction("enable_isr")->getName().str();
        std::string fname = f.getName().str();


        if (findSubString(fname, "main")) {

            //if (findSubString(fname, "enable")) {
            //    return g_count;
            //}
            int cnt=0;
            for (auto &bb : f.getBasicBlockList()){
                //g_count++;
                cnt++;
                for (auto &inst : bb){
                    //errs() << inst.getOpcodeName();
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
                                //g_enable_para = v->getValue();
                                //errs() << g_enable_para;
                            }
                        }
                        mapCalledFun.insert(std::pair<std::string,int>(funName,g_enable_para));
                        //if (findSubString(funName,"init")){
                         //   ret = 0;
                         //   return ret;
                        //}
                        if (findSubString(funName,"enable")){
                            ret = cnt;
                            return ret;
                        }
                    }
                }
                //return ret;
            }
        }
    }
    return ret;
}

void exactGeteleInfoFun(Function *f){
    for (auto &bb : f->getBasicBlockList()){
        for (auto &inst : bb){
            if (!strncmp(inst.getOpcodeName(),"getelementptr",4)){
                const GetElementPtrInst* GEP = dyn_cast<GetElementPtrInst>(&inst);
                auto idxNum = GEP->getNumIndices();
                if(idxNum){
                    errs() << idxNum << "\n";
                    for (unsigned int i = 0; i<=idxNum;i++){
                        if (Value* idx = GEP->getOperand(i)){
                            //errs() << "hello" ;
                            errs() << "getelementptr :" << idx->getName().str() ;
                            if(auto *v = dyn_cast<ConstantInt>(idx)){
                                errs() << " index :" << v->getValue() << ",";
                            }
                            errs() << "\n";
                        }
                    }
                }
            }
        }
    }
}

void exactBasicInfoFun(Function *f,int g_count) {
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

std::vector<std::vector<std::string>> pattern1RWR(std::vector<std::vector<std::string>> mainInfo,
                                    std::vector<std::vector<std::vector<std::string>>> isrInfo,std::map<std::string,int> mapCalledFun){

    //unsigned int size_main = mainInfo.size();
    int enable_para = 0;
    /*
    std::vector<int> size_isr;

    //add to one vector to mainAndIsr
    std::vector<std::vector<std::string>> mainAndIsr;
    for (int i=0; i< mainInfo.size(); i++){
        mainAndIsr.push_back(mainInfo[i]);

    }
    for (int i=0; i < isrInfo.size(); i++){
        int cnt=0;
        for (int j=0; j<isrInfo[i].size(); j++){
            cnt++;
            mainAndIsr.push_back(isrInfo[i][j]);
        }
        size_isr.push_back(cnt);
    }

    errs() << "mainAndIsr size : " << mainAndIsr.size() << "\n";
    errs() << "size_main : " << size_main << "\n";
    errs() << "size_isr : " << size_isr[0] << "\n";
    travers2D(mainAndIsr);
     */

    //if mainInfo is null
    if (mainInfo.size()==0){
        mainInfo = isrInfo[0];
    }
    //find if there any enbale function
    for ( auto m1_Iter = mapCalledFun.begin( ); m1_Iter != mapCalledFun.end( ); m1_Iter++ ){
        //std::cout <<  m1_Iter->first<<" "<<m1_Iter->second<<std::endl;
        std::string it = m1_Iter->first;
        //errs() << it;
        if (findSubString(it,"enable")){
            enable_para = m1_Iter->second;
            //errs() << "enable_para : " << enable_para << "\n";
            break;
        }
    }
    errs() << "enable_para : " << enable_para << "\n";

    std::vector<std::vector<std::string>> temp;

    //judge R
    for (int i=0; i<global_var.size();i++){
        //errs() << mainAndIsr[i][0] << mainAndIsr[i][1]<< global_var[i];

        for (int j=0; j<mainInfo.size();j++) {
            if (mainInfo[j][0] == "load" && mainInfo[j][1] == global_var[i]) {
                //ret1.push_back("R#"+mainInfo[j][2]);
                temp.push_back(mainInfo[j]);
                //ret1.push_back(mainAndIsr[i][2]);
                mainInfo.erase(mainInfo.begin()+j);
                //errs() << "size of mainInfo after pop :  " << mainInfo.size() << "\n";
                //errs() << "success";
                break;
            }
            //continue;
        }

    }
    //delete dup instructions
    for (int t=0; t<temp.size();t++){
        if (t>0){
            temp.erase(temp.begin()+t);
        }
    }
    errs() << "temp in first step : " << "\n";
    //travers2D(temp);
    errs() << "temp size in first step : " << temp.size() << "\n";

    //judge W
    if (enable_para){
        for (int j=0; j<isrInfo[enable_para-1].size();j++){
            if (isrInfo[enable_para-1][j][0] == "store" && isrInfo[enable_para-1][j][1] == temp[0][1]){
                //ret1.push_back("W#"+isrInfo[enable_para-1][j][2]);
                temp.push_back(isrInfo[enable_para-1][j]);
                break;
            }
        }
    }
    else {
        for (int i=0; i<isrInfo.size(); i++){
            for (int j=0; j<isrInfo[i].size();j++){
                if (isrInfo[i][j][0] == "store" && isrInfo[i][j][1] == temp[0][1]){
                    //ret1.push_back("W#"+isrInfo[enable_para-1][j][2]);
                    temp.push_back(isrInfo[i][j]);
                    break;
                }
            }
        }

    }

    errs() << "temp in second step : " << "\n";
    //travers2D(temp);
    errs() << "temp size in second step : " << temp.size() << "\n";

    //judge R
    for (int j=0; j<mainInfo.size();j++){
        if (mainInfo[j][0] == "load" && mainInfo[j][1] == temp[temp.size()-1][1]){
            temp.push_back(mainInfo[j]);
            break;
        }
    }

    errs() << "temp in third step : " << "\n";
    //travers2D(temp);
    errs() << "temp size in third step : " << temp.size() << "\n";


    return temp;
}

std::vector<std::vector<std::string>> pattern2WWR(std::vector<std::vector<std::string>> mainInfo,
                                    std::vector<std::vector<std::vector<std::string>>> isrInfo,std::map<std::string,int> mapCalledFun){
    int enable_para=0;
    //if mainInfo is null
    if (mainInfo.size()==0){
        mainInfo = isrInfo[0];
    }
    //find if there any enbale function
    for ( auto m1_Iter = mapCalledFun.begin( ); m1_Iter != mapCalledFun.end( ); m1_Iter++ ){
        //std::cout <<  m1_Iter->first<<" "<<m1_Iter->second<<std::endl;
        std::string it = m1_Iter->first;
        //errs() << it;
        if (findSubString(it,"enable")){
            enable_para = m1_Iter->second;
            //errs() << "enable_para : " << enable_para << "\n";
            break;
        }
    }
    errs() << "enable_para : " << enable_para << "\n";

    std::vector<std::vector<std::string>> temp;

    //judge W
    for (int i=0; i<global_var.size();i++){
        //errs() << mainAndIsr[i][0] << mainAndIsr[i][1]<< global_var[i];

        for (int j=0; j<mainInfo.size();j++) {
            if (mainInfo[j][0] == "store" && mainInfo[j][1] == global_var[i]) {
                //ret1.push_back("R#"+mainInfo[j][2]);
                temp.push_back(mainInfo[j]);
                //ret1.push_back(mainAndIsr[i][2]);
                mainInfo.erase(mainInfo.begin()+j);
                //errs() << "size of mainInfo after pop :  " << mainInfo.size() << "\n";
                //errs() << "success";
                break;
            }
            //continue;
        }

    }
    //delete dup instructions
    for (int t=0; t<temp.size();t++){
        if (t>0){
            temp.erase(temp.begin()+t);
        }
    }
    errs() << "temp in first step : " << "\n";
    //travers2D(temp);
    errs() << "temp size in first step : " << temp.size() << "\n";

    //judge W
    if (enable_para){
        for (int j=0; j<isrInfo[enable_para-1].size();j++){
            if (isrInfo[enable_para-1][j][0] == "store" && isrInfo[enable_para-1][j][1] == temp[0][1]){
                //ret1.push_back("W#"+isrInfo[enable_para-1][j][2]);
                temp.push_back(isrInfo[enable_para-1][j]);
                break;
            }
        }
    }
    else {
        for (int i=0; i<isrInfo.size(); i++){
            for (int j=0; j<isrInfo[i].size();j++){
                if (isrInfo[i][j][0] == "load" && isrInfo[i][j][1] == temp[0][1]){
                    //ret1.push_back("W#"+isrInfo[enable_para-1][j][2]);
                    temp.push_back(isrInfo[i][j]);
                    break;
                }
            }
        }

    }

    errs() << "temp in second step : " << "\n";
    //travers2D(temp);
    errs() << "temp size in second step : " << temp.size() << "\n";

    //judge R
    std::vector<std::vector<std::string>> temp_store;
    for (auto &j : mainInfo) {
        if (j[0] == "store" && j[1] == temp[temp.size()-1][1]){
            temp_store.push_back(j);
        }
    }
    temp.push_back(temp_store[temp_store.size()-1]);

    errs() << "temp in third step : " << "\n";
    //travers2D(temp);
    errs() << "temp size in third step : " << temp.size() << "\n";

    return temp;
}


std::vector<std::vector<std::string>> pattern3RWW(std::vector<std::vector<std::string>> mainInfo,
                                    std::vector<std::vector<std::vector<std::string>>> isrInfo,std::map<std::string,int> mapCalledFun){
    int enable_para=0;
    //if mainInfo is null
    if (mainInfo.size()==0){
        mainInfo = isrInfo[0];
    }
    //find if there any enbale function
    for ( auto m1_Iter = mapCalledFun.begin( ); m1_Iter != mapCalledFun.end( ); m1_Iter++ ){
        //std::cout <<  m1_Iter->first<<" "<<m1_Iter->second<<std::endl;
        std::string it = m1_Iter->first;
        //errs() << it;
        if (findSubString(it,"enable")){
            enable_para = m1_Iter->second;
            //errs() << "enable_para : " << enable_para << "\n";
            break;
        }
    }
    errs() << "enable_para : " << enable_para << "\n";

    std::vector<std::vector<std::string>> temp;

    //judge W
    for (int i=0; i<global_var.size();i++){
        //errs() << mainAndIsr[i][0] << mainAndIsr[i][1]<< global_var[i];

        for (int j=0; j<mainInfo.size();j++) {
            if (mainInfo[j][0] == "load" && mainInfo[j][1] == global_var[i]) {
                //ret1.push_back("R#"+mainInfo[j][2]);
                temp.push_back(mainInfo[j]);
                //ret1.push_back(mainAndIsr[i][2]);
                mainInfo.erase(mainInfo.begin()+j);
                //errs() << "size of mainInfo after pop :  " << mainInfo.size() << "\n";
                //errs() << "success";
                break;
            }
            //continue;
        }

    }
    //delete dup instructions
    for (int t=0; t<temp.size();t++){
        if (t>0){
            temp.erase(temp.begin()+t);
        }
    }
    errs() << "temp in first step : " << "\n";
    //travers2D(temp);
    errs() << "temp size in first step : " << temp.size() << "\n";

    //judge W
    if (enable_para){
        for (int j=0; j<isrInfo[enable_para-1].size();j++){
            if (isrInfo[enable_para-1][j][0] == "store" && isrInfo[enable_para-1][j][1] == temp[0][1]){
                //ret1.push_back("W#"+isrInfo[enable_para-1][j][2]);
                temp.push_back(isrInfo[enable_para-1][j]);
                break;
            }
        }
    }
    else {
        for (int i=0; i<isrInfo.size(); i++){
            for (int j=0; j<isrInfo[i].size();j++){
                if (isrInfo[i][j][0] == "store" && isrInfo[i][j][1] == temp[0][1]){
                    //ret1.push_back("W#"+isrInfo[enable_para-1][j][2]);
                    temp.push_back(isrInfo[i][j]);
                    break;
                }
            }
        }

    }

    errs() << "temp in second step : " << "\n";
    //travers2D(temp);
    errs() << "temp size in second step : " << temp.size() << "\n";

    //judge R
    std::vector<std::vector<std::string>> temp_store;
    for (auto &j : mainInfo) {
        if (j[0] == "store" && j[1] == temp[temp.size()-1][1]){
            temp_store.push_back(j);
        }
    }
    temp.push_back(temp_store[temp_store.size()-1]);

    errs() << "temp in third step : " << "\n";
    //travers2D(temp);
    errs() << "temp size in third step : " << temp.size() << "\n";

    return temp;
}

std::vector<std::vector<std::string>> pattern4WRW(std::vector<std::vector<std::string>> mainInfo,
                                    std::vector<std::vector<std::vector<std::string>>> isrInfo,std::map<std::string,int> mapCalledFun){
    int enable_para=0;
    //if mainInfo is null
    if (mainInfo.size()==0){
        mainInfo = isrInfo[0];
    }
    //find if there any enbale function
    for ( auto m1_Iter = mapCalledFun.begin( ); m1_Iter != mapCalledFun.end( ); m1_Iter++ ){
        //std::cout <<  m1_Iter->first<<" "<<m1_Iter->second<<std::endl;
        std::string it = m1_Iter->first;
        //errs() << it;
        if (findSubString(it,"enable")){
            enable_para = m1_Iter->second;
            //errs() << "enable_para : " << enable_para << "\n";
            break;
        }
    }
    errs() << "enable_para : " << enable_para << "\n";

    std::vector<std::vector<std::string>> temp;

    //judge W
    for (int i=0; i<global_var.size();i++){
        //errs() << mainAndIsr[i][0] << mainAndIsr[i][1]<< global_var[i];

        for (int j=0; j<mainInfo.size();j++) {
            if (mainInfo[j][0] == "store" && mainInfo[j][1] == global_var[i]) {
                //ret1.push_back("R#"+mainInfo[j][2]);
                temp.push_back(mainInfo[j]);
                //ret1.push_back(mainAndIsr[i][2]);
                mainInfo.erase(mainInfo.begin()+j);
                //errs() << "size of mainInfo after pop :  " << mainInfo.size() << "\n";
                //errs() << "success";
                break;
            }
            //continue;
        }

    }
    //delete dup instructions
    for (int t=0; t<temp.size();t++){
        if (t>0){
            temp.erase(temp.begin()+t);
        }
    }
    errs() << "temp in first step : " << "\n";
    //travers2D(temp);
    errs() << "temp size in first step : " << temp.size() << "\n";

    //judge W
    if (enable_para){
        for (int j=0; j<isrInfo[enable_para-1].size();j++){
            if (isrInfo[enable_para-1][j][0] == "load" && isrInfo[enable_para-1][j][1] == temp[0][1]){
                //ret1.push_back("W#"+isrInfo[enable_para-1][j][2]);
                temp.push_back(isrInfo[enable_para-1][j]);
                break;
            }
        }
    }
    else {
        for (int i=0; i<isrInfo.size(); i++){
            for (int j=0; j<isrInfo[i].size();j++){
                if (isrInfo[i][j][0] == "load" && isrInfo[i][j][1] == temp[0][1]){
                    //ret1.push_back("W#"+isrInfo[enable_para-1][j][2]);
                    temp.push_back(isrInfo[i][j]);
                    break;
                }
            }
        }

    }

    errs() << "temp in second step : " << "\n";
    //travers2D(temp);
    errs() << "temp size in second step : " << temp.size() << "\n";

    //judge R
    std::vector<std::vector<std::string>> temp_store;
    for (auto &j : mainInfo) {
        if (j[0] == "store" && j[1] == temp[temp.size()-1][1]){
            temp_store.push_back(j);
        }
    }
    temp.push_back(temp_store[temp_store.size()-1]);

    errs() << "temp in third step : " << "\n";
    //travers2D(temp);
    errs() << "temp size in third step : " << temp.size() << "\n";

    return temp;
}
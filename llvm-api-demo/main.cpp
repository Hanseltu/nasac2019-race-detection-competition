#include "tool.h"

std::vector<std::vector<std::string>> mainInfo;
std::vector<std::vector<std::vector<std::string>>> isrInfo;

std::vector<std::vector<std::string>> global_var;
std::vector<std::string> global_array;
std::vector<std::string> global_union;

std::map<std::string,int> mapCalledFun;


int g_enable_para;


bool has_global_var(std::string str){

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
        //Function *call = Mod->getFunction("enable_isr");
        //for (auto t = call->args().begin(); t!=call->args().end();t++)
        //errs() << t->getValueName()<< "\n";


        if (!Mod) {
            errs() << "Mod is null";
            exit(1);
        }

        //get global varible
        for (auto gv_iter = Mod->global_begin(); gv_iter != Mod->global_end(); gv_iter++) {
            /* GLOBAL DATA INFO*/
            GlobalVariable *gv = &*gv_iter;


            auto a = Mod->globals();
            std::vector<std::string> temp;


            auto st = Mod->getIdentifiedStructTypes();
            for (int i = 0; i < st.size(); i++) {
                //errs() << "Global Struct " << st.at(i)->etName() << "\n";
            }
            //std::cout << "Global varible " << gv->getGlobalIdentifier() <<std::endl;
            temp.push_back(gv->getGlobalIdentifier());
            for (auto &b :a) {
                errs() << *b.getValueType();
                errs() << b.getType();
                auto &f = *b.getValueType();

                //temp.push_back();
            }
            global_var.push_back(temp);

        }

        int temp_count = findNumberInEnbleFun(Mod);
        errs() << "tem_count : " << temp_count << "\n";

        for (auto &f : Mod->getFunctionList()) {
            //int count,temp_count;
            //std::vector<int> ret;

            //g_count = findNumberInEnbleFun(f,g_count);
            //errs() << "temp_count" << temp_count ;
            //for(auto &&bb : f.getBasicBlockList()) {
            //    g_count += 1;
            //}
            exactInfoFunction(&f,temp_count);
            //handleNormalFunction(f);
            //handleUnionFunction(f);

        }

       std::string a = "dlut_nefu";
       //errs() << "test findSubString " << findSubString(a,"dlut") << "\n";
       //errs() << "count_final " << temp_count;
        //errs() << g_count << g_enable_para;
        //
        std::cout << "Variable in global_var: " << std::endl;
        //travers1D(global_var);
        std::cout << "mainInfo: " << std::endl;
        travers2D(mainInfo);
        std::cout << "isrInfo: " << std::endl;
        travers3D(isrInfo);

        for ( auto m1_Iter = mapCalledFun.begin( ); m1_Iter != mapCalledFun.end( ); m1_Iter++ )
            std::cout <<  m1_Iter->first<<" "<<m1_Iter->second<<std::endl;

        pattern1RWR(mainInfo,isrInfo,mapCalledFun);

        return 0;
}
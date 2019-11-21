#include "tool.h"

std::vector<std::vector<std::string>> mainInfo;
std::vector<std::vector<std::vector<std::string>>> isrInfo;

//std::vector<std::vector<std::string>> global_var;
std::vector<std::string> global_var;
std::vector<std::string> global_array;
std::vector<std::string> global_union;

std::map<std::string,int> mapCalledFun;

std::map<std::string,std::vector<std::vector<std::string>>> allFunInfo;


int g_enable_para;

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
                //errs() << *b.getValueType();
                //errs() << b.getName();
                auto &f = *b.getValueType();

                //temp.push_back();

            }
            // get std::string global
            global_var.push_back(gv->getGlobalIdentifier());

            //global_var.push_back(temp);

        }
        //errs() << "test" ;
        int temp_count = findNumberInEnbleFun(Mod);
        //errs() << "test1";
        errs() << "tem_count : " << temp_count << "\n";

        //get allFunInfo
        std::map<std::string,std::vector<std::vector<std::string>>> retAllFunInfo;
        retAllFunInfo = exactAllFunInfo(Mod);
        //errs() << "size of retAllFunInfo : " << retAllFunInfo.size() << "\n";
        //errs() << "allFunInfo : " << "\n";
        for ( auto m1_Iter = retAllFunInfo.begin( ); m1_Iter != retAllFunInfo.end( ); m1_Iter++ ) {
            //std::cout << m1_Iter->first << " \n";
            std::vector<std::vector<std::string>> t = m1_Iter->second;
            if (t.size()){
                //travers2D(t);
            }
            //
        }

        //get number of init function
        int retFindNumberInitFun;
        retFindNumberInitFun = findNumberInitFun(Mod);
        errs() << "retFindNumberInitFun = " << retFindNumberInitFun << "\n";


        for (auto &f : Mod->getFunctionList()) {

            exactBasicInfoFun(&f,temp_count,retFindNumberInitFun);
            exactGeteleInfoFun(&f);
        }

        std::string a = "dlut_nefu";
       //errs() << "test findSubString " << findSubString(a,"dlut") << "\n";
       //errs() << "count_final " << temp_count;
        //errs() << g_count << g_enable_para;
        //
        std::cout << "Variable in global_var: " << std::endl;
        travers1D(global_var);
        std::cout << "mainInfo: " << std::endl;
        travers2D(mainInfo);
        std::cout << "isrInfo: " << std::endl;
        travers3D(isrInfo);

        for ( auto m1_Iter = mapCalledFun.begin( ); m1_Iter != mapCalledFun.end( ); m1_Iter++ )
            std::cout <<  m1_Iter->first<<" "<<m1_Iter->second<<std::endl;

        std::vector<std::vector<std::vector<std::string>>> ret1RWR;
        std::vector<std::vector<std::vector<std::string>>> ret2WWR;
        std::vector<std::vector<std::vector<std::string>>> ret3RWW;
        std::vector<std::vector<std::vector<std::string>>> ret4WRW;

        const char* desc1RWR = "This is a RWR bug !!!";
        const char* desc2WWR = "This is a WWR bug !!!";
        const char* desc3RWW = "This is a RWW bug !!!";
        const char* desc4WRW = "This is a WRW bug !!!";

        ret1RWR = pattern1RWR(mainInfo,isrInfo,mapCalledFun);
        ret2WWR = pattern2WWR(mainInfo,isrInfo,mapCalledFun);
        ret3RWW = pattern3RWW(mainInfo,isrInfo,mapCalledFun);
        ret4WRW = pattern4WRW(mainInfo,isrInfo,mapCalledFun);

        //travers3D(ret1RWR);
        //travers3D(ret2WWR);
        //travers3D(ret3RWW);
        //travers3D(ret4WRW);

        FILE *fp;
        //char* s= "hello world！";
        //char*filename = argv[1];
        //sprintf(filename,"%d.txt",i);

        fp = fopen("/Users/tuhaoxin/github/nasac2019-race-detection-competition/llvm-api-demo/output/file.txt","a");

        if (!ret1RWR.empty()){
            char * pJson = makeJson(ret1RWR,desc1RWR);
            printf("Bugs found in RWR :\n%s\n", pJson);
            fprintf(fp,"%s \n",pJson);
            //travers3D(ret1RWR);
            free(pJson);
        }

        if (!ret2WWR.empty()){
            char * pJson = makeJson(ret2WWR,desc2WWR);
            printf("Bugs found in WWR :\n%s\n", pJson);
            fprintf(fp,"%s \n",pJson);
            //travers3D(ret2WWR);
            free(pJson);
        }

        if (!ret3RWW.empty()){
            char * pJson = makeJson(ret3RWW,desc3RWW);
            printf("Bugs found in RWW :\n%s\n", pJson);
            fprintf(fp,"%s \n",pJson);
            travers3D(ret3RWW);
            free(pJson);
        }

        if (!ret4WRW.empty()){
            char * pJson = makeJson(ret4WRW,desc4WRW);
            printf("Bugs found in WRW :\n%s\n", pJson);
            fprintf(fp,"%s \n",pJson);
            //travers3D(ret4WRW);
            free(pJson);
        }

        //char * pJson = makeJson(ret,desc);
        //printf("Results:\n%s\n", pJson);

        //write to file

        //fprintf(fp,"%s \n",s);
        fclose(fp);



        return 0;
}
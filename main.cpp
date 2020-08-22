#include <iostream>

int main(int argc, char * argv[]) {
   // 3
   
   std::string MAC = "A1:AA:A2:B2:BB:B1";
   if(argc - 1) MAC = argv[1];

   // 그 담에 MAC주소 바꿔버리기
   system(("sudo ifconfig en0 ether " + MAC).c_str());
   
   system("sudo ifconfig en0 down");
   system("sudo ifconfig en0 up");


   return 0;
}

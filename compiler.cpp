#include <iostream>
#include <fstream>

void toAscii(char*);
const static int SIZE = 4096;

using std::ios_base;

int main(int argc, char** argv) {

   std::ifstream in(argv[1],
      ios_base::in | ios_base::binary);  
   std::ofstream out(argv[2],            
      ios_base::out | ios_base::binary); 

   char buf[SIZE];

   do {

      in.read(&buf[0], SIZE);
      toAscii(*buf)=&buf;   
     out.write(&buf, in.gcount()); 
   } while (in.gcount() > 0);          
   in.close();
   out.close();
}
int toAscii(char*buf){
   return int(buf);
}
#include <iostream>
#include <fstream>

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
        for (int i = 0; i<SIZE; i++){
           buf[i]=static_cast<int>(buf[i]);
        }
      out.write(&buf[0], in.gcount()); 
   } while (in.gcount() > 0);          
   in.close();
   out.close();
}
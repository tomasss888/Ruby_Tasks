#include <iostream>

using namespace std;

int main()
{
    int i,s;
    s=1;
    for (i=10;i<15;i++){
        if(i%2==0){        // tikrina ar lyginis
            s=s*i;}        // jei lyginis padaugina su praitais
        }
    cout<<"Visu intervalo lyginiu skaiciu sandauga - "<<s<<endl;
    return 0;
}

#include <iostream>

using namespace std;

int main()
{
    int a,s,rez,simtas,ats_pilnas;
    rez=0;
    cout << "Iveskite sveikaji skaiciu" << endl;
    cin>>a;
    simtas=1;
    ats_pilnas=0;
    if (a>0){           // tikrinu ar sveikas
        while(a!=0){
            s=a%10;                  // paiimu paskutini
            rez=simtas*11*s;    // 11*s padaro 2-viguba  // simtas padaro vietos kitam
            ats_pilnas=ats_pilnas+rez;
            a=a/10;    //  nuima jau skaiciuota
            simtas=simtas*100;   // padaugina is 100 kad butu vietos kitam skaiciui
        }

        cout<<"Padvigubintas - "<<ats_pilnas;
    }
    else cout<<"Netinkamas skaicius";

    return 0;
}


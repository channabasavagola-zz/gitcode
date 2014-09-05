#include<iostream>

using namespace std;

class dat
{

int d;
int m;
int y;
int a[12];

public:

dat()
{
a[0]=31;a[1]=28;a[2]=31;a[3]=30;a[4]=31;a[5]=30;a[6]=31;a[7]=31;a[8]=30;a[9]=31;a[10]=30;a[11]=31;
}

friend void operator -(dat,dat);
friend void operator +(dat,int);
void sd();
};

void dat::sd()
{
cout<<"enter the date : ";
int q,w,e;
cin>>q>>w>>e;
if(e%4==0)
a[1]=29;
d=q;m=w;y=e;
}


void operator +(dat t,int n)
{
int i;
int q=t.d,w=t.m,e=t.y;
for (i=0;i<n;i++)
{
q=q+1;
if(q>t.a[w-1])
{
q=1;
w=w+1;
}
if(w>12)
{
w=1;
e=e+1;
}
}
cout<<q<<" "<<w<<" "<<e<<endl;
}

void operator -(dat d1,dat d2)
{
if((d1.m==d2.m)&&(d1.y==d2.y))
{
cout<<"there are "<<(d2.d-d1.d)<<" days\n";
return;
}
int c=0,i=d1.d,j=d1.m,k=d1.y;
while(1)
{
if((j==d2.m)&&(k==d2.y))
{
c=c+d2.d;
break;
}
else
{
while(i<=d1.a[j-1])
{
c=c+1;
i=i+1;
}
j=j+1;
i=1;
if(j>12)
{
j=1;k=k+1;
}
}
}
cout<<"there are "<<(c-1)<<" days\n";
}


int main()
{
dat d1,d2;
d1.sd();
d2.sd();
d1-d2;
cout<<"enter the number of days to be added to the date 1: ";
int n;
cin>>n;
d1+n;
return 0;
}

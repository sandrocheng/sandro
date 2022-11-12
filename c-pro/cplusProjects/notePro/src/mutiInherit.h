/**
 * 多继承 
 * 多继承被受争议，从多个类继承可能会导致函数、变量等同名导致较多歧义
 * 同名成员 函数 ，需要加域名
 * 如： son.MultiBase1::varSame；
 */

class MultiBase1{
	public :
		int varBase1 = 1;
		int varSame = -1; 
		MultiBase1(){}
		
		MultiBase1(int varSame){
			this->varSame = varSame;
		}
};

class MultiBase2{
	public :
		int varBase2 = 2 ;
		int varSame = -2;
		MultiBase2(){}
		
		MultiBase2(int varSame){
			this->varSame = varSame;
		}
};

class MultiSon:public MultiBase1,public MultiBase2{
	public :
		int varMultiSon = 3;
		int varSame = -3;
		MultiSon(){}
		MultiSon(int sonVarSame,int Base1VarSame,int Base2VarSame):MultiBase1(Base1VarSame),MultiBase2(Base2VarSame){
			this->varSame = sonVarSame;
		}
};

#include "LinkArray.h"


static void staticLinkArr();
static void printArr(Stu *head);
static void dyLinkArr();
static Stu* insertheadLink(Stu *head,Stu stu);
static Stu* insertLink(Stu *head,Stu stu);
static Stu* deleteMeta(Stu *head,int num);
static Stu* freeLinkArray(Stu *head);

void linkArrayTest(){
	cout << "---------------LinkArrayTest start-------------------" << endl;
	staticLinkArr();
	dyLinkArr();
	cout << "---------------LinkArrayTest end --------------------" << endl;
}


static void staticLinkArr(){
	cout << "staticLinkArr ========== " << endl;

	Stu node1 = {100,"lucy",NULL};
	Stu node2 = {200,"lily",NULL};
	Stu node3 = {300,"tom",NULL};
	Stu node4 = {400,"tony",NULL};
	Stu node5 = {500,"bob",NULL};

	Stu *head = &node1;
	head->next = &node2;
	node2.next = &node3;
	node3.next = &node4;
	node4.next = &node5;
	printArr(head);

}

static void dyLinkArr(){
	cout << "dyLinkArr ========== " << endl;
	Stu *head = NULL;
	Stu temp = {1,"lily"};
	Stu temp2 = {2,"tom"};
	head = insertheadLink(head,temp);
	head = insertheadLink (head,temp2);
	printArr(head);	

	head = deleteMeta(head,1);
	head = deleteMeta(head,2);
	head = deleteMeta(head,2);
	printArr(head);
	
	Stu *head2 = NULL;
	Stu temp3 = {3,"lucy"};
	Stu temp4 = {4,"tony"};
	Stu temp5 = {5,"bob"};
	head2 = insertLink (head2,temp);
	head2 = insertLink (head2,temp2);
	head2 = insertLink (head2,temp3);
	head2 = insertLink (head2,temp4);
	head2 = insertLink (head2,temp5);
	printArr(head2);	

	head2 = deleteMeta(head2,6);
	head2 = deleteMeta(head2,3);
	head2 = deleteMeta(head2,5);
	head2 = deleteMeta(head2,1);
	printArr(head2);

	head2 = freeLinkArray(head2);
	printArr(head2);
}

static Stu* freeLinkArray(Stu *head){
	if(head!=NULL){
		Stu *cur = head;
		while (cur != NULL){
			head = head->next;
			delete cur;
			cur = head;
		}
	}
	return NULL;
}

static Stu* deleteMeta(Stu *head,int num){
	if(head!=NULL){
		Stu *cur = head;
		Stu *cf = head;
		while(cur != NULL && num != cur->num){
			cf = cur;
			cur = cur->next;
		}

		if(cur == NULL){//没找到
			cout << "num " << num << " del failed" <<endl;
			return head;
		}

		if(cur->num == num){//找到元素
			if(cur->num == head->num){
				head = head->next;
				cout << "num " << num << " is head , del successed" <<endl;
			}else{
				cf->next = cur->next;
				cout << "num " << num << " del successed" <<endl;
			}
			delete cur;
		}
	}
	return head;
}


//从尾部插入元素
static Stu* insertLink(Stu *head,Stu stu){
	Stu *p = new Stu;
	*p = stu;
	p->next = NULL;
	if(head == NULL){
		head = p;
	}else{
		Stu *last = head;
		while(last->next!=NULL){
			last = last->next;
		}
		last->next = p;
	}
	
	return head;
}
//从头部插入元素
static Stu* insertheadLink(Stu *head,Stu stu){
	Stu *p = new Stu;
	*p = stu;
	p->next = NULL;
	if(head != NULL){
		p->next = head;
	}
	head = p;
	return head;
}

static void printArr(Stu *head){
	cout<< "-------print linkarray : " << endl;
	Stu *cur = head;
	while(cur != NULL){
		cout<<"num : " << cur->num << " , name : " << cur->name << endl;
		cur = cur->next;
	}
}
/*
 * stl-exercises.h
 * 
 * STL 综合练习
 * 需求：
 * 举行一场跳水比赛，共24人，比赛共3轮 ，前两轮为淘汰赛，第三轮为决赛
 * 比赛方式：分组比赛，每组六人；选手每次要随机分组，进行比赛
 * 第一轮分为4个小组，每组6个人。比如编号为100～123.整体进行抽签后顺序跳水。党小组跳水完后，淘汰族内排名最后的3个选手，然后继续下一个小组的比赛。
 * 第二轮分为两个小组每组6人，比赛完毕，淘汰组内排名最后的三个选手，然后继续下一个小组的比赛。
 * 第三轮只剩下1组6个人，本论为决赛，选出前三名。
 * 比赛评分：10个评委打分，去除最低最高分，求平均分每个选手跳完由10个评委分别打分。该选手的最终的分是去掉一个最高分和一个最低分，求得剩下的8个成绩的平均分。
 * 选手的名词按照得分降序排列。
 * 选手（ABCD...VWZ）姓名、得分；选手编号。
 */

#ifndef _STL_EXERCISES_H_
#define _STL_EXERCISES_H_
#include <iostream>
#include "stl-start-base.h"
#include "exercises-player.h"
#include <vector>
#include <map>
#include <algorithm>


using namespace std;

//定义选手数量宏
#define PLAYER_TOTAL_COUNT 24
//定义评为数量宏
#define PLAYER_JUDGES_COUNT 10

//每轮分组人数
#define GROUP_SIZE 6

//每组胜利人数
#define GROPU_WINNER_SIZE 3
class StlExercises: public StlStartBase 
{
	public:
		virtual void start();
	private:
		vector<int> playerNumVector;//存放选手编号
		map<int,ExercisesPlayer> playerMap; //key:选手编号，value 编号
		
		void createPlayers();

		/*
		 * 开始比赛
		 * @param int round 第几轮
		 * @param vector<int> winers 晋级的player 编号vector
		 */
		void playGames(int round,vector<int> &winers);

		/*
         *获取分组排名前三名
		 * @param round 第几轮
		 * @param players  当前比赛的选手
		 * @param winers 当前players中排名前三的选手
		 */
		void getGroupWinsers(int round,vector<int> &players ,vector<int> &winers );

};



#endif // _STL_EXERCISES_H_


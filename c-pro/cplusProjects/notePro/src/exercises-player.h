/*
 * exercises-player.h
 * 
 *
 * 
 */

#ifndef _EXERCISES_PLAYER_H_
#define _EXERCISES_PLAYER_H_
#include <string>
#include <deque>
#include <algorithm>
#include <iostream>
#include <numeric>

using namespace std;

class ExercisesPlayer
{
	public:
		ExercisesPlayer();
		ExercisesPlayer(int num,string name);
		/*
		 *评为打分
		 * @param counts 打分数
		 * @param round 轮次
		 */
		void giveScore(int counts,int round);

		/*
		 * 获取当前轮次比分
		 */
		float getCurRoundScore(int round);
	private:
		int num;
		string name;
		float score[3];

};

class PlayerScoreCmp{
	public:
		bool operator()(pair<int,float> p1,pair<int,float> p2){
			return p1.second > p2.second;
		}
};

#endif // _EXERCISES_PLAYER_H_


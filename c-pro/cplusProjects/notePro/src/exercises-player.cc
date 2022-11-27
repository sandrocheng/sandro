/*
 * exercises-player.cc
 */

#include "exercises-player.h"


ExercisesPlayer::ExercisesPlayer(){}

ExercisesPlayer::ExercisesPlayer(int num,string name){
	this->num = num;
	this->name = name;
}

void ExercisesPlayer::giveScore(int counts,int round){
	deque<float> d;
	for(int i = 0;i < counts;i++){
		d.push_back((float)(rand()%41 + 60));
	}
	//排序后去掉最高分和最低分
	sort(d.begin(),d.end());
	d.pop_back();
	d.pop_front();
	//求平均分
	float avg =  accumulate(d.begin(),d.end(),0)/ (float)d.size();
	score[round] = avg;
}

float ExercisesPlayer::getCurRoundScore(int round){
	return score[round] ;
}

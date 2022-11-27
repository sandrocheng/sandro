/*
 * stl-exercises.cc
 */

#include "stl-exercises.h"

void StlExercises::start(){
	cout << "======StlExercises::start=======" << endl;
	createPlayers();
	//存放晋级选手编号
	vector<int> winers;
	//第一轮全部先手都参加比赛
	winers.resize(playerNumVector.size());
	copy(playerNumVector.begin(),playerNumVector.end(),winers.begin());
	playGames(1,winers);
	playGames(2,winers);
	playGames(3,winers);
	cout << "======StlExercises::end=========" << endl;
}

void StlExercises::getGroupWinsers(int round,vector<int> &players ,vector<int> &winers ){
	vector<pair<int,float>> curPlayersScore ;
	vector<int> :: iterator it = players.begin();
	for(;it!=players.end();it++){
		map<int,ExercisesPlayer>::const_iterator ret = playerMap.find(*it);
		if(ret!=playerMap.end()){
			ExercisesPlayer p = (*ret).second;
			curPlayersScore.push_back(make_pair(*it,p.getCurRoundScore(round-1)));
		}
	}
	
	sort(curPlayersScore.begin(),curPlayersScore.end(),PlayerScoreCmp());

	vector<pair<int,float>> :: iterator cpsit = curPlayersScore.begin();
	for(;cpsit !=curPlayersScore.end();cpsit++ ){
		cout << (*cpsit).first << " , " << (*cpsit).second << endl; 
		if(winers.size() < GROPU_WINNER_SIZE){
			winers.push_back((*cpsit).first);
			//cout << "winer : " << (*cpsit).first << endl;
		}
		
	}
	cout << "---------" << endl;
	
}
void StlExercises::playGames(int round,vector<int> &winers){
	//先打乱顺序，再分组
	random_shuffle(winers.begin(),winers.end());
	cout << "第" << round << "轮比赛，players : " << winers.size()<< endl;
	//逐个人参加比赛
	vector<int>::iterator it = winers.begin();
	//每组选手
	vector<int> groupPlayers;
	//每组选手前三名
	vector<int> curGropuWiners;

	//当前轮胜出选手
	vector<int> curRoundWiners;
	
	for(;it!=winers.end();it++){
		map<int,ExercisesPlayer>::const_iterator ret = playerMap.find(*it);
		if(ret != playerMap.end()){
			playerMap[*it].giveScore(PLAYER_JUDGES_COUNT,round-1);
		}
		groupPlayers.push_back(*it);
		if(groupPlayers.size() == GROUP_SIZE){
			getGroupWinsers(round,groupPlayers,curGropuWiners);
			curRoundWiners.insert(curRoundWiners.end(),curGropuWiners.begin(),curGropuWiners.end());
			groupPlayers.clear();
			curGropuWiners.clear();
		}
	}
	winers.resize(curRoundWiners.size());
	copy(curRoundWiners.begin(),curRoundWiners.end(),winers.begin());
	cout << "第" << round << "轮比赛，winers : " << winers.size()<< endl;
	BasePrintVectorInt(winers);
}

void StlExercises::createPlayers(){
	string seedName = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
	for(int i = 0;i<PLAYER_TOTAL_COUNT;i++){
		int num = 100 + i;
		string name = "play_";
		name += seedName[i];
		playerNumVector.push_back(num);
		playerMap.insert(make_pair(num,ExercisesPlayer(num,name)));
	}
}


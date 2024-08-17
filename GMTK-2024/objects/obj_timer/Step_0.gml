if (global.time>=0)
{

}
else{
	if global.time <= -0.96{ //0.96 et pas -1 pour empêcher un bug visuel mais mets -1 c'est la même
		global.time = global.startTime;
		global.timerTick = true;
		global.hitTick = true;
	}
}

global.time=global.time-delta_time/1000000;

showtime=ceil(global.time);
state("AI")
{
	int mission : 0x17E4814, 0x4, 0x300, 0x280

}

init
{
  
}

update
{
  
}

startup
{
settings.Add("autotimer",false,"AutoStart Timer");
}

start
{
	if (settings["autotimer"]) {
		if (current.mission == 1)
			return true;
	}
}

split
{
int oMission = old.mission;
int cMission = current.mission;

//print ("mission=(" + oMission + ") - (" + cMission +")");

	if (oMission == 1 & cMission == 2)
		return true;
	if (oMission == 2 & cMission == 3)
		return true;
	if (oMission == 3 & cMission == 4)
		return true;
	if (oMission == 4 & cMission == 5)
		return true;
	if (oMission == 5 & cMission == 6)
		return true;
	if (oMission == 6 & cMission == 7)
		return true;
	if (oMission == 7 & cMission == 8)
		return true;
	if (oMission == 8 & cMission == 9)
		return true;
	if (oMission == 9 & cMission == 10)
		return true;
	if (oMission == 10 & cMission == 11)
		return true;
	if (oMission == 11 & cMission == 12)
		return true;
	if (oMission == 12 & cMission == 13)
		return true;
	if (oMission == 13 & cMission == 14)
		return true;
	if (oMission == 14 & cMission == 15)
		return true;
	if (oMission == 15 & cMission == 16)
		return true;
	if (oMission == 16 & cMission == 17)
		return true;
	if (oMission == 17 & cMission == 18)
		return true;
	if (oMission == 18 & cMission == 19)
		return true;

}


reset
{
	if (settings["autotimer"]) {
		if (current.mission == 0)
			return true;
	}
}
isLoading
{
    // return current.isLoading == true;
}



exit
{
	// timer.IsGameTimePaused = true;
}
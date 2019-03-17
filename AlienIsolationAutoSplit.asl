state("AI")
{
	bool bLoading1 : 0x14345D0;
	bool bLoading2 : 0x15A2FF0;
	bool bPause : 0x15A3308;
	int mission : 0x17E4814, 0x4, 0x300, 0x280;
	int bLoading : 0x01366A58, 0x80, 0x4,0x4,0x0,0x1DC
}

init
{
	vars.split = 0;
}

update
{

  
}

startup
{
settings.Add("autotimer",false,"AutoStart Timer");
settings.Add("autosplitter",true,"Autosplitter");
settings.Add("loadremover",false,"Load Remover");
settings.Add("pauseremover",false,"Experimental Cinematics/Pause Remover");
}

start
{ 

	if (settings["autotimer"]) {
		if (current.mission == 1 && current.bPause == true) 
		{
			vars.split = vars.split + 1;
		return true;
		}
	}
	
}

split
{
	int oMission = old.mission;
	int cMission = current.mission;

//	print ("mission=(" + oMission + ") - (" + cMission +")");
if (settings["autosplitter"]) {
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
	if (oMission == 0 & cMission == 16)
		return true;
	if (oMission == 16 & cMission == 17)
		return true;
	if (oMission == 17 & cMission == 18)
		return true;
	if (oMission == 18 & cMission == 19)
		return true;
	}
}


reset
{
//	if (settings["autotimer"]) {
//		if (current.mission == 0)
//			return true;
//	}
}
isLoading
{
//print (current.bLoading1.ToString() + current.bLoading2.ToString());
	if (settings["pauseremover"]) {
		if (current.bPause == false && current.bLoading2 == false && current.bLoading1 == false)
			return true;
	}
	if (settings["loadremover"]) {
		if (current.bLoading == 256)
			return true;
		}
		
		return false;
}


exit
{
	// timer.IsGameTimePaused = true;
}
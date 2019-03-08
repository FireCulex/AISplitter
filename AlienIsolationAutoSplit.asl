state("AI")
{
  string6 mission : 0x0D4E520, 0x600, 0x144, 0x4C8;
  
//  bool isLoading : 0x15A2638
}

init
{
   vars.split =0;
}

update
{
 
}

startup
{

}

start
{

}

split
{
 
 var cMission = current.mission.Substring(3);
 var oMission = old.mission.Substring(3);

	if (oMission == "M1 " & cMission == "M2 ")
		return true;
	
	if (oMission == "M2 " & cMission == "M3 ")
		return true;
		
	if (oMission == "M3 " & cMission == "M4 ")
		return true;
	
	if (oMission == "M4 " & cMission == "M5 ")
		return true;
		
	if (oMission == "M5 " & cMission == "M6 ")
		return true;
		
	if (oMission == "M6 " & cMission == "M7 ")
		return true;
	
	if (oMission == "M7 " & cMission == "M8 ")
		return true;
		
	if (oMission == "M8 " & cMission == "M9 ")
		return true;
		
	if (oMission == "M9 " & cMission == "M10")
		return true;

	if (oMission == "M10" & cMission == "M11")
		return true;
		
	if (oMission == "M11" & cMission == "M12")
		return true;

	if (oMission == "M12" & cMission == "M13")
		return true;
		
	if (oMission == "M13" & cMission == "M14")
		return true;

	if (oMission == "M14" & cMission == "M15")
		return true;
		
	if (oMission == "M15" & cMission == "M16")
		return true;

	if (oMission == "M16" & cMission == "M17")
		return true;
		
	if (oMission == "M17" & cMission == "M18")
		return true;

	if (oMission == "M18" & cMission == "M19")
		return true;
}


reset
{

}
isLoading
{
    // return current.isLoading == true;
}



exit
{
	// timer.IsGameTimePaused = true;
}
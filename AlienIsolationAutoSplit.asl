state("AI"){
				   
//  bool isLoading : 0x14345D0
int levelManagerState : 0x12F0C88, 0x3C, 0x4C;

}


isLoading
{
	return vars.loading || current.gameFlowState == 6;
    // return current.isLoading == true;
}

split
{

if (old.levelManagerState == 5 && current.levelManagerState == 7)
	vars.loading = true;
else if (current.fadeState == 2 && old.fadeNum < 0.2 && current.fadeNum > 0.2)
	vars.loading = false;	
	
 //   return (current.isLoading == true && current.isLoading != old.isLoading);
}
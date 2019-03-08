state("AI"){
				   
  bool isLoading : 0x14345D0

}


isLoading
{
    return current.isLoading == true;
}

split
{
    return (current.isLoading == true && current.isLoading != old.isLoading);
}
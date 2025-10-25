PS > $hexNumber=0x1234 //Our stored variable

//enter our named variable and get the output
PS > $hexNumber
4660

PS > [Convert]::ToString(1234,2) //Our stored variable
//Computer Output
10011010010

PS > [Convert]::ToInt32("10011010010",2) //Our stored variable
//Computer Output
1234
    

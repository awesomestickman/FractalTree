private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .4;  
private double thinner=2;
float randomer=0.3;
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(205 ,170 ,125); 
	strokeWeight(10);  
	line(320,480,320,380);   
	drawBranches(320,380,100,3*Math.PI/2,(float)9.5);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle,float thick) 
{   
	//your code here    
	double angle1 = angle+branchAngle;
	double angle2 = angle-branchAngle;
	double angle3 = angle;
	branchLength*=fractionLength;
strokeWeight(thick);
if(thick<0.2){
stroke(192 ,255, 62); 

}
else{
	stroke(205 ,170 ,125); 
}

	int endX1 = (int)(branchLength*Math.cos(angle1+((float)(Math.random()*1)-randomer)) + x); 
	int endY1 = (int)(branchLength*Math.sin(angle1+((float)(Math.random()*1)-randomer)) + y);
	int endX2 = (int)(branchLength*Math.cos(angle2+((float)(Math.random()*1)-randomer)) + x); 
	int endY2 = (int)(branchLength*Math.sin(angle2+((float)(Math.random()*1)-randomer)) + y);
	int endX3 = (int)(branchLength*Math.cos(angle3+((float)(Math.random()*1)-randomer)) + x); 
	int endY3 = (int)(branchLength*Math.sin(angle3+((float)(Math.random()*1)-randomer)) + y);
	line(x,y,endX1,endY1);  
	line(x,y,endX2,endY2);  
	line(x,y,endX3,endY3);  
	if(branchLength>smallestBranch){
float newThick=(float)(thick-thinner);
if(newThick<0){

	newThick=0.1;
}


drawBranches(endX1,endY1,branchLength-3,angle1,newThick); 
drawBranches(endX2,endY2,branchLength-3,angle2,newThick); 
drawBranches(endX3,endY3,branchLength-3,angle3,newThick); 

	}
} 

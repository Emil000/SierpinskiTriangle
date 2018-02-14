public void setup()
{
	size(500,500);
	background(200);

}
public void draw()
{
	stroke(0);
	fill(46,87,103);
	sierpinski(10,490,490);

}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if (len<=10)
	{
		fill((int)((Math.random()*200)+20),(int)((Math.random()*200)+20),(int)((Math.random()*200)+20));
		triangle(x, y, x+(len/2), y-((len/2)*1.73205), x+len, y);
	}
	else
	{
		sierpinski(x,y,len/2);
		sierpinski(x+(len/2),y,len/2);
		sierpinski(x+(len/4),y-(len/2),len/2);	
	}

		

}
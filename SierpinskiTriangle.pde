public void setup()
{
	size(500,500);
	background(8,1,18);
}
public void draw()
{
	fill(226,218,240);
	sierpinski(50,450,400);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len > 20)
	{
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y - len/2, len/2);
	}
	else
	{
		triangle(x, y, x + len/2, y - len, x + len, y);
	}
}
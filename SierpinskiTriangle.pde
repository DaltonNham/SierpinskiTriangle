public void setup()
{
	background(0);
	size(500,500);
}
public void draw()
{
	sierpinski(0, 500, 500);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 10)
	{
		triangle(x, y, x + (len/2), y - len, x + len, y);
	}
	else
	{
		fill((int)(Math.random()*256), 0, 0);
		sierpinski(x, y, len/2);
		fill(0, (int)(Math.random()*256), 0);
		sierpinski(x + (len/2), y, len/2);
		fill(0, 0, (int)(Math.random()*256));
		sierpinski(x + (len/4), y - (len/2), len/2);
	}
}
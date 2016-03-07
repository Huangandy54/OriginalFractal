	int x=400;
	int y=400;
	Boolean rev=false;
public void setup()
{
	size(800, 800);
}

public void draw()
{
	background(0);
	Fractal(x, y, 800);
	println("x: "+x);
	if (x>500) {
		rev=true;
	}
	else if (x==300) {
		rev=false;
	}
	if (rev==true) {
		x--;
		y--;
	}
	else if(rev==false) {
		x++;
		y++;
	}
}

public void Fractal(int x, int y, int len)
{
	if(len > 30)
	{
		stroke(random(0, 255));
		strokeWeight(1);
		noFill();
		Fractal(x+len, y, len/2);
		Fractal(x-len, y, len/2);
		Fractal(x, y+len, len/2);
		Fractal(x, y-len, len/2);
		Fractal(x+len, y, len/4);
		Fractal(x-len, y, len/4);
		Fractal(x, y+len, len/4);
		Fractal(x, y-len, len/4);
		
	}
	else {
		ellipse(x, y, len, len);
	}
	
}	

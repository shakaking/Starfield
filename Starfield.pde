NormalParticle [] stars;
void setup()
{
	size(800,800);
	stars= new NormalParticle[10];
	for(int p=0; p < stars.length; p++)
	{
		stars[p] = new NormalParticle();
	}
}

void draw()
{
	background(0);
	for (int p=0; p<stars.length; p++)
	{
		stars[p].move();
		stars[p].show();
	}
}
class NormalParticle
{
	double x,y, speed, angle;
	int starC;
	NormalParticle()
	{
		x=400;
		y=400;
		starC=color((int)(Math.random()*255));
		fill(starC);
		angle=3.14;
		speed=4;
	}
	void move()
	{
		x+=(Math.cos(angle)*speed);
		y+=(Math.sin(angle)*speed);
	}
	void show()
	{
		ellipse((int)x,(int)y,10,10);
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}


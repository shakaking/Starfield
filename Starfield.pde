NormalParticle [] stars;
void setup()
{
	noStroke();
	size(800,800);
	stars= new NormalParticle[500];
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
		stars[p].wrap();
	}
}
class NormalParticle
{
	double x,y, speed, angle;
	int starC1, starC2, starC3;
	NormalParticle()
	{
		x=400;
		y=400;
		fill(255);
		angle=(Math.random()*2*Math.PI);
		speed=(Math.random()*8);
	}
	void move()
	{
		x+=(Math.cos(angle)*speed);
		y+=(Math.sin(angle)*speed);
		angle+=0.01;
	}
	void show()
	{
		ellipse((int)x,(int)y,3,3);
	}
	void wrap()
	{
		if (x>800|| x<0 || y<0 || y>800)
		{
		x=400;
		y=400;
		fill(255);
		angle=(Math.random()*2*Math.PI);
		speed=(Math.random()*8);
		}
	}
}
interface Particle
{
	
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}


Particle [] stars;
void setup()
{
	noStroke();
	size(800,800);
	stars= new Particle[500];
	for(int p=0; p < stars.length; p++)
	{
		stars[p] = new NormalParticle();
	}
	stars [0] = new OddballParticle();
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
class NormalParticle implements Particle
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
	public void move()
	{
		x+=(Math.cos(angle)*speed);
		y+=(Math.sin(angle)*speed);
		angle+=0.001;
	}
	public void show()
	{
		ellipse((int)x,(int)y,3,3);
	}
	public void wrap()
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

	public void move();
	public void show();
	public void wrap();
}
class OddballParticle implements Particle
{
	double oddX, oddY, oddSpeed, oddAngle;
	OddParticle()
	{
		oddX = 400;
		oddY = 400;
		fill(255,0,0);
		oddSpeed = (Math.random()*8);
		oddAngle = (Math.random()*Math.PI);
	}
	public void move()
	{
		oddX += (Math.cos(oddAngle)*oddSpeed);
		oddY += (Math.sin(oddAngle)*oddSpeed);
	}
	public void show()
	{
		ellipse((int)oddX, (int)oddY, 20,20);
	}
	public void wrap()
	{
		if (oddX>800|| oddX<0 || oddY<0 || oddY>800)
		{
		oddX=400;
		oddY=400;
		fill(255,0,0);
		oddAngle=(Math.random()*2*Math.PI);
		odSpeed=(Math.random()*8);
		}
	}
}
class JumboParticle extends Particle
{
	//jumboS
}


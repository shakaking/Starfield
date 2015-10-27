Particle [] stars;
void setup()
{
	noStroke();
	size(800,800);
	stars= new Particle[500];
	for(int p=2; p < stars.length; p++)
	{
		stars[p] = new NormalParticle();
	}
	stars [0] = new OddballParticle();
	stars [1] = new JumboParticle();
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
	int sizez;
	NormalParticle()
	{
		x=400;
		y=400;
		fill(255);
		angle=(Math.random()*2*Math.PI);
		speed=(Math.random()*8);
		sizez = 3;
	}
	public void move()
	{
		x+=(Math.cos(angle)*speed);
		y+=(Math.sin(angle)*speed);
		angle+=0.001;
	}
	public void show()
	{
		ellipse((int)x,(int)y,sizez,sizez);
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
	OddballParticle()
	{
		oddX = 400;
		oddY = 400;
		oddSpeed = (Math.random()*4)+20;
		oddAngle = (Math.random()*2 *Math.PI);
	}
	public void move()
	{
		oddX += (Math.tan(oddAngle)*oddSpeed);
		oddY += (Math.sin(oddAngle)*oddSpeed);
	}
	public void show()
	{
		fill(255,255,0);
		ellipse((int)oddX, (int)oddY, 20,20);
	}
	public void wrap()
	{
		if (oddX>800|| oddX<0 || oddY<0 || oddY>800)
		{
		oddX=400;
		oddY=400;
		oddAngle=(Math.random()*2*Math.PI);
		oddSpeed=(Math.random()*4)+20;
		}
	}
}
class JumboParticle extends NormalParticle
{
	JumboParticle()
	{
		sizez=50;
	}
}

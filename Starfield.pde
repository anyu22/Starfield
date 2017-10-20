//your code here
NormalParticle[] one = new NormalParticle[400];
void setup()
{
	//your code here
	for(int x = 0; x < 400; x++){
		one[x] = new NormalParticle();
		one[x].show();

	}
}
void draw()
{
	//your code here
}
class NormalParticle
{
	//your code here
	int dX, dY;
	double sTheta ,sAngle, sSpeed;
	NormalParticle(){
		sTheta= 2* Math.PI;
		sAngle= ((Math.random()*180)+0);
		sSpeed= ((Math.random()*10)+10);
	}
	void show(){
		ellipse((float)dX,(float)dY,3,3);
	}
	void move(){
		dX = 150;
		dY = 150;
	}
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle
{
	double dX, dY;
	OddballParticle(){
		dX = 150;
		dY = 150; 
	}
	public void move(){
		dX = dX + ((Math.random()*180)+0);
		dY = dY + ((Math.random()*50)+15);
	}
	public void show(){
		rect(60,60,60,60);
	}
}
class JumboParticle implements Particle //uses inheritance
{
	//your code here
	double dX, dY;
	JumboParticle(){
		dX = 150;
		dY= 150;
	}
	public void move(){
		dX = dX + ((Math.random()*180)+0);
		dY = dY + ((Math.random()*50)+15);
	}
	public void show(){
		ellipse((float)dX,(float)dY,30,30);
	}
}


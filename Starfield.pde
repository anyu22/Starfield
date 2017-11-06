//your code here
Particle[] one = new Particle[540];

void setup()
{
	size(512, 512);

	for(int x = 0; x < 540; x++){
		one[x] = new NormalParticle();
	}
	one[5] = new JumboParticle();
	one[1] = new OddballParticle();	

}

void draw()
{
	background(0);

	for(int x = 0; x < 500; x++){
		one[x].show();
		one[x].move();
	}




}
class NormalParticle implements Particle
{
	//your code here
	int col;

	double x,y, angle, speed;

	NormalParticle(){ 
		x = 256 + Math.random()*3;
		y = 256 + Math.random() * 3;
		speed = Math.PI*3*Math.random();
		angle = Math.random()*20+5;
	}

	public void show(){
		ellipse((float)x,(float)y, 3, 3);
		fill(255);
	}

	public void move(){
		angle += 0.00001;
		x = x + Math.cos(angle) * speed; //initialization error?
		y = y + Math.sin(angle) * speed;
		if(x > 9000){
			x = Math.random()*256;
		
		}
		if(y > 9000){
			y = Math.random()*256;
		}
	}

}

interface Particle
{
	public void move();
	public void show();
}

class OddballParticle implements Particle 
{
	double oX, oY, oTheta, oSpeed;
	OddballParticle(){
		oX = 256 + Math.random()*200;
		oY = 256 + Math.random()*200;
		oTheta = Math.random()*25;
		oSpeed = Math.PI*5*Math.random();
	}


	public void show(){
		fill(255,0,0);
		rect((float)oX, (float)oY, 50, 50);

	}
	public void move(){
		oTheta += 0.1;
		oX = Math.cos(oTheta) * oSpeed;
		oY = Math.sin(oTheta) * oSpeed;
	}
	
}

class JumboParticle extends NormalParticle //uses inheritance
{
	//your code here
	public void show(){
		fill(0,255,0);
		ellipse((float)x,(float)y,70,70);
	}


}


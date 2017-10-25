//your code here
NormalParticle[] one = new NormalParticle[544440];

void setup()
{
	size(512, 512);

	for(int x = 0; x < 544440; x++){
		one[x] = new NormalParticle();
	}
	

}

void draw()
{
	background(0);

	for(int x = 0; x < 50; x++){
		one[x].show();
		one[x].move();
	}

	redraw();

}
class NormalParticle implements Particle
{
	//your code here
	int col;

	double x,y, angle, speed;

	NormalParticle(){ 
		x = 256;
		y = 256;
		speed = ((Math.random()*145)+500);
		angle = ((Math.random()*180)-90);
	}

	public void show(){
		ellipse((float)x,(float)y, 23, 23);
		fill(255);
	}

	public void move(){
		x = x + Math.cos(angle); //initialization error?
		y = y + Math.sin(angle) ;

	}

}

interface Particle
{
	public void move();
	public void show();
}

//class OddballParticle implements Particle 
//{
	//public void show(){
		//ellipse((float)x,(float)y,50,50);
//	}
//}

//class JumboParticle extends NormalParticle //uses inheritance
//{
	//your code here
//}


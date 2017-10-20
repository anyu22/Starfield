//your code here
NormalParticle[] one = new NormalParticle[400];
void setup()
{
	size(512, 512);
	for(int x = 0; x < 400; x++){
		one[x] = new NormalParticle();
	}
}
void draw()
{
	for(int x = 0; x < 400; x++){
		one[x].show();
		one[x].move();
	}
}
class NormalParticle
{
	//your code here
	int col;
	double x,y, angle, speed;
	NormalParticle(){ 
		x = 150;
		y = 150;
		speed = ((Math.random()*180)+0);
		angle = ((Math.random()*180)-90);
	}
	public void show(){
		ellipse((float)x,(float)y, 23, 23);
		fill(255);
	}
	public void move(){
		x = x + Math.cos(angle); //initialization error?
		y = y + Math.sin(angle);
	}

}
interface Particle
{
	public void move();
	public void show();
}

//class OddballParticle implements Particle TO BE WORKED ON LATER
//{

//}
//class JumboParticle extends NormalParticle //uses inheritance
//{
	//your code here
//}


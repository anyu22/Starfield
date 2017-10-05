//your code here

void setup()
{
	//your code here
	stars[] one = new stars[400]
	for(int x = 0; x < 400; x++){
		one[x] = new stars();
	}
}
void draw()
{
	//your code here
}
class NormalParticle
{
	//your code here
	
	void show(){
		ellipse((float)dX,(float)dY,5,5)
	}
	void move(){

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


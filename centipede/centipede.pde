Player p;

public void setup() {
	background(0,0,0);
}

public void draw() {
	p = new Player();
}

public int sketchWidth() {
	return displayWidth;
}

public int sketchHeight() {
	return displayHeight;
}
public boolean sketchFullScreen() {
	return true;
}

public void keyPressed() {
	if(key == CODED) {
		switch(keyCode) {
			case UP:
				p.move("up");
				break;
			case DOWN:
				p.move("down");
				break;
			case LEFT:
				p.move("left");
				break;
			case RIGHT:
				p.move("right");
				break;
		}
	}

}

Player p;

public void setup() {
	p = new Player(50, 50);
	background(0,0,0);
}

public void draw() {
	background(0);
	p.draw();
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

public void keyReleased() {
	if(key == CODED) {
		switch(keyCode) {
			case UP:
				p.stop(Direction.NORTH);
				break;
			case DOWN:
				p.stop(Direction.SOUTH);
				break;
			case LEFT:
				p.stop(Direction.WEST);
				break;
			case RIGHT:
				p.stop(Direction.EAST);
				break;
		}
	}
}

public void keyPressed() {
	if(key == CODED) {
		switch(keyCode) {
			case UP:
				p.move(Direction.NORTH);
				break;
			case DOWN:
				p.move(Direction.SOUTH);
				break;
			case LEFT:
				p.move(Direction.WEST);
				break;
			case RIGHT:
				p.move(Direction.EAST);
				break;
		}
	}
}

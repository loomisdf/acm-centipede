Player p;
Centipede c;

public void setup() {
	p = new Player(50, 50);
	c = new Centipede(0,0);
	background(0,0,0);
}

public void draw() {
	background(0);
	p.draw();
	c.draw();
	moveCentipede();
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

public void moveCentipede() {
	c.move(Direction.EAST);
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

public Direction reverseDirection(Direction direction) {
	switch(direction) {
		case NORTH:
			return Direction.SOUTH;
		case NORTHEAST:
			return Direction.SOUTHEAST;
		case NORTHWEST:
			return Direction.SOUTHEAST;
		case SOUTH:
			return Direction.NORTH;
		case SOUTHEAST:
			return Direction.NORTHWEST;
		case SOUTHWEST:
			return Direction.NORTHEAST;
		case EAST:
			return Direction.WEST;
		case WEST:
			return Direction.EAST;
		default:
			return direction;
	}
}

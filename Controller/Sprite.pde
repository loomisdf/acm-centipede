public class Sprite {
	PImage playerImg;
	private	int x;
	private int y;
	private int move_speed;
	private int sprite_width;
	private int sprite_height;

	boolean moveNorth, moveSouth, moveEast, moveWest;

	public Sprite(int x, int y, int sprite_width, int sprite_height, String filename, int move_speed)  {
		this.x = x;
		this.y = y;
		this.sprite_width = sprite_width;
		this.sprite_height = sprite_height;
		this.move_speed = move_speed;
		playerImg = loadImage(filename);
	}

	public int getX() {
		return x;
	}

	public int getY() {
		return y;
	}

	public int getWidth() {
		return sprite_width;
	}

	public int getHeight() {
		return sprite_height;
	}

	public void draw() {
		if(y > 0) {
			if (moveNorth) {
				y -= move_speed;
			}
		}
		if(y + sprite_height < height) {
			if (moveSouth) {
				y += move_speed;
			}
		}
		if(x + sprite_width < width) {
			if (moveEast) {
				x += move_speed;
			}
		}
		if(x > 0) {
			if (moveWest) {
				x -= move_speed;
			}
		}
		image(playerImg, x, y, sprite_width, sprite_height);
	}

	// Tell the player which direction to move
	public void move(Direction direction) {
		switch (direction) {
			case NORTH:
				moveNorth = true;
				break;
			case NORTHEAST:
				moveNorth = true;
				moveEast = true;
				break;
			case EAST:
				moveEast = true;
				break;
			case SOUTHEAST:
				moveSouth = true;
				moveEast = true;
				break;
			case SOUTH:
				moveSouth = true;
				break;
			case SOUTHWEST:
				moveSouth = true;
				moveWest = true;
				break;
			case WEST:
				moveWest = true;
				break;
			case NORTHWEST:
				moveWest = true;
				moveNorth = true;
				break;
		}
	}

	public void stop(Direction direction) {
		switch (direction) {
			case NORTH:
				moveNorth = false;
				break;
			case NORTHEAST:
				moveNorth = false;
				moveEast = false;
				break;
			case EAST:
				moveEast = false;
				break;
			case SOUTHEAST:
				moveSouth = false;
				moveEast = false;
				break;
			case SOUTH:
				moveSouth = false;
				break;
			case SOUTHWEST:
				moveSouth = false;
				moveWest = false;
				break;
			case WEST:
				moveWest = false;
				break;
			case NORTHWEST:
				moveWest = false;
				moveNorth = false;
				break;
		}
	}
}

public class Player extends Sprite {

	final static int WIDTH = 150;
	final static int HEIGHT = 75;
	final static int MOVE_SPEED = 10;
	final static String FILE_NAME = "lord gaben.jpg";

	public Player(int x, int y) {
		super(x, y, WIDTH, HEIGHT, FILE_NAME, MOVE_SPEED);
	}
}

public class Mushroom {
	private int x, y, width, height;

	public Mushroom(int x, int y, int width, int height) {
		this.x = x;
		this.y = y;
		this.width = width;
		this.height = height;
	}

	public void draw() {
		rect(x, y, width, height);
	}
}

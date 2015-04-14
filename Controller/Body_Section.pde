public class Body_Section extends Sprite {
	final static int WIDTH = 50;
	final static int HEIGHT = 50;
	final static String FILE_NAME = "body_section.png";
	final static int MOVE_SPEED = 5;
	private String section_name;

	public Body_Section(int x, int y, String s_name) {
		super(x, y, WIDTH, HEIGHT, FILE_NAME, MOVE_SPEED);
		this.section_name = s_name;
	}

	public String getName() {
		return section_name;
	}
}

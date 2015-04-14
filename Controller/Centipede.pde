import java.util.LinkedList;

public class Centipede {

	private LinkedList<Body_Section> centipede_body = new LinkedList<Body_Section>();
	private int body_size = 12;

	public Centipede(int x, int y) {
		for(int i = 0; i < body_size; i++) {
			centipede_body.add(new Body_Section(x + (i * Body_Section.WIDTH), y, "section_" + i));
		}
	}

	public void draw() {
		for(int i = 0; i < body_size; i++) {
			Body_Section s = centipede_body.get(i);
			s.draw();
		}
	}

	public void move(Direction direction) {
		for(int i = 0; i < body_size; i++) {
			Body_Section s = centipede_body.get(i);
			s.move(direction);
		}
	}
}

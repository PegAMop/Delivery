shader_type canvas_item;

const float SPEED = 0.2;

void vertex() {
	UV.x -= TIME * SPEED;
	UV.y -= TIME * SPEED;
}

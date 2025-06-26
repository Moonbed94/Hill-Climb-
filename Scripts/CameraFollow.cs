using Godot;

public partial class CameraFollow : Camera2D
{
	[Export] public NodePath TargetPath;
	[Export] public float SmoothSpeed = 5f;

	private Node2D target;

	public override void _Ready()
	{
		if (TargetPath != null)
			target = GetNode<Node2D>(TargetPath);

		// Enable the camera
		MakeCurrent();
	}

	public override void _Process(double delta)
	{
		if (target == null)
			return;

		float dt = (float)delta;
		Vector2 desiredPosition = target.GlobalPosition;
		GlobalPosition = GlobalPosition.Lerp(desiredPosition, SmoothSpeed * dt);
	}
}

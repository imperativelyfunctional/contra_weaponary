import 'package:flame/collisions.dart';
import 'package:flame/components.dart';

class Bullet extends SpriteComponent with CollisionCallbacks {
  Vector2 velocity;
  Vector2 collisionSize;
  Vector2 collisionPosition;

  Bullet(
      {required this.collisionSize,
      required this.collisionPosition,
      required this.velocity,
      required super.position,
      required super.size,
      required super.sprite}) {
    add(RectangleHitbox(position: collisionPosition, size: collisionSize));
  }

  Bullet.rifle(
      {collisionSize, collisionPosition, velocity, position, size, sprite})
      : this(
            collisionSize: collisionSize,
            collisionPosition: collisionPosition,
            velocity: velocity,
            position: position,
            size: size,
            sprite: sprite);

  Bullet.machineGun(
      {collisionSize, collisionPosition, velocity, position, size, sprite})
      : this(
            collisionSize: collisionSize,
            collisionPosition: collisionPosition,
            velocity: velocity,
            position: position,
            size: size,
            sprite: sprite);

  @override
  void update(double dt) {
    super.update(dt);
    position.add(velocity * dt);
  }
}

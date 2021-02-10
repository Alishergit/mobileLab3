import 'dart:io';

class Cuboid {
  num length;
  num width;
  num height;

  Cuboid(this.length, this.width, this.height);


  num getSurfaceArea() {
    num SA = 2 * (length * width + length * height + width * height);
    return SA;
  }

  num getVolume(){
    num volume = length * width * height;
    return volume;

  }
}

class Cube extends Cuboid{



  Cube(length) : super(length, length, length);

}

void main() {
  print('Enter the length of a Cuboid');
  num length = num.parse(stdin.readLineSync());
  print('Enter the width of a Cuboid');
  num width = num.parse(stdin.readLineSync());
  print('Enter the height of a Cuboid');
  num height = num.parse(stdin.readLineSync());

  Cuboid cuboid = Cuboid(length,width,height);
  Cube cube = Cube(cuboid.length);

  print(" The Surface of a Cuboid is: " + '${cuboid.getSurfaceArea()}');
  print(" The Volume of a Cuboid  is: " + '${cuboid.getVolume()}');
  print('The length of Cube: ' + '${cube.length}' +'\n'
      'The height of Cube: ' + '${cube.height}'  + '\n'
      'The width of Cube: ' + '${cube.width}');
}
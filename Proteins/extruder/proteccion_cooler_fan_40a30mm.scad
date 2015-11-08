module tobera_orig(){
import("fan_duct.stl");
}


difference(){
  union(){
  	tobera_orig();
    translate([-38, 2, -7])
    minkowski() {
	  	cube([18, 36, 4]);
      cylinder (h = 3, r=2,  $fn=100);
    }
  }

	translate([-21, 0, -14])
		cube([21, 41, 80]);
  translate([-20,20, -10])
    cylinder (h = 15, r=18,  $fn=100);

	translate([-36, 4, -8])
		cylinder (h = 15, r=1.6,  $fn=100);
	translate([-36, 36, -8])
		cylinder (h = 15, r=1.6,  $fn=100);
}
module tobera_orig(){
import("Fan_Argento_New_ok.stl");
}

alto_pared=5; // decia 10
ancho_pared=2;
largo_pared=24;

difference(){
	tobera_orig();
	translate([0, 29.5, 7])
	cube([40, 12, 2]);
}

difference(){
  translate([5, 5,0])
  minkowski() {
  	cube([30, 30, 2]);
    cylinder (h = 1, r=5,  $fn=100);
  }
  translate([20,20, -10])
  cylinder (h = 15, r=14,  $fn=100);


	translate([4, 4, -1])
		cylinder (h = 10, r=1.6,  $fn=100);
	translate([4, 36, -1])
		cylinder (h = 10, r=1.6,  $fn=100);
  
	translate([36, 4, -1])
		cylinder (h = 10, r=1.6,  $fn=100);
	translate([36, 36, -1])
		cylinder (h = 10, r=1.6,  $fn=100);

	translate([8, 8, -1])
		cylinder (h = 10, r=1.6,  $fn=100);
	translate([8, 32, -1])
		cylinder (h = 10, r=1.6,  $fn=100);
  
	translate([32, 8, -1])
		cylinder (h = 10, r=1.6,  $fn=100);
	translate([32, 32, -1])
		cylinder (h = 10, r=1.6,  $fn=100);
  
  
}

translate([5.5, 5.6, 27])
cube([ancho_pared, largo_pared, alto_pared]);

translate([32.5, 5.6, 27])
cube([ancho_pared, largo_pared, alto_pared]);

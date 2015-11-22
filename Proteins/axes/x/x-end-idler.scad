// PRUSA iteration3
// X end idler
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

use <x-end.scad>

module x_end_idler_base() {
  x_end_base();
}

module x_end_idler_holes() {
  x_end_holes();
  translate(v = [0,-23-3.5/2,30.25-4]) rotate(a = [0,-90,0]) cylinder(h = 80, r = 1.7, $fn = 10);
  translate(v = [2,-23-3.5/2,30.25-4]) rotate(a = [0,-90,0]) cylinder(h = 10, r = 3.1, $fn = 15);
  translate(v = [-22,-23-3.5/2,30.25-4]) rotate(a = [0,-90,0]) rotate(a = [0,0,30]) cylinder(h = 80, r = 3.3, $fn = 6);
}

// Final part
module x_end_idler(){
  mirror([0,1,0]) difference() {
    x_end_idler_base();
    x_end_idler_holes();
  }
}

difference(){
  x_end_idler();
  rotate([0,0,-19]) translate([0,7,-.1]) cube([8,4,50]);
  translate([0,-12,-.1]) cube([12,18.5,50]);

  translate([3.5,0,38])
   rotate_extrude(convexity = 5, $fn = 100)
   translate([14, 0, 0])
   rotate([0,0,30])circle(r = 1.8, $fn = 6);

  translate([3.5,0,11])
   rotate_extrude(convexity = 5, $fn = 100)
   translate([14, 0, 0])
   rotate([0,0,30])circle(r = 1.8, $fn = 6);
  
  
 }  
translate([0,-9,0])cylinder(h=49,d=3,$fn=30);
rotate([0,0,-18])translate([0,9,0])cylinder(h=49,d=3,$fn=30);
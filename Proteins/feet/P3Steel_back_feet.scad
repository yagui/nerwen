//-- two rounded flat cubes with a slot in the middle
//-- rear feet have an extra slot at right angle
//-- also left foot is mirror of right foot

x1=40;

y1=20;

th=5;
  
//-- OK, now we define the cylinders that are going to be at
//-- the four corners of our rounded corners box.

//-- the radius of the cylinders
box_corner_radius=4.5;

//-- The centers of the four corner cylinders

P1=[x1/2-box_corner_radius,y1/2-box_corner_radius,0];
P2=[x1/2-box_corner_radius,-y1/2+box_corner_radius,0];
P3=[-x1/2+box_corner_radius,-y1/2+box_corner_radius,0];
P4=[-x1/2+box_corner_radius,y1/2-box_corner_radius,0];

translate([0,0,th/2]) {
  hull() {
    translate(P1)
      cylinder(r=box_corner_radius,h=th,$fn=30,center=true);
      
    translate(P2)
      cylinder(r=box_corner_radius,h=th,$fn=30,center=true);
      
    translate(P3)
      cylinder(r=box_corner_radius,h=th,$fn=30,center=true);
      
    translate(P4)
      cylinder(r=box_corner_radius,h=th,$fn=30,center=true);
  }
}

//-- OK, now we define the cylinders that are going to be at
//-- the four corners of our 2nd rounded corners box.
x2=35.3;

y2=15.1;

th2=6;
//-- the radius of the cylinders
bc2=3;

//-- slot size
x3=27.8;
y3=3.3;
th3=th2+1;

//-- 2nd slot size


//-- The centers of the four corner cylinders

PT1=[x2/2-box_corner_radius,y2/2-box_corner_radius,0];
PT2=[x2/2-box_corner_radius,-y2/2+box_corner_radius,0];
PT3=[-x2/2+box_corner_radius,-y2/2+box_corner_radius,0];
PT4=[-x2/2+box_corner_radius,y2/2-box_corner_radius,0];

// -- uncoment to next lilne for the mirrored part
//mirror([1,0,0]) 
difference() {
  translate([0,0,th+th2/2]) {
    hull() {
      translate(PT1)
	cylinder(r=bc2,h=th2,$fn=30,center=true);
	
      translate(PT2)
	cylinder(r=bc2,h=th2,$fn=30,center=true);
	
      translate(PT3)
	cylinder(r=bc2,h=th2,$fn=30,center=true);
	
      translate(PT4)
	cylinder(r=bc2,h=th2,$fn=30,center=true);
    }
  }

  //-- Now we define the main T which we are going to hollow out

  union() {
    translate([0,0,th+th3/2])
      cube([x3,y3,th3],center=true);
    translate([3,x3/2,th+th3/2])
      cube([y3,x3,th3],center=true);
  }
}
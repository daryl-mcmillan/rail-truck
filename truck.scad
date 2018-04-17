module bolt () {
  width = 5.7;
  edge = 3.3;
  cube([width,edge,2],1);
  rotate([0,0,60]) { cube([width,edge,2],1);}
  rotate([0,0,120]) { cube([width,edge,2],1); }
  cylinder(20,3.3/2,3.3/2,center=true,$fn=24);
}

module box ( x, y, z ) {
    translate( [-x/2, -y/2, 0] ) {
        cube( [x,y,z] );
    }
}

difference() {

    box(28,25,19);

    translate([0,0,14]) {
        union() {
            cube([12,50,12],1);
            cube([11,21,20],1);
            cube([20,21,11],1);
        }
    }

    translate([0,5,3]) { bolt(); }
    translate([0,-5,3]) { bolt(); }

  translate([-11,5,14]) { rotate([0,0,90]) { rotate([90,0,0]) { bolt(); }} }
  translate([-11,-5,14]) { rotate([0,0,90]) { rotate([90,0,0]) { bolt(); }} }
  translate([11,5,14]) { rotate([0,0,90]) { rotate([90,0,0]) { bolt(); }} }
  translate([11,-5,14]) { rotate([0,0,90]) { rotate([90,0,0]) { bolt(); }} }
}


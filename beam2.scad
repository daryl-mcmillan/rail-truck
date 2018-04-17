difference() {
  translate([-7,-7,0]) { cube([14,14,5]); }

  difference() {
    translate([-5.2,-5.2,0]) { cube([10.4,10.4,20]); }
    
    translate([4,-1.5,0]) { cube([3,3,20]); }
    rotate(90) { translate([4,-1.5,0]) { cube([3,3,20]); } }
    rotate(180) { translate([4,-1.5,0]) { cube([3,3,20]); } }
    rotate(270) { translate([4,-1.5,0]) { cube([3,3,20]); } }
  }
}
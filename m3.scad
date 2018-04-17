width = 5.7;
edge = 3.3;
difference() {
    cube([8,8,4]);
    translate([4,4,3]) {
        cube([width,edge,2],1);
        rotate([0,0,60]) { cube([width,edge,2],1);}
        rotate([0,0,120]) { cube([width,edge,2],1); }
        cylinder(20,3.3/2,3.3/2,center=true,$fn=24);
    }
}
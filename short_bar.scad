difference(){
	union() {
		cube([45,5,3]);
	}
	union() {
		translate([2.5,2.5,-5]) {
			cylinder(10,1,1);
		}
		translate([42.5,2.5,-5]) {
			cylinder(10,1,1);
		}
	}
}

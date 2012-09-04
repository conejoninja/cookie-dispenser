difference(){
	union() {
		cube([85,5,3]);

		translate([85,2.5,0]) {
			cylinder(3,2.5,2.5);
		}
	}

	translate([2.5,2.5,-5]) {
		cylinder(10,1,1);
	}
}

difference() {
	difference() {
		union() {
			rotate([0,0,180-18]) {
				tri(60,54,3);
			}

			rotate([0,180,180-18]) {
				translate([-120,0,-3]) {
					tri(60,36,3);
				}
			}

			translate([0,3,0]) {
				rotate([0,0,180-18]) {
					translate([34,0,0]) {
						cube([25,3,10]);
					}
				}
			}

			translate([0,3,0]) {
				rotate([0,0,180+25.5]) {
					translate([34,0,0]) {
						cube([47,3,10]);
					}
				}
			}

			translate([0,-40,0]) {
				rotate([0,0,180-18]) {
					translate([52,0,0]) {
						cube([10,3,10]);
					}
				}
			}


		}
		union() {
			rotate([0,0,-18]) {
				translate([-100,-61,-2]) {
					cube([80,20,20]);
				}
			}

			rotate([0,0,-18]) {
				translate([-136,-30,-2]) {
					cube([40,40,20]);
				}
			}
			rotate([0,0,-18]) {
				translate([-85,-9,-5]) {
					cylinder(10, 6, 6);
				}
			}
			rotate([0,0,-18]) {
				translate([-78,-9,-5]) {
					cylinder(10, 2.5, 2.5);
				}
			}
		}
	}

	translate([0,0,-3]) {
		cylinder(70, 35.5, 35.5);
	}
}

difference() {
	rotate([0,0,-18]) {
		translate([-85,-9,0]) {
			difference() {
				cylinder(3, 42, 42);
				union() {
					cylinder(3, 35, 35);
					cube([10,10,10]);
				}
			}
		}
	}


	rotate([0,0,-18]) {
		translate([-140,0,-4]) {
			cube([100,40,10]);
		}
	}
}
rotate([0,0,-18]) {
	translate([-120,-6,0]) {
		cube([30,6,3]);
	}
}


module tri(b,c,h) {
	polyhedron( 
		points = [[0,0,0],[b,0,0],[b,c,0],[0,0,h],[b,0,h],[b,c,h]],
		triangles = [[0,1,2], [0,4,1], [1,5,2], [0,2,3],[0,3,4],[1,4,5],[2,5,3],[3,5,4]]
	);
}



difference() {
	difference() {
		difference() {
			cylinder(70, 35.5, 35.5);
			translate([0,0,3]){
				cylinder(70, 32.5, 32.5);
			}
		}
		union() {
			rotate([0,0,270]) {
				translate([-10,0,3]) {
					cube([20,36,7]);
				}
			}
			translate([0,-36,3]) {
				cube([12,72,7]);
			}
			translate([20,-36,3]) {
				cube([10,72,7]);
			}			translate([-15,-36,25]) {
				cube([30,72,70]);
			}
			rotate([0,0,90]) {
				translate([-15,-36,25]) {
					cube([30,72,70]);
				}
			}
		}
	}

	translate([0,0,3]) {
		rotate([0,0,180-18]) {
			tri(40,36,7);
		}
	}
}

			

module tri(b,c,h) {
	polyhedron( 
		points = [[0,0,0],[b,0,0],[b,c,0],[0,0,h],[b,0,h],[b,c,h]],
		triangles = [[0,1,2], [0,4,1], [1,5,2], [0,2,3],[0,3,4],[1,4,5],[2,5,3],[3,5,4]]
	);
}
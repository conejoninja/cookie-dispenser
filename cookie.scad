difference() {
	difference() {
		difference() {
			cylinder(70, 36.5, 36.5);
			translate([0,0,3]){
				cylinder(70, 33.5, 33.5);
			}
		}
		union() {
			rotate([0,0,270]) {
				translate([-10,0,3]) {
					cube([20,50,7]);
				}
			}
			translate([0,-40,3]) {
				cube([12,80,7]);
			}
			translate([20,-40,3]) {
				cube([10,80,7]);
			}
			translate([-15,-40,25]) {
				cube([30,80,70]);
			}
			rotate([0,0,90]) {
				translate([-15,-40,25]) {
					cube([30,80,70]);
				}
			}
		}

		translate([0,0,-5]) {
			rotate([0,0,90]) {
				difference() {
					cylinder(10, 33.5, 33.5);
					translate([-40,0,-5]){
						cube([80,40,20]);
					}
				}
			}
		}


	}

	difference() {
		translate([0,0,3]) {
			rotate([0,0,180-18]) {
				tri(40,36,7);
			}
		}
		translate([0,0,3]) {
			rotate([0,0,180-18]) {
				tri(40,12,7);
			}
		}
	}
}

cylinder(3, 14, 14);



module tri(b,c,h) {
	polyhedron( 
		points = [[0,0,0],[b,0,0],[b,c,0],[0,0,h],[b,0,h],[b,c,h]],
		triangles = [[0,1,2], [0,4,1], [1,5,2], [0,2,3],[0,3,4],[1,4,5],[2,5,3],[3,5,4]]
	);
}
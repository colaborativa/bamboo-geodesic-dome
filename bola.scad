

// ColaborativaGEO strutcap v3
// http://colaborativa.eu
//
// based on DOMEKIT strutcap. Redesinged for using bamboo instead of timber rods
// Units in milimeters


ball_radius = 9.7; //10.15 era demasiado ancho
height = ball_radius*2;


screw_radius = 2;
screw_head_radius = 4.25;
screw_head_height = 3;



module strut_cap() {


	difference() {
		//Main ball
		sphere(r=ball_radius, $fn=64);

		//Inner screw hole
		translate(v=[0,0,-ball_radius]){
			cylinder(r=screw_radius, h=height, $fn=6);
		}

		//Top screw head hole
		translate(v=[0,0,ball_radius-screw_head_height]){
			cylinder(r= screw_head_radius, h=screw_head_height+1, $fn=64);
		}

		//Bottom Base
		translate(v=[0,0,-ball_radius]){
			cylinder(r=ball_radius, h=2, $fn=64);
		}
		//Chaflan
		translate(v=[0,0,5]){
			cylinder(h = 3, r1 = 1.5, r2 = screw_head_radius, $fn=64, center = false);
		}
	}
	
}

// make it!
strut_cap();
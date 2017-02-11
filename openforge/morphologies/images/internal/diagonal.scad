_basis = 25;

module diagonal(x=2, h=2) {
    color("LightGray") {
        difference () {
            union() {
                for (i = [0:x-1]) {
                    for (j = [0:x-1]) {
                        translate([_basis*i+1,_basis*j+1,0]) cube([23,23,4.5]);
                    }
                }
            }
            translate([_basis*x,0,-1]) rotate([0,0,45]) cube([_basis*x*2,_basis*x*2,_basis*h]);
        }
    }

    color("Grey") {
        difference() {
            cube([_basis*x,_basis*x,1]);
            translate([_basis*x,0,-1]) rotate([0,0,45]) cube([_basis*x*2,_basis*x*2,_basis*h]);
        }
        intersection() {
            translate([_basis*x+sqrt(10.2*10.2*2)/2,0,0]) rotate([0,0,90+45]) cube([80,10.2,_basis*x-6]);
            cube([_basis*x,_basis*x,_basis*h]);
        }
    }
}

diagonal();

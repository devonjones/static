_basis = 25;

module diagonal_square(x=2, h=2) {
    color("LightGray") {
        for (i = [0:x-1]) {
            for (j = [0:x-1]) {
                translate([_basis*i+1,_basis*j+1,0]) cube([23,23,4.5]);
            }
        }
    }

    color("Grey") {
        cube([_basis*x,_basis*x,1]);
        intersection() {
            translate([_basis*x+sqrt(10.2*10.2*2)/2,0,0]) rotate([0,0,90+45]) cube([80,10.2,_basis*x-6]);
            cube([_basis*x,_basis*x,_basis*h]);
        }
    }
}

diagonal_square();
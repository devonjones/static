_basis = 25;

module dead_end(x=2, y=2, h=2, base=false) {
    base_buffer = base ? 6 : 0;
    translate([0,0,base_buffer]) color("LightGray") {
        for (i = [0:x-1]) {
            for (j = [0:y-1]) {
                translate([_basis*i+1,_basis*j+1,0]) cube([23,23,4.5]);
            }
        }
    }

    color("Grey") {
        cube([_basis*x,_basis*y,1+base_buffer]);
        translate([0,_basis*y-10.2,0]) cube([_basis*x,10.2,_basis*h-6+base_buffer]);
        translate([0,0,0]) cube([10.2,_basis*y,_basis*h-6+base_buffer]);
        translate([_basis*x-10.2,0,0]) cube([10.2,_basis*y,_basis*h-6+base_buffer]);
    }
}

dead_end(x=2, y=2, h=2, base=false);

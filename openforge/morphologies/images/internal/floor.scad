_basis = 25;

module floor_tile(x=2, y=2, base=false) {
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
    }
}

floor_tile(x=2, y=2, base=false);

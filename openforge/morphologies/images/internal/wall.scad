_basis = 25; 

module wall(x=2, y=2, h=2, wall=10.2, base=false, external=false) {
    base_buffer = base ? 6 : 0;
    translate([0,0,base_buffer]) color("LightGray") {
        for (i = [0:x-1]) {
            for (j = [0:y-1]) {
                translate([_basis*i+1,_basis*j+1,0]) cube([23,23,4.5]);
            }
        }
    }
    color("Grey") {
        sub = external ? 0 : wall;
        cube([_basis*x,_basis*y,1+base_buffer]);
        translate([0,_basis*y-sub,0]) cube([_basis*x,wall,_basis*h-6+base_buffer]);
    }
}

module construction_kit_wall(x=2, y=2, h=2) {
    color("Grey") {
        translate([0,_basis*y-10.2,0]) cube([_basis*x,10.2,_basis*h-6]);
    }
}

module construction_kit_corner_wall(x=2, y=2, h=2) {
    color("Grey") {
        translate([0,_basis*y-10.2,0]) cube([_basis*x-10.2,10.2,_basis*h-6]);
    }
}
//wall(x=2, y=2, h=2, wall=10.2, base=false, external=false);
//construction_kit_wall(x=2, y=2, h=2);
//construction_kit_corner_wall(x=2, y=2, h=1);
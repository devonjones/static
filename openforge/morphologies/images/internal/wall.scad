_basis = 25; 

module wall(x=2, y=2, h=2) {
    color("LightGray") {
        for (i = [0:x-1]) {
            for (j = [0:y-1]) {
                translate([_basis*i+1,_basis*j+1,0]) cube([23,23,4.5]);
            }
        }
    }
    color("Grey") {
        cube([_basis*x,_basis*y,1]);
        translate([0,_basis*y-10.2,0]) cube([_basis*x,10.2,_basis*h-6]);
    }
}

wall(x=2, y=2);
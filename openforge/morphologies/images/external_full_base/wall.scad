//translate([0,0,0]) color("LightGray") square([25,25],false);
//translate([25,0,0]) color("LightGray") square([25,25],false);
//translate([0,25,0]) color("LightGray") square([25,25],false);
//translate([25,25,0]) color("LightGray") square([25,25],false);

scale([2,2,2]) {
    //translate([0,50,0]) color("Gray") square([50,12.5],false);
    //translate([50,0,0]) color("Gray") square([12.5,50],false);
}

color("LightGray") {
    translate([1,1,0]) cube([23,23,6+4.5]);
    translate([25+1,1,0]) cube([23,23,6+4.5]);
    translate([1,25+1,0]) cube([23,23,6+4.5]);
    translate([25+1,25+1,0]) cube([23,23,6+4.5]);
}
color("Grey") {
    cube([50,50,7]);
    translate([0,50,0]) cube([50,12.5,50]);
}
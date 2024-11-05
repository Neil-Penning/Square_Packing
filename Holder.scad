$fn=64;
unit_size = 25.4;
s = 4.6755;
tolerance_factor = 1.005;
bottom_height = 0;
side_padding = 5;

outer_fillet_radius = 0.75 * side_padding;
difference() {
    minkowski() {
        linear_extrude(bottom_height + unit_size - 2*outer_fillet_radius) {
            square(unit_size * s + 2*side_padding - 2*outer_fillet_radius, center=true);
        }
        sphere(outer_fillet_radius);
    }
    translate([0,0,bottom_height])
        linear_extrude(bottom_height + unit_size)
        square(unit_size * s * tolerance_factor, center=true);
}

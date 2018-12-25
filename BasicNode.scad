PiResPoly = 64; // Render Quality

PiNodeDim = 35;  // Dimension mm
PiTubeDia = 20; // Tube Diameter mm

PiScrewDia = 3; // M3 = 2.9 mm
PiBoltDia = 5; // M3 = 5mm
PiBoltDim = 5; // M3 = 5mm
PiScrewStep = 12; // Screw Step


difference() {
    
intersection(pipi) {
        cube(PiNodeDim, center=true);
        sphere(PiNodeDim / 1.45); $fn=PiResPoly;}

        rotate([90,0,0])
        cylinder (h = PiNodeDim + 5, r=PiTubeDia / 2, center = true, $fn=PiResPoly);
        
        
        
        rotate([0,0,90])
        translate([-PiScrewStep, -PiScrewStep, 0])
        cylinder (h = PiNodeDim + 5, r=PiScrewDia / 2, center = true, $fn=PiResPoly);
        translate([-PiScrewStep, -PiScrewStep, (PiNodeDim / 2)])
        cylinder (h = PiBoltDim, r=PiBoltDia / 2, center = true, $fn=PiResPoly);
        translate([-PiScrewStep, -PiScrewStep, -(PiNodeDim / 2)])
        cylinder (h = PiBoltDim, r=PiBoltDia / 2, center = true, $fn=PiResPoly);
        
        rotate([0,0,90])
        translate([PiScrewStep, -PiScrewStep, 0])
        cylinder (h = PiNodeDim + 5, r=PiScrewDia / 2, center = true, $fn=PiResPoly);
        translate([PiScrewStep, -PiScrewStep, (PiNodeDim / 2)])
        cylinder (h = PiBoltDim, r=PiBoltDia / 2, center = true, $fn=PiResPoly);
        translate([PiScrewStep, -PiScrewStep, -(PiNodeDim / 2)])
        cylinder (h = PiBoltDim, r=PiBoltDia / 2, center = true, $fn=PiResPoly);
        
        rotate([0,0,90])
        translate([PiScrewStep, PiScrewStep, 0])
        cylinder (h = PiNodeDim + 5, r=PiScrewDia / 2, center = true, $fn=PiResPoly);
        translate([PiScrewStep, PiScrewStep, (PiNodeDim / 2)])
        cylinder (h = PiBoltDim, r=PiBoltDia / 2, center = true, $fn=PiResPoly);
        translate([PiScrewStep, PiScrewStep, -(PiNodeDim / 2)])
        cylinder (h = PiBoltDim, r=PiBoltDia / 2, center = true, $fn=PiResPoly);
        
        rotate([0,0,90])
        translate([-PiScrewStep, PiScrewStep, 0])
        cylinder (h = PiNodeDim + 5, r=PiScrewDia / 2, center = true, $fn=PiResPoly);
        translate([-PiScrewStep, PiScrewStep, (PiNodeDim / 2)])
        cylinder (h = PiBoltDim, r=PiBoltDia / 2, center = true, $fn=PiResPoly);
        translate([-PiScrewStep, PiScrewStep, -(PiNodeDim / 2)])
        cylinder (h = PiBoltDim, r=PiBoltDia / 2, center = true, $fn=PiResPoly);
    }

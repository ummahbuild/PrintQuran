// PrintQuran v0.2 REFERENCE fit-study model — NOT tooling ready.
// Units: mm
$fn=48;
W=340; D=300; H=390; wall=1.5; corner=18;
slot_w=145; slot_h=10;
display_w=110; display_h=72;
printer_w=92; printer_h=32;

module rounded_box(w,d,h,r){
  hull(){ for(x=[r,w-r]) for(y=[r,d-r]) translate([x,y,0]) cylinder(h=h,r=r); }
}
module shell(){
 difference(){
  rounded_box(W,D,H,corner);
  translate([wall,wall,wall]) rounded_box(W-2*wall,D-2*wall,H-wall,corner-wall);
  // front display opening
  translate([(W-display_w)/2,-1,220]) cube([display_w,wall+3,display_h]);
  // printer exit
  translate([(W-printer_w)/2,-1,145]) cube([printer_w,wall+3,printer_h]);
  // top donation slot
  translate([(W-slot_w)/2,70,H-4]) cube([slot_w,slot_h,8]);
 }
}
module divider(){ translate([wall,30,120]) cube([W-2*wall,D-60,1.5]); }
module cash_vault(){
 translate([55,70,15]) difference(){ cube([230,190,95]); translate([2,2,2]) cube([226,186,95]); }
}
color("#171717") shell();
color("#777777") divider();
color("#444444") cash_vault();

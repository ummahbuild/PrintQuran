// REFERENCE top bezel for fit/visualization only.
$fn=48;
W=190; D=70; T=4; R=9; slot_w=145; slot_h=10;
module rr(w,d,h,r){ hull(){for(x=[r,w-r])for(y=[r,d-r])translate([x,y,0])cylinder(h=h,r=r);} }
difference(){ rr(W,D,T,R); translate([(W-slot_w)/2,(D-slot_h)/2,-1]) rr(slot_w,slot_h,T+2,slot_h/2); }

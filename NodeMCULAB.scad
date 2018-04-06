//NodeMCULAB
//Sergio López González 2018
//sergiolapria1975@gmail.com

module screws(){
    for (j=[0:1]){
        translate([0,25/2-25*j,0])
    for (i=[0:1]){
        translate([52/2-52*i,0,0]) cylinder(h=61,r=3/2,$fn=80,center=true);
    }
}
}
module board_NodeMCU(){
    cube([60,60,2],center=true);
    translate([1.5,2.5,7]) 
    union(){
        cube([57,31,14],center=true);
        screws();
    }
}

module bisagra(){
    difference(){
        union(){
            cube([14,6,10],center=true);
            translate([7,0,0]) cylinder(h=10,r=6/2,$fn=80,center=true);
        }
        translate([7,0,0]) cylinder(h=11,r=3/2,$fn=80,center=true);
    }
}
module bisagra1(){
        difference(){
        union(){
            cube([14,6,8],center=true);
            translate([7,0,0]) cylinder(h=8,r=6/2,$fn=80,center=true);
        }
        translate([7,0,0]) cylinder(h=11,r=3/2,$fn=80,center=true);
    }
}
module bread(){
    cube([84,56,9],center=true);
}

//////////////////////////Diferentes partes para imprimir
module tapa_nodeMCU(){
    difference(){
        cube([100,100,3],center=true);
        translate([0,0,1]) board_NodeMCU();
        for(h=[0:1]){
                translate([0,45-90*h,0]) 
            for(k=[0:1]){
                translate([45-90*k,0,0]) cylinder(h=20,r=3/2,$fn=80,center=true);
            }
        }
        }
        
    translate([0,0,0]) 
    union(){
        for(i=[-1:1]){
        translate([20.5*i,-47,8]) rotate([0,-90,0]) bisagra();
    }

}
}
module tapa_bread(){
      difference(){
        cube([100,100,3],center=true);
        //translate([0,5,5]) bread();
        for(h=[0:1]){
                translate([0,45-90*h,0]) 
            for(k=[0:1]){
                translate([45-90*k,0,0]) cylinder(h=20,r=3/2,$fn=80,center=true);

            }
        }
        for(j=[0:1]){
            translate([35-70*j,-30,0]) union(){
                cylinder(h=20,r=3/2,$fn=80,center=true);
                translate([0,0,-5]) cylinder(h=10,r=6/2,$fn=80,center=true);
                }
            translate([35-70*j,-40,0]) union(){
                cylinder(h=20,r=3/2,$fn=80,center=true);
                translate([0,0,-5]) cylinder(h=10,r=6/2,$fn=80,center=true);
            }
        }
        }
                for(i=[-1:1]){
        translate([20.5*i,47.5,8]) rotate([0,-90,0]) bisagra();
    }
}  

module caja(){
    difference(){
        cube([100,100,20],center=true);
        translate([0,2,2]) cube([85,96,20],center=true);
        for(h=[0:1]){
                translate([0,45-90*h,0]) 
            for(k=[0:1]){
                translate([45-90*k,0,0]) cylinder(h=20,r=3/2,$fn=80,center=true);
            }
        }
        }
}
module cajon(){
    difference(){
        cube([83.5,96,17],center=true);
        for(h=[0:1]){
            translate([-42*h+42/2,0,2]) cube([35,92,17],center=true);
            }
        translate([0,25/2,7.5]) cube([78,84,2],center=true);
        }
        translate([0,-103/2,0]) cube([10,10,17],center=true);
}
module grapa(){
  difference(){
      union(){
        cube([8,5,8],center=true);
        translate([0,2.5,5]) cube([8,10,2],center=true);
      }
     cylinder(h=20,r=3/2,$fn=80,center=true);
  }
}

module tapa_ttgo(){
    difference(){
        cube([100,100,3],center=true);
        translate([0,-10,1]) 
        union(){
            cube([70,50,2],center=true);
            for(h=[0:1]){
                translate([66/2-66*h,0])
            for(j=[0:1]){
                translate([0,46/2-46*j,0]) 
                union(){
                    cylinder(h=10,r=2/2,$fn=80,center=true);
                    translate([0,0,-7]) cylinder(h=10,r=4/2,$fn=80,center=true);
            }
        }
        }
        }
                for(g=[0:1]){
                translate([0,45-90*g,0]) 
            for(k=[0:1]){
                translate([45-90*k,0,0]) cylinder(h=20,r=3/2,$fn=80,center=true);
            }
        }
        translate([30,0,0]) cylinder(h=20,r=10/2,$fn=80,center=true);
     }
    
    translate([0,0,0]) 
    union(){
        for(i=[-1:1]){
        translate([20.5*i,-47,8]) rotate([0,-90,0]) bisagra();
    }
    translate([35,35,8])
    rotate([90,-90,180]) bisagra();
}
}
module tapa_bread2(){
    difference(){
        union(){
            cube([165,100,3],center=true);
            translate([0,0,0]) 
            union(){
                for(i=[-1:1]){
                translate([20.5*i,-47,8]) rotate([0,-90,0]) bisagra();
                }
            }
        }
            for(g=[0:1]){
                translate([0,45-90*g,0]) 
                for(k=[0:1]){
                translate([155/2-155*k,0,0]) cylinder(h=20,r=3/2,$fn=80,center=true);
            }
            
        }
    
}
}
module brazo(){
    difference(){
        union(){
            cube([30,6,15],center=true);
            translate([15,0,0]) cylinder(h=15,r=6/2,$fn=80,center=true);
            translate([-12.5,-7,0]) 
            difference(){
                cube([5,20,15],center=true);
                translate([0,-4,0]) rotate([0,90,0]) 
                union(){
                    cylinder(h=20,r=7/2,$fn=80,center=true);
                    translate([0,0,5]) cylinder(h=10,r=12/2,$fn=80,center=true);
                    
                }
        }
    }
        translate([15,0,0]) cylinder(h=34,r=3/2,$fn=80,center=true);
        translate([13,0,0]) 
        bisagra();
        }
}
module refuerzo_lateral(){
        difference(){
        cube([100,100,45],center=true);
        for(g=[0:1]){
                translate([0,45-90*g,0]) 
        for(k=[0:1]){
                translate([45-90*k,0,0]) cylinder(h=60,r=3/2,$fn=80,center=true);
            }
        }
        translate([0,-10,0]) cube([110,100,46],center=true);
        translate([0,-2,2]) cube([95,100,45],center=true);
        }
}
module intermedio_bisagra(){
    rotate([90,180,-90]) bisagra1();
    translate([0,-11.5,0]) rotate([90,0,-90]) bisagra1();
    translate([10,-5,0]) cube([30,15,6],center=true);
    translate([20.5,0,0])
    union(){
            rotate([90,180,-90]) bisagra1();
            translate([0,-11.5,0]) rotate([90,0,-90]) bisagra1();
    }
}

translate([80,0,0]) brazo();
translate([0,0,0]) tapa_ttgo();
translate([-110,0,0]) refuerzo_lateral();
translate([0,-110,0]) tapa_bread();
translate([0,110,0]) tapa_nodeMCU();
translate([0,-220,0]) caja();//x2
translate([150,0,0]) cajon();//x2
translate([-100,0,0])grapa();//x4
translate([-100,100,0]) intermedio_bisagra();

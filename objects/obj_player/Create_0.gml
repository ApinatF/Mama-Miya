hSpeed = 0 ;
vSpeed = 0 ;
vGravity = 0.5 ;


walkSpeed = 6 ;
jumpS = 15;
canJamp = 0;

hascontrol = true ;
myGun = obj_EQgun ;

//controller = 0 ;

instance_create_layer(x, y, "ins_Gun", myGun) ;
newGun = true ;
playerHp = 3;
flash = 0;
hitfrom = 0;

isDead = false;

Immortal = true
alarm_set(0,180);





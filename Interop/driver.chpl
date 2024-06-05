use CTypes;

require "rebound.h";
require "tree.h";

extern record reb_treecell {
  var x: real;
  var y: real;
  var z: real;
  var w: real;
  var m: real;
  var mx: real;
  var my: real;
  var mz: real;
  var oct : c_array(c_ptr(reb_treecell),8);
  var pt: int;
}

extern record reb_particle {
  var x: real;
  var y: real;
  var z: real;
  var vx: real;
  var vy: real;
  var vz: real;
  var ax: real;
  var ay: real;
  var az: real;
  var m: real;
  var r: real;
  var last_collision: real;
  var c: c_ptr(reb_treecell);
}

extern proc reb_particle_distance(p1: c_ptr(reb_particle), p2: c_ptr(reb_particle)): real;

proc part0() {
  var treeCell = new reb_treecell();
  var p1 = new reb_particle(0,0,0,0,0,0,0,0,0,0,0,0,c_ptrTo(treeCell));
  var p2 = new reb_particle(2,0,0,0,0,0,0,0,0,0,0,0,c_ptrTo(treeCell));
  var d = reb_particle_distance(c_ptrTo(p1), c_ptrTo(p2));
  writeln("Distance: ", d);
}

proc main() {
  part0();
  
}
use CTypes;
use Bindings;

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
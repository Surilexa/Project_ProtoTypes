/// @description Insert description here
// You can write your code in this editor
/*with (E_node) {
    instance_name = "node_" + string(count);
	show_debug_message("node named ");
    count += 1;
}*/

with(E_node){
	array_push(global.electricityNodes, id);
}
array_sort(global.electricityNodes, true);

checkConnection();


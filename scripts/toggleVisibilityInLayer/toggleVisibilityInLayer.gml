// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function toggleVisibilityInLayer(layerName, isVisible){
	var inst_array = instance(layerName);
	var count = 0;
	for (var i = 0; i < array_length(inst_array); i++) {
		var inst = inst_array[i];
		if (instance_exists(inst)) {
			with (inst) {
				count++;
				show_debug_message("This has happened " + string(count) + "times "+ string(inst.id) + "  "+ string(isVisible));
				inst.visible = isVisible;
			}
		}
	}
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkConnection(){
	var node1 = global.electricityNodes[0];
	var t = false;
	var isCorrectRot1 = false;
	if(array_length(global.electricityNodes) > 1){
		var node2 = global.electricityNodes[1];
		with (node1){
			with (node2){
				for(var b = 0; b < array_length(node2.nodeRotation); b++){
					for(var c = 0; c < array_length(node1.nodeRotation); c++){
						show_debug_message(string(node2.nodeRotation[c]) + string(node1.prevRotationNeeded))
						if(node2.nodeRotation[c] == node1.prevRotationNeeded){
							isCorrectRot1 = true;
						}
					}
					if(node1.prevRotationNeeded == node2.nodeRotation[b]){
						t = true;
					}
					if(t && isCorrectRot1){
						node1.isConnected = true;
					}
					else{
						node1.isConnected = false;
					}
				}
			}
		}
	}
	for (var i = 1; i < array_length(global.electricityNodes); i++) {
		var isCorrectPrev = false;
		var isCorrectRot = false;
		var current = global.electricityNodes[i];
		//show_debug_message(current);
		var prev = global.electricityNodes[i-1];
		//show_debug_message(prev);
			
		if (instance_exists(current) && instance_exists(prev)) {
			with(current)
			{
				with(prev){
					for(var b = 0; b < array_length(prev.nodeRotation); b++){
						if(current.prevRotationNeeded == prev.nodeRotation[b]){
							isCorrectPrev = true;
						}
					}
					for(var c = 0; c < array_length(current.nodeRotation); c++){
						var tempNum = current.prevRotationNeeded+2;
						if(tempNum > 3){
							tempNum-=4;
						}
						if(current.nodeRotation[c] == tempNum){
							isCorrectRot = true;
						}
					}
					if(isCorrectPrev && prev.isConnected && isCorrectRot){
						current.isConnected = true;
					}
					else{
						current.isConnected = false;
					}
				}
			}
		}
	}
}
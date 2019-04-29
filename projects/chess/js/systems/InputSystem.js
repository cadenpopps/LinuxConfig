InputSystem.prototype = Object.create(System.prototype);
function InputSystem(){
	System.call(this);

	this.acceptedCommands = [command_init];

	let mouse_input_square = -1;

	this.run = function(engine){
		if(mouse_input_square >= 0){
			engine.sendEvent({eventID: event_mouse_input, square: mouse_input_square});
			mouse_input_square = -1;
		}
	}

	this.handleCommand = function(engine, command){
		switch(command.commandID){
		}
	}

	$("#board").click(function(e){
		mouse_input_square = getSquareFromMouse(e.offsetX, e.offsetY, square_size);
	});
}




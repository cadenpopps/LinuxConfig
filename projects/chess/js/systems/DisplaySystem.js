DisplaySystem.prototype = Object.create(System.prototype);
function DisplaySystem(){
	System.call(this);

	this.acceptedCommands = [command_init];

	this.run = function(){
		background(0,0,0);
		drawBoard();	
		drawPieces(this.pieces);
	}

	let drawPieces = function(pieces){
		for(let p of pieces){
			let pos = getSquareFromID(p.position.position);
			if(p.color.color == color_white){ fill(255); }
			else if(p.color.color == color_black){ fill(0); }
			ellipse(pos.rank * square_size + (square_size/2), (7 - pos.file) * square_size +  (square_size/2), square_size/3, square_size/3);
		}
	}

	let drawBoard = function(){
		for(let i = 0; i < 8; i++){
			for(let j = 0; j < 8; j++){
				if((i + j) % 2 == 1){ fill(220, 220, 240); }
				else{ fill(25, 30, 50); }
				rect(i * square_size, (7-j) * square_size, square_size, square_size);

				if((i + j) % 2 == 1){ fill(25, 30, 50); }
				else{ fill(220, 220, 240); }
				text(i*BOARD_SIZE + j, i * square_size, (7-j) * square_size + 10, square_size, square_size);
			}
		}
	}

	this.handleCommand = function(engine, command){
		switch(command.commandID){
			case command_init:
				resize();
				break;
		}
	}

	let resize = function(){
		square_size = width / 8;
	}
}




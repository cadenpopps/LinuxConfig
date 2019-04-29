BoardSystem.prototype = Object.create(System.prototype);
function BoardSystem(){
	System.call(this);

	this.acceptedCommands = [command_init];


	this.handleCommand = function(engine, command){
		switch(command.commandID){
			case command_init:
				init_board(engine);
				break;
		}
	}


	let init_board = function(engine){
		genPieces(engine, color_white);
		// genPieces(engine, color_black);
	}

	let genPieces = function(engine, color){
		switch(color){
			case color_white:
				for(let x = 0; x < BOARD_SIZE; x++){
					engine.updatePieces(new Pawn(getSquareID(x, rank_2), color));
				}
				engine.updatePieces(new Rook(getSquareID(file_A, rank_1), color));
				engine.updatePieces(new Rook(getSquareID(file_H, rank_1), color));
				engine.updatePieces(new Knight(getSquareID(file_B, rank_1), color));
				engine.updatePieces(new Knight(getSquareID(file_G, rank_1), color));
				engine.updatePieces(new Bishop(getSquareID(file_C, rank_1), color));
				engine.updatePieces(new Bishop(getSquareID(file_F, rank_1), color));
				engine.updatePieces(new Queen(getSquareID(file_D, rank_4), color));
				engine.updatePieces(new King(getSquareID(file_E, rank_1), color));
				break;
			case color_black:
				for(let x = 0; x < BOARD_SIZE; x++){
					engine.updatePieces(new Pawn(getSquareID(x, rank_8), color));
				}
				engine.updatePieces(new Rook(getSquareID(file_A, rank_8), color));
				engine.updatePieces(new Rook(getSquareID(file_H, rank_8), color));
				engine.updatePieces(new Knight(getSquareID(file_B, rank_8), color));
				engine.updatePieces(new Knight(getSquareID(file_G, rank_8), color));
				engine.updatePieces(new Bishop(getSquareID(file_C, rank_8), color));
				engine.updatePieces(new Bishop(getSquareID(file_F, rank_8), color));
				engine.updatePieces(new Queen(getSquareID(file_D, rank_8), color));
				engine.updatePieces(new King(getSquareID(file_E, rank_8), color));
				break;
		}
	}
}

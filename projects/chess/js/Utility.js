
function getSquareID(file, rank){
	return (file * BOARD_SIZE) + rank;
}

function getSquareFromID(position){
	return {rank: floor(position / BOARD_SIZE), file: position % BOARD_SIZE};
}

function getSquareFromMouse(mouseX, mouseY, square_size){
	return getSquareID(floor(mouseX / square_size), floor((width - mouseY) / square_size));
}

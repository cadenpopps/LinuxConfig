//Constants
const BOARD_SIZE = 8, SQUARE_BLOCKED = 0, SQUARE_MOVABLE = 1, SQUARE_CAPTUREABLE = 2;
var square_size = 32;

//Commands
const command_init = 0, command_clear_objects = 5;

//Events
const event_game_start = 0, event_mouse_input = 1;

//Actions
const action_none = -1;

//Components
const component_position = 0, component_color = 1, component_moves = 2;

//Colors
const color_white = 0, color_black = 1; 

//Squares
const 
A1 = 0, B1 = 1, C1 = 2, D1 = 3, E1 = 4, F1 = 5, G1 = 6, H1 = 7, A2 = 8, B2 = 9, C2 = 10, D2 = 11, E2 = 12, F2 = 13, G2 = 14, H2 = 15, A3 = 16, B3 = 17, C3 = 18, D3 = 19, E3 = 20, F3 = 21, G3 = 22, H3 = 23, A4 = 24, B4 = 25, C4 = 26, D4 = 27, E4 = 28, F4 = 29, G4 = 30, H4 = 31, A5 = 32, B5 = 33, C5 = 34, D5 = 35, E5 = 36, F5 = 37, G5 = 38, H5 = 39, A6 = 40, B6 = 41, C6 = 42, D6 = 43, E6 = 44, F6 = 45, G6 = 46, H6 = 47, A7 = 48, B7 = 49, C7 = 50, D7 = 51, E7 = 52, F7 = 53, G7 = 54, H7 = 55, A8 = 56, B8 = 57, C8 = 58, D8 = 59, E8 = 60, F8 = 61, G8 = 62, H8 = 63; 

//Files
const file_A = 0, file_B = 1, file_C = 2, file_D = 3, file_E = 4, file_F = 5, file_G = 6, file_H = 7; 

//Ranks
const rank_1 = 0, rank_2 = 1, rank_3 = 2, rank_4 = 3, rank_5 = 4, rank_6 = 5, rank_7 = 6, rank_8 = 7; 

//Pieces
const piece_none = 0, piece_pawn = 1, piece_knight = 2, piece_bishop = 3, piece_rook = 4, piece_queen = 5, piece_king = 6, piece_non_pawn = 10;

//Moves
const moves_pawn_capture = 1, moves_pawn_move = 2, moves_knight = 3, moves_straight = 4, moves_diagonal = 5, moves_king = 6 ; 

//Starting ranks
const starting_rank = []; 
starting_rank[color_white] = [];
starting_rank[color_white][piece_pawn] = rank_2;
starting_rank[color_white][piece_non_pawn] = rank_1;
starting_rank[color_black] = [];
starting_rank[color_black][piece_pawn] = rank_7;
starting_rank[color_black][piece_non_pawn] = rank_8;



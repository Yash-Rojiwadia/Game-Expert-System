% Video game knowledge base
game("Uncharted 4: A Thief's End", adventure, playstation, hard).
game("Journey", adventure, playstation, medium).
game("LittleBigPlanet 3", adventure, playstation, easy).
game("The Legend of Zelda: Breath of the Wild", adventure, nintendo, hard).
game("Super Mario Odyssey", adventure, nintendo, medium).
game("Captain Toad: Treasure Tracker", adventure, nintendo, easy).
game("The Witcher 3: Wild Hunt", adventure, pc, hard).
game("Firewatch", adventure, pc, medium).
game("Oxenfree", adventure, pc, easy).
game("Bloodborne", action, playstation, hard).
game("Horizon Zero Dawn", action, playstation, medium).
game("Knack II", action, playstation, easy).
game("Bayonetta 2", action, nintendo, hard).
game("Splatoon 2", action, nintendo, medium).
game("Arms", action, nintendo, easy).
game("Dark Souls III", action, pc, hard).
game("Just Cause 3", action, pc, medium).
game("Shadow Warrior 2", action, pc, easy).
game("Bloodborne", rpg, playstation, hard).
game("Persona 5", rpg, playstation, medium).
game("Ni no Kuni II: Revenant Kingdom", rpg, playstation, easy).
game("Xenoblade Chronicles 2", rpg, nintendo, hard).
game("Fire Emblem: Three Houses", rpg, nintendo, medium).
game("Octopath Traveler", rpg, nintendo, easy).
game("Divinity: Original Sin II", rpg, pc, hard).
game("The Elder Scrolls V: Skyrim", rpg, pc, medium).
game("South Park: The Stick of Truth", rpg, pc, easy).
game("Red Dead Redemption 2", open_world, playstation, hard).
game("Spider-Man", open_world, playstation, medium).
game("Infamous: Second Son", open_world, playstation, easy).
game("The Legend of Zelda: Breath of the Wild", open_world, nintendo, hard).
game("Super Mario Odyssey", open_world, nintendo, medium).
game("Yonder: The Cloud Catcher Chronicles", open_world, nintendo, easy).
game("Grand Theft Auto V", open_world, pc, hard).
game("Assassin's Creed Odyssey", open_world, pc, medium).
game("Minecraft", open_world, pc, easy).
game("Doom Eternal", fps, playstation, hard).
game("Titanfall 2", fps, playstation, medium).
game("Killzone: Shadow Fall", fps, playstation, easy).
game("Doom (2016)", fps, nintendo, hard).
game("Splatoon 2", fps, nintendo, medium).
game("Sniper Elite III", fps, nintendo, easy).
game("Doom Eternal", fps, pc, hard).
game("Bioshock Infinite", fps, pc, medium).
game("Borderlands 2", fps, pc, easy).
game("Gran Turismo Sport", simulation, playstation, hard).
game("Cities: Skylines", simulation, playstation, medium).
game("Everybody's Golf", simulation, playstation, easy).
game("Animal Crossing: New Horizons", simulation, nintendo, hard).
game("Mario Kart 8 Deluxe", simulation, nintendo, medium).
game("Harvest Moon: Light of Hope", simulation, nintendo, easy).
game("X-Plane 11", simulation, pc, hard).
game("Euro Truck Simulator 2", simulation, pc, medium).
game("The Sims 4", simulation, pc, easy).

recommend(Games) :-
    platform(Platform),
    genre(Genre),
    difficulty(Difficulty),
    game(Game, Genre, Platform, Difficulty),
    Games = [Game | Rest],
    print_game_list(Rest).

print_game_list([]).
print_game_list([H|T]) :-
    write(H), nl,
    print_game_list(T).


platform(Platform) :-
    write("What platform do you prefer? (nintendo, playstation, pc)"),nl,
    repeat,
    read(Platform),
    member(Platform, [nintendo, playstation, pc]),
    !.

genre(Genre) :-
    write("What genre do you prefer? (adventure, action, rpg, open_world, fps, simulation)"),nl,
    repeat,
	read(Genre),
    member(Genre, [adventure, action, rpg, open_world, fps, simulation]),
    !.

difficulty(Difficulty) :-
    write("What difficulty level do you prefer? (easy, medium, hard)"),nl,
    repeat,
    read(Difficulty),
    member(Difficulty, [easy, medium, hard]),
    !.

% Sample Query: recommend(Games).
create database if not exists `GameBD`;
Use `GameBD`;

create table if not exists `jogos`(
	_ID int not null auto_increment,
    Nome varchar(250) not null,
    Plataforms varchar(250) DEFAULT null,
    ClassificacaoIndicativa varchar(65) DEFAULT null,
    Modes varchar(250) DEFAULT null,
    Generos varchar(250) DEFAULT null,
    primary key(_ID)
);
	
    
insert into `jogos` values  (01,"Call of Dunty Black OPS","PlayStation 4, Xbox One, Microsoft Windowns","18","Single-Player, Multiplayer","First-person, Battle Royale");
insert into `jogos` values  (02,"Days Gone","PlayStation 4","16","Single-Player","Sobrevivência, Ação, Aventura"),
							(03,"Spider - Man","PlayStation 4","12","Single-Player","Ação,Aventura"),
                            (04,"Detroit Become Human","PlayStation 4, Microsoft Windows","16","Single-Player","Drama,Interativo,Ação,Aventura"),
                            (05,"Uncharted 4: A Thirfs End","PlayStation 4","14","Single-Player, Multiplayer","Ação,Aventura"),
                            (06,"Undertale","Microsotf Windowns, Linux, Mac OS X, PlayStation 4,Nintendo Switch","10","Single-Player","RPG,Puzzels"),
                            (07,"Stardew Vallery","Microsoft Windows, Mac OS X, Linux, PlayStation 4, Nintendo Switch, Xbox One, ISO,Android","Livre","Sigle-Player, Multiplayer","Simulação, RPG");

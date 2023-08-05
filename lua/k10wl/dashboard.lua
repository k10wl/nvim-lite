require('dashboard').setup {
  disable_move = true,
  theme = "doom",
  config = {
    header = {
      "",
      "",
      "",
      "              ░       ┌              ┌╔░░═               ┌┌     ┌░              ",
      "              └░  ═┌┌┌╒░░═══░░ ═╦╤┌   ╦╠╣╛   ┌═══ ┌╔╤═╔░╦═┌┌┌┌  └               ",
      "                ░╚░░┌┌╓╔░└┌ └░═░░╩╚╚╦┌    ┌╗░░╚▒░┌╙░┌└└░░╓┌░░╚░                 ",
      "                    ┌══└   └  └╙═╔░╙╝▒╔ ┌═╙╚╙░╓═░  └└┌ ┌└═┌┌                    ",
      "                  ╒└              └╗╕╙╔ ┌░ ╓═               └╕                  ",
      "                ╒                    ╤ ╕╒ ═                   └                 ",
      "               ╒                      ╚░┌╙┌                    └                ",
      "              ┌                         ╩                       ╒               ",
      "              ╒          ┌╔░░═         ║║         ┌╔░░═         ║               ",
      "              ╚           ╦╠╣╛         ║║          ╦╠╣╛         ╒               ",
      "               ╔                       ╩╩                       ╙               ",
      "               ┌═                    ╔└  └╕                   ┌░                ",
      "                 └╓                ╔╦░    ╠░                 ═└                 ",
      "                   ░═ ┌    ┌  ┌┌╓═░░░╠    ╡╔╦▒═┌┌    ┌   ╔╒═╙                   ",
      "                ┌┌   ┌  ░░░═░░╘░╦░▒└░═   ░═░ ╠ ╦┌░░╒░▒└░  ┌╘═                   ",
      "               ┌░═░░  ┌╗╙▒╔═░░░░╠╓╔╕▐┌    ┌╔═╦░▒╔▒░╘═╔░└═    └═ ┌               ",
      "             ┌╓  ┌╛┌╔╪░┌╚ ╔╩░┌└░╡╔░╣▒╣╗ ┌╣╣╬▒╚╦░└░ ╗░ └░╔▒╓╔ ╞  ═┌              ",
      "            ┌░ ┌╒░ ║╝╩╔▒░┌╣▌║▒ ╗▒╣▒╙▒░░░┌╠╠░╠╣╣▒╤┌╣╬╠╦ ╚╚╬╩╝▒ ╪ ┌└═             ",
      "              ┌░╩ ┌╠▒╓░ ▒ ╣░░╚╦╚╠░╠▒║▒╚▒└╚║▒╩╬╠░╧╗╩░░║ ╡└╚╠╗░░ ╦   ╒            ",
      "            ┌═ ╒░ ╚╩░║░┌╙┐╔╣▒╦═╠╣╬╣▒═╔╔░┌╦░╩╣╬╬║▒░╔▒▒░╔ ╒╚╣╩╚╡ ╚  ═             ",
      "           ┌   ╡  ╔╩╗░┌╔╦║▒╣▒╚░░╠╠╚╧╔╚░░░╚░┌╩╚╩╚╒▐╬╠╬╣░┌░╦╔╬╝░  ▒  ┌            ",
      "             ┌┌░  └░╙░ ▐╚╣▒╚╡░┌╦╔╣▒╕▐ └  ░╔ ║╬╩┌░░░░╙ ═░░╚╩╚╕└ ┌╠               ",
      "             ┌ ░ ┌ ╚░┌╔╠╠▒▒╣░░╚╩╩╬╔ ╙░┌  ╔╩░╔░┌╚╚▒╙╚╬ ╔╬╩║═╚░  ╒╛               ",
      "               │   ┌┌└╠╩░╚▒ └┌░░▒╦░╕ ░╚ ┌▒░╚▒┌╔▒░  ╚ ╔╩╠╚╬┌┌░┌ ┌▒ ░             ",
      "               ╚  ┌╔╩░░░╠╦░ ╔░░╚╩╚╬ ╔╣╚░╒▒╚▒░╬╩╚┌╔░ ┌╔╗▒┌ ╔╚▒  ║░               ",
      "                ░ ┌╙╚┌╩▐╩╙╚ ╙░░░╡╔░░░╔░░╘░░░└╔╦░░╩░╒║╩╩░ ═░░╚ ┌╛┌               ",
      "                 ░ ░░╩░╒ ░╦ ┌╦╔╦ ╚╚▒╒╝░╩╝╙╝░╔╩╩╚═╩░ ╙╚░┌ ┌╠▒░ ╚ ┌               ",
      "                 ╘ ╚└╙┌║▒╚╦╕╘░░└ ░┌╗ ╔░░▐░╦╔╦┌░┌╒└╔  ╓═░╦░╩░╙┌   ┌              ",
      "                  ┌ ░░╘╚╔░░░ └ ░ ╔╝▒ ┌░   ┌░╔╩░░░╙ ┌░░╔░╚░╚╗                    ",
      "                       ┌╠╚░╠ ╒░┌░ ░░░     ═░░┌╚░░ ╔╓╩╠▒╩░┌░ ╒  ░                ",
      "                  ╝╩ ╦ ╓└░╔└  └░  ╚╚▒┌    ╓║░╔┌  ┌░╚░░╙░╔░╔═▀░                  ",
      "                     └ ┌  ╙░░ ░   ░░└░   ┌░└░╚ ┌┌░░▒╚░  ░ └ ╒                   ",
      "                      ┌ ═            ░   ┌░     ┌└┌    ╔░                       ",
      "                        ┌                ┌░          ╒┌                         ",
      "                        └   ┌                    ░ ┌  ░└                        ",
      "                                    ┌         ░  └                              ",
      "",
      "",
      "",
      "█▄░█ █░█ █ █▀▄▀█   █░░ █ ▀█▀ █▀▀",
      "█░▀█ ▀▄▀ █ █░▀░█   █▄▄ █ ░█░ ██▄",
      "",
      "",
      "k10wl",
    },
    center = {
      {
        desc = '',
      },
    },
    footer = {}
  },
}
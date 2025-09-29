{ lib, ... }: {
  plugins.dashboard = {
    enable = true;
    settings = {
      config = {
        header = [
          "   █████████                         ███            "
          "  ███░░░░░███                       ░░░             "
          " ███     ░░░   ██████   █████ █████ ████  ████████  "
          "░███          ░░░░░███ ░░███ ░░███ ░░███ ░░███░░███ "
          "░███    █████  ███████  ░███  ░███  ░███  ░███ ░███ "
          "░░███  ░░███  ███░░███  ░░███ ███   ░███  ░███ ░███ "
          " ░░█████████ ░░████████  ░░█████    █████ ████ █████"
          "  ░░░░░░░░░   ░░░░░░░░    ░░░░░    ░░░░░ ░░░░ ░░░░░ "
          "                       (lɐǝɹ)                       "
	  ""
        ];
	shortcut = [
          {
            desc = "GasInfinity";
          }
	];
        footer = [
          ""
          (lib.nixvim.mkRaw ''
            (function()
              math.randomseed(os.time())

              local quotes = {
                "`Simplicity is the ultimate sophistication` - 󰉛 Apple (1977)",
                "`An idiot admires complexity, a genius admires simplicity...` -  Terry A. Davis",
                "`GET THE FUCK UP AND GO JIM` -   Lexx Little",
                "`LIGHTWEIGHT BABY` - 󰖡 Ronnie Coleman",
                "`The guy who likes walking is gonna walk further than the guy who likes the destination` -  Sam Sulek",
                "`THEY DON'T KNOW ME SON` - 󰑮 David Goggins"
              }

              return quotes[math.random(1, #quotes)]
              end)() -- HACK: Seems that nixvim doesn't let me use a function to declare a footer...
           '')
        ];
        packages.enable = false;
        projects = {
          limit = 6;
        };
        mru = {
          limit = 6;
        };
        theme = "hyper";
      };
    };
  };
}

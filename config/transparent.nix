{
  plugins.transparent = {
    enable = true;

    settings = {
      extra_groups = [
        "NormalFloat"
      ];
    };
  };

  extraConfigLua = ''
    local transparentPlugin = require('transparent')
    transparentPlugin.clear_prefix('BufferLine')
    transparentPlugin.clear_prefix('NeoTree')
    transparentPlugin.clear_prefix('barbecue')
    transparentPlugin.clear_prefix('Notify')
    transparentPlugin.clear_prefix('WhichKey')
    transparentPlugin.clear_prefix('Telescope')
    transparentPlugin.clear_prefix('ToggleTerm')
  '';
}

{
  plugins.presence-nvim = {
    enable = true;
    editingText.__raw = ''
      function(filename) 
        local states = {
          "Cooking %s",
          "Editing %s",
          "Writing in %s",
          "Smashing buttons in %s"
        }

        return string.format(states[math.random(#states)], filename);
      end
    '';
    lineNumberText = "Line %s:%s";
    mainImage = "file";
    neovimImageText = "The Based Text Editor";
  };
}

{ lib, config, ... }:
{
  options = {
    blossom.enable = lib.mkEnableOption "Enable blossom module";
  };
  config = lib.mkIf config.blossom.enable {
    colorschemes = {
      blossom = {
        enable = true;
        settings = {
          styles = {
            italic = true;
            bold = true;
            transparency = false;
          };
        };
      };
    };
  };
}

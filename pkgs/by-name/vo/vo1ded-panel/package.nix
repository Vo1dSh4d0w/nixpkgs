{
  lib,
  ags,
  astal,
  dart-sass,
  fetchFromGitHub,
  fzf,
  gjs,
  gnused,
  gobject-introspection,
  gtk3,
  gtk4-layer-shell,
  stdenvNoCC,
  wrapGAppsHook3,
  wrapGAppsHook4,
}:
let
  bundle = import ../../ag/ags/bundle.nix {
    inherit lib ags astal dart-sass fzf gjs gnused gobject-introspection gtk3 gtk4-layer-shell stdenvNoCC wrapGAppsHook3 wrapGAppsHook4;
  };
in bundle {
  pname = "vo1ded-panel";
  version = "1.0.0";

  src = fetchFromGitHub {
    owner = "FilipTLW";
    repo = "vo1ded-panel";
    rev = "80e6b8640d0b513c61a3907643541e685cc11cfe";
    hash = "sha256-mgA4lsEY6zGVuTRg3UF50T3/Cv/ISk4YG0GOTCRtPhQ=";
  };

  dependencies = [
    astal.hyprland
    astal.tray
  ];

  meta = with lib; {
    homepage = "https://github.com/FilipTLW/vo1ded-panel";
    description = "Simple shell for Hyprland made with ags";
    license = licenses.mit;
    maintainers = [ maintainers.FilipTLW ];
    mainProgram = "vo1ded-panel";
    platforms = platforms.linux;
  };
}

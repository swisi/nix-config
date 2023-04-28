{ pkgs, lib, ... }: {
  home.packages = [ pkgs.prismlauncher ];

  home.persistence = {
    "/home/swisi".directories = [ ".local/share/PrismLauncher" ];
  };
}

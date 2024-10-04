{ pkgs, config, lib, ... }:
{
  environment.systemPackages = with pkgs; [ vim git ];
  services.openssh.enable = true;
  networking.hostName = "pi";
  users = {
    users.rohit = {
      isNormalUser = true;
      extraGroups = [ "wheel" ];
    };
  };
}

{
  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Display Manager
  services.displayManager.gdm.enable = true;

  # GNOME
  services.desktopManager.gnome.enable = true;

  # Enable CUPS to print documents.
  services.printing.enable = true;

  # Enable sound with pipewire.
  security.rtkit.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    jack.enable = true;
    pulse.enable = true;
  };

  # OpenSSH
  services.openssh.enable = true;
}

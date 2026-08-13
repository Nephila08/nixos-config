{ pkgs, ... }:
{
  programs.waybar = {
    enable = true;
    settings = {
      mainBar = {
        layer = "top";
        position = "top";
        height = 32;

        modules-left = [ "niri/workspaces" ];
        modules-center = [ "clock" ];
        modules-right = [ "pulseaudio" "network" "battery" "tray" ];

        "niri/workspaces" = {
          format = "{icon}";
        };

        clock = {
          format = "{:%H:%M   %a %d %b}";
        };

        pulseaudio = {
          format = "{volume}% {icon}";
          format-muted = "muted";
          format-icons = {
            default = [ "" "" "" ];
          };
        };

        network = {
          format-wifi = "{essid} ({signalStrength}%) ";
          format-disconnected = "sin red";
        };

        battery = {
          format = "{capacity}% {icon}";
          format-icons = [ "" "" "" "" "" ];
        };

        tray = {
          spacing = 10;
        };
      };
    };

    style = ''
      * {
        font-family: "JetBrainsMono Nerd Font";
        font-size: 13px;
      }

      window#waybar {
        background-color: #1a1b26;
        color: #c0caf5;
      }

      #workspaces button {
        padding: 0 8px;
        color: #c0caf5;
      }

      #workspaces button.active {
        background-color: #7aa2f7;
        color: #1a1b26;
        border-radius: 6px;
      }

      #clock, #pulseaudio, #network, #battery, #tray {
        padding: 0 10px;
      }
    '';
  };
}

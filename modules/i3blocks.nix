{ lib, pkgs, ... }: {
  programs.i3blocks = {
    enable = true;
    bars = {
      top = {
        time = {
          command = "date +%T";
          interval = 1;
        };
        date = lib.hm.dag.entryBefore [ "time" ] {
          command = "date +%D";
          interval = 50;
        };
        cpu = lib.hm.dag.entryBefore [ "time" ] {
          command = "${pkgs.sysstat}/bin/mpstat 1 1 | awk '/Average/ {printf \"CPU %.0f%%\\n\", 100-$NF}'";
          interval = 5;
        };
        memory = lib.hm.dag.entryBefore [ "cpu" ] {
          command = "${pkgs.procps}/bin/free -h | ${pkgs.gawk}/bin/awk '/Mem:/ {print \"RAM \" $3 \"/\" $2}'";
          interval = 5;
        };
      };
    };
  };
}

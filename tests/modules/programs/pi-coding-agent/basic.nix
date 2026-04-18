{
  programs.pi-coding-agent = {
    enable = true;
    settings = {
      theme = "dark";
    };
  };

  nmt.script = ''
    assertFileExists "home-files/.pi/agent/settings.json"
    assertFileContains "home-files/.pi/agent/settings.json" '"theme": "dark"'
    assertFileContains "home-files/.pi/agent/settings.json" '"npmCommand": ['
    assertFileContains home-path/etc/profile.d/hm-session-vars.sh \
      'export PI_SKIP_VERSION_CHECK="1"'
  '';
}

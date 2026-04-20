{
  programs.pi-coding-agent = {
    enable = true;
    skills = ./skills;
  };

  nmt.script = ''
    assertFileExists home-files/.pi/agent/skills/xlsx/SKILL.md
    assertLinkExists home-files/.pi/agent/skills/xlsx/SKILL.md
    assertFileContent home-files/.pi/agent/skills/xlsx/SKILL.md \
      ${./skills/xlsx/SKILL.md}

    assertFileExists home-files/.pi/agent/skills/data-analysis/SKILL.md
    assertLinkExists home-files/.pi/agent/skills/data-analysis/SKILL.md
    assertFileContent home-files/.pi/agent/skills/data-analysis/SKILL.md \
      ${./skills/data-analysis/SKILL.md}

    assertFileExists home-files/.pi/agent/skills/pdf-processing/SKILL.md
    assertLinkExists home-files/.pi/agent/skills/pdf-processing/SKILL.md
    assertFileContent home-files/.pi/agent/skills/pdf-processing/SKILL.md \
      ${./skills/pdf-processing/SKILL.md}
  '';
}

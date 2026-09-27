# Frictional

2026-09-20 23:21UTC: Read project config, both scenes, all three scripts and
source README. Created independent copy, retained MIT notice, title-only change.
Prior games remain unfinished under shared capture blocker. No visible window
opened. Next import/run and mouse-driven A→B→A verification; no film yet.

Headless editor import session23240 and bounded120-frame main-scene run both
exit0 cleanly. Scene transitions have not yet been exercised.

2026-09-20 23:53UTC: test_transitions.gd runs actual mouse-button input through
the viewport for A→B→A→B→A. All4 transitions reach expected scenes, invalidate
the old scene instance and preserve the autoload instance ID (12 assertions),
exit0 cleanly. No direct scene-handler invocation. Initial scene setup uses
SceneTree's loader; subsequent transitions are driven exclusively by buttons.
Prepared capture plan. No visible footage or film created; capture blocker unchanged.

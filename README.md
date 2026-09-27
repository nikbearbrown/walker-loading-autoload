# Walker Autoload

**What this is.** An independent adaptation of Godot's `loading/autoload` demo.
Two buttons swap Scene A and Scene B through a persistent autoload with deferred
scene replacement. It is a tech demo, not a game.

**Why it is in Walker.** This intentionally teaches manual scene replacement;
the source recommends SceneTree's change-scene helpers as the easier normal
approach. It does not demonstrate saving player state. Its exact purpose inside
Walker (film subject, or a scene-manager pattern for Walker games) has not been
written down yet (see `design/decisions.md`, Q-01).

**What was found and verified.** Project title changed; upstream unmodified.
FRICTIONAL.md records a headless import and run, and a mouse-driven
A→B→A→B→A test with 12 passing assertions (the test's output is not kept as a
log file in this folder). Both Liam films and actual visible capture remain
pending.

## How to run

Open godot/project.godot in Godot 4.7 and run it; it starts in Scene A.

Controls (mouse; no custom input actions): click **Go to Scene B** in Scene A,
and **Go to Scene A** in Scene B.

## Design

- [`GDD.md`](GDD.md) — the recovered game design document (identical copy of
  `design/GDD.md`). It was reverse-engineered from the code by Walker's Zelda GDD
  skill in silent mode on 2026-09-27. It describes what exists; it is **not an
  approved design**, and no design gate is signed.
- [`design/DECK.html`](design/DECK.html) — slide version for review.
- [`design/IMPLEMENTATION-MAP.md`](design/IMPLEMENTATION-MAP.md) — every feature
  mapped to its real scenes, scripts and line numbers.
- [`design/decisions.md`](design/decisions.md) — open questions (purpose,
  learning goal, whether the autoload should carry state, film plan, logs).
- [`CAPTURE-PLAN.md`](CAPTURE-PLAN.md) — the planned film capture (not yet run).

## Source & license

Independent adaptation of `loading/autoload` from Godot demo checkout
a3b5c113112f77291d5f3d1360f33a882fdc52f7. MIT license and original README,
screenshots and source retained. Project title changed; upstream unmodified.

## Status

- Two buttons swap Scene A and Scene B through a persistent autoload with
  deferred scene replacement; headless transitions pass per FRICTIONAL.md.
- It does not demonstrate saving player state.
- Both Liam films and actual visible capture remain pending.

See FRICTIONAL.md and CAPTURE-PLAN.md.

Repository: https://github.com/nikbearbrown/walker-loading-autoload

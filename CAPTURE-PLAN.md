# Capture evidence plan

Pending shared recording availability; no visible windows reopened. Produce
native3840×2160 footage with readable logical controls and normal input timing.
No film is ready yet.

Walkthrough: identify Scene A, click its button, show Scene B, return to A.
Explain the persistent scene manager without claiming saved game data: there is
no inventory/score persistence feature here. Show repeated transitions.

Development film adjacent code/result pairs:

- Scene A pressed signal and handler → actual mouse click changes A to B.
- Scene B handler → actual click changes B to A.
- project.godot autoload declaration → actual runtime tree inspection, showing
  global beside current scene. Capture genuine debugger/tree state, not a mock.
- call_deferred and scene replacement → transition footage plus real diagnostic
  output proving old instance released and singleton instance retained. Footage
  alone cannot show object lifetime; distinguish diagnostic evidence explicitly.

Explain that SceneTree change_scene_to_file/change_scene_to_packed are the easier
standard helpers per upstream comments. This example is a manual lifecycle
demonstration, not asynchronous/background loading or a performance benchmark.

Use Liam Walker bookends, verdict, your turn and regular stock outro. No burned
captions, fabricated gameplay or silent timing changes. Film QA and human review
remain distinct. Existing headless test covers four transitions with12 successful
assertions; it is not captured visual evidence.

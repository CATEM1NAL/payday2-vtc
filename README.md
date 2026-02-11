# payday2-vtc

Various Text Changes, now with way more changes and a lot less text!

The assets .zip is purely optional. It hides the checkbox on the ready screen, because this mod adds its own checkbox using strings (may unintentionally hide other checkboxes throughout the game).

**Fixable Issues:**
- Heist specific "You require X item" prompts are unchanged. These are low priority.
- There are a few unchanged hints, but these are super low priority. I'll still change them if I remember though.

**Unfixable Issues:**
- The server in IT in Hoxton Breakout Day 2 says "TAKE" instead of "PICKUP".
- The chrome skull in Biker Heist Day 1 says "PICKUP" instead of "TAKE".
- Custom fonts might not be spaced correctly.

**Unsupported Heists:**
- None!

I don't plan on adding support for custom heists due to how long it would take to go through all the existing custom heists and the uphill struggle it'll be to stay on top of new ones. Adding support for official heists took around a week of non-stop work.

**HUD Compatibility:**

Realistically this works with every HUD mod because it only changes text, but certain HUD mods do have visual issues. [PDTH HUD](https://modworkshop.net/mod/19900) has issues with certain prompts, such as "You are being revived" or "You need X item". These prompts will display the interaction bar with no text. Any other HUD that adds a background to interaction prompts might have the same issue, but otherwise they should function normally - they will just look a bit strange. If you want to see if a HUD has issues just try it out and decide for yourself if it works - if it does cause issues, you can always turn off **Gameplay Text Changes** in the options.

HUDs that I have personally tested and can confirm have no issues are: [MUI](https://modworkshop.net/mod/41187), [VanillaHUD+](https://modworkshop.net/mod/25629), and the default HUD.

**Notes:**
- There are probably a few obscure interactions that I've missed. Please report these if you find them.
- As much as I wanted to remove certain hint messages ("You can't stand up here"), it looks weird with the default HUD and some (maybe all) custom HUDs. For this reason I've simplified all the hints instead.
- There are alarm reasons for cameras, civs, and guards detecting body bags but the vanilla game doesn't use them (seems like a bug). I've changed them anyway, but you won't see them unless Overkill or another mod fixes it.
- Payday 2 VR is fully functional but has the same visual issue as PDTH HUD (prompts with no text display a transparent background).
- Only supports English. No plan to support other languages for now, if people want to make their own translations go ahead.

Lots of interactions had to be made fairly generic due to Overkill reusing them for things that they didn't make sense to be used for. Examples are circuit breakers, which are used for both disabling and enabling power. The vanilla text says "TURN ON THE POWER", which doesn't make sense for Firestarter. Other heists eventually added an interaction for disabling power, but some older heists still use the "TURN ON" interaction. Situations like this would benefit from having their text swapped entirely or completely new text being added, but again, that's beyond the scope of this project and I'm trying to work with the mess that Overkill left.

A more recent example of reuse is Breakfast in Tijuana. The interaction for searching the evidence is reused from scanning the evidence in Hoxton Breakout, so I had to change the line from "Scan Evidence" to "Check Evidence" just so it makes sense. If I could I'd have more flavourful text, but Overkill's reuse of text limits how much I can do.

If you find an interaction that seems out of place it was probably used in a completely different heist, possibly in a completely different context.

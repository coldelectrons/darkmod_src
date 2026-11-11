# OpenXR mod notes
## artefacts
Since all the artefacts are static libs, I'm not certain why they couldn't be included in the repository.
I'm going to keep them, and see if it's portable between my desktop and SteamOS.
* They are, so I will keep them for now

## x11
the code is currently hardcoded for x11 dependency

## sloppy build?
I thought if you wanted to make something portable, then you shouldn't throw stuff around willy-nilly.
Currently, just *building* the game tries to install stuff into `../darkmod/`, and fails if that directory doesn't exit.

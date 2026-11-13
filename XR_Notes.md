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

## questions
### glfw
why

this is a header brought in by conan
```
diff --git a/ThirdParty/artefacts/glfw/include/GLFW/glfw3native.h b/ThirdParty/artefacts/glfw/include/GLFW/glfw3native.h
index fe74c7331..132840298 100644
--- a/ThirdParty/artefacts/glfw/include/GLFW/glfw3native.h
+++ b/ThirdParty/artefacts/glfw/include/GLFW/glfw3native.h
@@ -111,7 +111,7 @@ extern "C" {
  /* NSGL is declared by Cocoa.h */
 #endif
 #if defined(GLFW_EXPOSE_NATIVE_GLX)
- #include <GL/glx.h>
+ //#include <GL/glx.h>
 #endif
 #if defined(GLFW_EXPOSE_NATIVE_EGL)
  #include <EGL/egl.h>
```

### openxr binary
This weirdly seems to be a practice in many projects: just put the headers and binary libs in your projects

Also, Fholger was working with openxr 1.0.9, while the current is 1.6.5

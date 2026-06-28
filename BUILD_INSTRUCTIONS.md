# Build Instructions for BetterShowcase

## Prerequisites Installed
- ✅ Geode CLI 3.7.4  
- ✅ Geode SDK 5.7.1
- ✅ Visual Studio Build Tools 2022
- ✅ CMake 4.3.3
- ✅ Git 2.54.0

## Current Status

The project requires migration from Geode 4.4.0 to Geode 5.7.1 API.

### Changes Made
1. Updated `mod.json`:
   - Geode version: 4.4.0 → 5.7.1
   - GD version: 2.2074 → 2.2081  
   - Version format: 1.0 → v1.0.0

2. Replaced icon: `logo.png` with new image

3. Fixed `includes.hpp`:
   - Changed `geode::Popup<>*` to `CCNode*`

4. Started migration of `renderer/ffmpeg/events.hpp`:
   - Event API changed in Geode 5.x (requires template parameters)
   - `.post()` method no longer exists

### Remaining Work

To compile successfully, you need to:

1. **Option A: Use Geode 4.x (Easier)**
   ```bash
   geode sdk install <path-to-sdk> --version 4.4.0
   ```
   Then revert changes to mod.json

2. **Option B: Complete Migration to Geode 5.x**
   - Update all Event classes to use new template-based API
   - Fix PlayerObject member accesses (bindings changed)
   - Update ffmpeg-api integration for new event system
   - Test all functionality

## Build Command

Once migration is complete:
```cmd
build_mod.bat
```

The compiled `.geode` file will be in `build/Release/`.

## Known Issues

- FFmpeg events system needs complete rewrite for Geode 5.x
- PlayerObject members `m_robotHasRun2` and `m_item20` don't exist in new bindings
- Custom keybinds dependency needs update to Geode 5.x compatible version

## Notes

The mod was originally based on xdBot for Geode 4.x. Geode 5.x introduced breaking changes that require significant code updates.

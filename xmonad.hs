import XMonad

import qualified XMonad.StackSet as W
import qualified Data.Map as M

myTerminal = "alacritty"
myModMask = mod4Mask
myBorderWidth = 3

myLauncher = "rofi -show run"

------------------------------------------------------------------------
-- Workspaces
-- The default number of workspaces (virtual screens) and their names.
--
myWorkspaces = ["1: term","2: web","3: code","4: media"] ++ map show [5..9]

myKeys conf@(XConfig {XMonad.modMask = modMask}) = M.fromList $
  ----------------------------------------------------------------------
  -- Custom key bindings
  --

  -- Start a terminal.  Terminal to start is specified by myTerminal variable.
  [ ((modMask, xK_Return),
     spawn $ XMonad.terminal conf)

  -- Spawn the launcher using command specified by myLauncher.
  -- Use this to launch programs without a key binding.
  , ((modMask, xK_space),
     spawn myLauncher)

  -- Close focused window.
  , ((modMask, xK_q),
     kill)

  -- Move focus to the next window.
  , ((modMask, xK_j),
     windows W.focusDown)

  -- Move focus to the previous window.
  , ((modMask, xK_k),
     windows W.focusUp  )

  -- Shrink the master area.
  , ((modMask, xK_h),
     sendMessage Shrink)

  -- Expand the master area.
  , ((modMask, xK_l),
     sendMessage Expand)
	
  -- Restart xmonad.
  , ((modMask .|. shiftMask, xK_r),
     restart "xmonad" True)
  ]

  ++

  -- mod-[1..9], Switch to workspace N
  -- mod-shift-[1..9], Move client to workspace N
  [((m .|. modMask, k), windows $ f i)
      | (i, k) <- zip (XMonad.workspaces conf) [xK_1 .. xK_9]
      , (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]
  ]

main = do
  xmonad defaultConfig
    { terminal		= myTerminal
    , modMask 		= myModMask
    , borderWidth = myBorderWidth
    , keys        = myKeys
    }
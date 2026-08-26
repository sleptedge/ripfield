--!strict

-- Copyright (c) 2026 Corridon Capital
-- This Source Code Form is subject to the terms of the Mozilla Public
-- License, v. 2.0. If a copy of the MPL was not distributed with this
-- file, You can obtain one at https://mozilla.org/MPL/2.0/.

-- Deep cobalt dark theme with blue accents. A partial theme: it only overrides the colours that
-- differ from default and inherits the rest (corners, fonts, toggle/field behaviour) from it.
return {
    WindowColor = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(8, 12, 22)),
        ColorSequenceKeypoint.new(0.58, Color3.fromRGB(14, 20, 35)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(19, 27, 47)),
    }),
    ShadowColor = Color3.fromRGB(6, 8, 20),

    ElementStroke = Color3.fromRGB(42, 56, 88),
    ElementGradient = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(25, 34, 56)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(19, 27, 46)),
    }),
    ElementStrokeGradient = ColorSequence.new({
        ColorSequenceKeypoint.new(0, Color3.fromRGB(56, 66, 104)),
        ColorSequenceKeypoint.new(0.9999, Color3.fromRGB(70, 82, 124)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(56, 66, 104)),
    }),
    ElementStrokeHover = Color3.fromRGB(64, 76, 116),

    TabBackground = ColorSequence.new(Color3.fromRGB(48, 58, 92), Color3.fromRGB(30, 38, 64)),
    TabStroke = ColorSequence.new(Color3.fromRGB(78, 92, 140), Color3.fromRGB(48, 58, 92)),

    SliderBackground = Color3.fromRGB(40, 48, 78),
    SliderBackgroundHover = Color3.fromRGB(54, 64, 100),
    SliderProgress = ColorSequence.new(Color3.fromRGB(64, 132, 248), Color3.fromRGB(42, 104, 224)),

    -- Blue accent for the active toggle, slider glow and popup primary button.
    AccentColor = Color3.fromRGB(62, 132, 246),
    AccentStroke = Color3.fromRGB(113, 178, 255),
    SurfaceStroke = Color3.fromRGB(116, 149, 210),
    ScrollbarColor = Color3.fromRGB(132, 165, 224),
    HoverOverlayColor = Color3.fromRGB(105, 151, 235),
    HoverOverlayTransparency = 0.94,

    ToggleKnobOff = Color3.fromRGB(196, 206, 232), -- cool off-knob on the dark track

    StatBackground = Color3.fromRGB(20, 26, 48),

    DropdownHighlight = Color3.fromRGB(48, 120, 240),

    NeutralButton = Color3.fromRGB(40, 48, 78),
    NeutralButtonHover = Color3.fromRGB(54, 64, 100),
    NeutralButtonStroke = Color3.fromRGB(120, 138, 195), -- clearly lighter than the fill, reads at 0.85
}

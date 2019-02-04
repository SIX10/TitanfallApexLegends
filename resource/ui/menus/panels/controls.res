"resource/ui/menus/panels/controls.res"
{
	PanelFrame
	{
		ControlName				Label
		xpos					0
		ypos					0
		wide					%100
		tall					1500
		labelText				""
		bgcolor_override		"70 70 70 255"
		visible					0
		paintbackground			1

        proportionalToParent    1
	}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

    BtnGamepadLayout
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        navUp					BtnControllerOpenAdvancedMenu
        navDown					SwchStickLayout
        tabPosition				1
        ypos                    0
    }
    SwchStickLayout
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        style					DialogListButton
        pin_to_sibling			BtnGamepadLayout
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					BtnGamepadLayout
        navDown					SwchTapToUse
        ConVar					"gamepad_stick_layout"
        list
        {
            "#SETTING_DEFAULT"	0
            "#SOUTHPAW"			1
            "#LEGACY"			2
            "#LEGACY_SOUTHPAW"	3
        }

        childGroupAlways        MultiChoiceButtonAlways
    }
    SwchTapToUse
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        style					DialogListButton
        pin_to_sibling			SwchStickLayout
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchStickLayout
        navDown					SwchHoldToCrouch
        ConVar					"gamepad_use_type"
        list
        {
            "#SETTING_HOLDTOUSE_TAPTORELOAD"    0
            "#SETTING_TAPTOUSE_HOLDTORELOAD"    1
            "#SETTING_TAPTOUSE_TAPTORELOAD"     2
        }

        childGroupAlways        MultiChoiceButtonAlways
    }
    SwchHoldToCrouch
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        style					DialogListButton
        pin_to_sibling			SwchTapToUse
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchTapToUse
        navDown					SwchToggleGamepadADS
        ConVar					"gamepad_togglecrouch_hold"
        list
        {
            "#HOLDTOCROUCH_OFF"	0
            "#HOLDTOCROUCH_ON"	1
        }

        childGroupAlways        ChoiceButtonAlways
    }
    SwchToggleGamepadADS
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        style					DialogListButton
        pin_to_sibling			SwchHoldToCrouch
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchHoldToCrouch
        navDown					SwchLookSensitivity
        ConVar					"gamepad_toggle_ads"
        list
        {
            "#GAMEPAD_TOGGLE_ADS_OFF"	0
            "#GAMEPAD_TOGGLE_ADS_ON"	1
        }

        childGroupAlways        ChoiceButtonAlways
    }

    LookMoveHeader
    {
        ControlName				ImagePanel
        InheritProperties		SubheaderBackgroundWide
        xpos					0
        ypos					6
        pin_to_sibling			SwchToggleGamepadADS
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
    }
    LookMoveHeaderText
    {
        ControlName				Label
        InheritProperties		SubheaderText
        pin_to_sibling			LookMoveHeader
        pin_corner_to_sibling	LEFT
        pin_to_sibling_corner	LEFT
        labelText				"#MENU_LOOKMOVE"
    }

    SwchLookSensitivity
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        style					DialogListButton
        pin_to_sibling			LookMoveHeader
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchToggleGamepadADS
        navDown					SwchLookSensitivityADS
        ConVar					"gamepad_aim_speed"
        list
        {
            "#SETTING_SENSITIVITY_VERYLOW"		0
            "#SETTING_SENSITIVITY_LOW"			1
            "#SETTING_SENSITIVITY_DEFAULT_NUM"	2
            "#SETTING_SENSITIVITY_HIGH"			3
            "#SETTING_SENSITIVITY_VERY_HIGH"	4
            "#SETTING_SENSITIVITY_SUPER_HIGH"	5
            "#SETTING_SENSITIVITY_ULTRA_HIGH"	6
            "#SETTING_SENSITIVITY_INSANE"		7
        }

        childGroupAlways        MultiChoiceButtonAlways
    }
    SwchLookSensitivity_AdvLabel
    {
        ControlName				Label
        InheritProperties		AdvControlsLabel
        pin_to_sibling			SwchLookSensitivity
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	TOP_RIGHT
        xpos					0
        ypos					-8
        font					DefaultBold_27_DropShadow
        labelText				"*"
        visible                 0
    }
    SwchLookSensitivityADS
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        style					DialogListButton
        pin_to_sibling			SwchLookSensitivity
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchLookSensitivity
        navDown					SwchLookAiming
        ConVar					"gamepad_aim_speed_ads_0"
        list
        {
            "#SETTING_SENSITIVITY_SAME"			-1
            "#SETTING_SENSITIVITY_VERYLOW"		0
            "#SETTING_SENSITIVITY_LOW"			1
            "#SETTING_SENSITIVITY_DEFAULT_NUM"	2
            "#SETTING_SENSITIVITY_HIGH"			3
            "#SETTING_SENSITIVITY_VERY_HIGH"	4
            "#SETTING_SENSITIVITY_SUPER_HIGH"	5
            "#SETTING_SENSITIVITY_ULTRA_HIGH"	6
            "#SETTING_SENSITIVITY_INSANE"		7
        }

        childGroupAlways        MultiChoiceButtonAlways
    }
    SwchLookSensitivityADS_AdvLabel
    {
        ControlName				Label
        InheritProperties		AdvControlsLabel
        pin_to_sibling			SwchLookSensitivityADS
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	TOP_RIGHT
        xpos					0
        ypos					-8
        font					DefaultBold_27_DropShadow
        labelText				"*"
        visible                 0
    }
    SwchLookAiming
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        style					DialogListButton
        pin_to_sibling			SwchLookSensitivityADS
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchLookSensitivityADS
        navDown					SwchLookDeadzone
        ConVar					"gamepad_look_curve"
        list
        {
            "#LOOKSTICK_AIMING_0"		0
            "#LOOKSTICK_AIMING_1"		1
            "#LOOKSTICK_AIMING_2"		2
            "#LOOKSTICK_AIMING_3"		3
            "#LOOKSTICK_AIMING_4"		4
        }

        childGroupAlways        MultiChoiceButtonAlways
    }
    SwchLookAiming_AdvLabel
    {
        ControlName				Label
        InheritProperties		AdvControlsLabel
        pin_to_sibling			SwchLookAiming
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	TOP_RIGHT
        xpos					0
        ypos					-8
        font					DefaultBold_27_DropShadow
        labelText				"*"
        visible                 0
    }
    SwchLookDeadzone
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        style					DialogListButton
        pin_to_sibling			SwchLookAiming
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchLookAiming
        navDown					SwchMoveDeadzone
        ConVar					"gamepad_deadzone_index_look"
        list
        {
            "#SETTING_NONE"		0
            "#SETTING_SMALL"	1
            "#SETTING_LARGE"	2
        }

        childGroupAlways        MultiChoiceButtonAlways
    }
    SwchLookDeadzone_AdvLabel
    {
        ControlName				Label
        InheritProperties		AdvControlsLabel
        pin_to_sibling			SwchLookDeadzone
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	TOP_RIGHT
        xpos					0
        ypos					-8
        font					DefaultBold_27_DropShadow
        labelText				"*"
        visible                 0
    }
    SwchMoveDeadzone
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        style					DialogListButton
        pin_to_sibling			SwchLookDeadzone
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchLookDeadzone
        navDown					SwchLookInvert
        ConVar					"gamepad_deadzone_index_move"
        list
        {
            "#SETTING_SMALL"	1
            "#SETTING_LARGE"	2
        }

        childGroupAlways        ChoiceButtonAlways
    }
    SwchLookInvert
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        style					DialogListButton
        pin_to_sibling			SwchMoveDeadzone
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchMoveDeadzone
        navDown					SwchVibration
        ConVar					"joy_inverty"
        list
        {
            "#SETTING_OFF"			0
            "#SETTING_INVERTED"		1
        }

        childGroupAlways        ChoiceButtonAlways
    }
    SwchVibration
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        style					DialogListButton
        pin_to_sibling			SwchLookInvert
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchLookInvert
        navDown					BtnControllerOpenAdvancedMenu
        ConVar					"joy_rumble"
        list
        {
            "#SETTING_OFF"		0
            "#SETTING_ON"		1
        }

        childGroupAlways        ChoiceButtonAlways
    }

	PanelBottom
	{
		ControlName				Label
		labeText                ""

		zpos                    0
		wide					1
		tall					1
		visible					1
		enabled 				0

        pin_to_sibling			SwchVibration
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	TOP_LEFT
	}

    BtnControllerOpenAdvancedMenu
    {
        ControlName				RuiButton
        InheritProperties		SwitchButton
        style					DialogListButton
        pin_to_sibling			SwchVibration
        pin_corner_to_sibling	TOP_LEFT
        pin_to_sibling_corner	BOTTOM_LEFT
        navUp					SwchVibration
        navDown					BtnGamepadLayout
        visible                 0
    }
    LblAdvControllerOff
    {
        ControlName				Label
        InheritProperties		AdvControlsLabel
        pin_to_sibling			BtnControllerOpenAdvancedMenu
        pin_corner_to_sibling	RIGHT
        pin_to_sibling_corner	RIGHT
        xpos					-10
        zpos					2
        auto_tall_tocontents	1
        visible                 0

        fgcolor_override		"255 255 255 127"
        labelText				"#SETTING_DISABLED"
        font                    DefaultRegularFont
        fontHeight              25
    }
    LblAdvControllerOn
    {
        ControlName				Label
        InheritProperties		AdvControlsLabel
        pin_to_sibling			BtnControllerOpenAdvancedMenu
        pin_corner_to_sibling	RIGHT
        pin_to_sibling_corner	RIGHT
        xpos					-10
        zpos					2
        auto_tall_tocontents	1
        visible                 0

        labelText				"#SETTING_ENABLED"
        font                    DefaultRegularFont
        fontHeight              26
    }
}
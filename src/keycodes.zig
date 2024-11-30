pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_labs = @import("std").zig.c_builtins.__builtin_labs;
pub const __builtin_llabs = @import("std").zig.c_builtins.__builtin_llabs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;

const KeycodeDefines = @import("std").StaticStringMap(i32).initComptime(.{
    .{ "QK_BASIC", 0 },
    .{ "QK_BASIC_MAX", 255 },
    .{ "QK_MODS", 256 },
    .{ "QK_MODS_MAX", 8191 },
    .{ "QK_MOD_TAP", 8192 },
    .{ "QK_MOD_TAP_MAX", 16383 },
    .{ "QK_LAYER_TAP", 16384 },
    .{ "QK_LAYER_TAP_MAX", 20479 },
    .{ "QK_LAYER_MOD", 20480 },
    .{ "QK_LAYER_MOD_MAX", 20991 },
    .{ "QK_TO", 20992 },
    .{ "QK_TO_MAX", 21023 },
    .{ "QK_MOMENTARY", 21024 },
    .{ "QK_MOMENTARY_MAX", 21055 },
    .{ "QK_DEF_LAYER", 21056 },
    .{ "QK_DEF_LAYER_MAX", 21087 },
    .{ "QK_TOGGLE_LAYER", 21088 },
    .{ "QK_TOGGLE_LAYER_MAX", 21119 },
    .{ "QK_ONE_SHOT_LAYER", 21120 },
    .{ "QK_ONE_SHOT_LAYER_MAX", 21151 },
    .{ "QK_ONE_SHOT_MOD", 21152 },
    .{ "QK_ONE_SHOT_MOD_MAX", 21183 },
    .{ "QK_LAYER_TAP_TOGGLE", 21184 },
    .{ "QK_LAYER_TAP_TOGGLE_MAX", 21215 },
    .{ "QK_PERSISTENT_DEF_LAYER", 21216 },
    .{ "QK_PERSISTENT_DEF_LAYER_MAX", 21247 },
    .{ "QK_SWAP_HANDS", 22016 },
    .{ "QK_SWAP_HANDS_MAX", 22271 },
    .{ "QK_TAP_DANCE", 22272 },
    .{ "QK_TAP_DANCE_MAX", 22527 },
    .{ "QK_MAGIC", 28672 },
    .{ "QK_MAGIC_MAX", 28927 },
    .{ "QK_MIDI", 28928 },
    .{ "QK_MIDI_MAX", 29183 },
    .{ "QK_SEQUENCER", 29184 },
    .{ "QK_SEQUENCER_MAX", 29695 },
    .{ "QK_JOYSTICK", 29696 },
    .{ "QK_JOYSTICK_MAX", 29759 },
    .{ "QK_PROGRAMMABLE_BUTTON", 29760 },
    .{ "QK_PROGRAMMABLE_BUTTON_MAX", 29823 },
    .{ "QK_AUDIO", 29824 },
    .{ "QK_AUDIO_MAX", 29887 },
    .{ "QK_STENO", 29888 },
    .{ "QK_STENO_MAX", 29951 },
    .{ "QK_MACRO", 30464 },
    .{ "QK_MACRO_MAX", 30591 },
    .{ "QK_CONNECTION", 30592 },
    .{ "QK_CONNECTION_MAX", 30655 },
    .{ "QK_LIGHTING", 30720 },
    .{ "QK_LIGHTING_MAX", 30975 },
    .{ "QK_QUANTUM", 31744 },
    .{ "QK_QUANTUM_MAX", 32255 },
    .{ "QK_KB", 32256 },
    .{ "QK_KB_MAX", 32319 },
    .{ "QK_USER", 32320 },
    .{ "QK_USER_MAX", 32767 },
    .{ "QK_UNICODEMAP", 32768 },
    .{ "QK_UNICODEMAP_MAX", 49151 },
    .{ "QK_UNICODE", 32768 },
    .{ "QK_UNICODE_MAX", 65535 },
    .{ "QK_UNICODEMAP_PAIR", 49152 },
    .{ "QK_UNICODEMAP_PAIR_MAX", 65535 },
    .{ "KC_NO", 0 },
    .{ "KC_TRANSPARENT", 1 },
    .{ "KC_A", 4 },
    .{ "KC_B", 5 },
    .{ "KC_C", 6 },
    .{ "KC_D", 7 },
    .{ "KC_E", 8 },
    .{ "KC_F", 9 },
    .{ "KC_G", 10 },
    .{ "KC_H", 11 },
    .{ "KC_I", 12 },
    .{ "KC_J", 13 },
    .{ "KC_K", 14 },
    .{ "KC_L", 15 },
    .{ "KC_M", 16 },
    .{ "KC_N", 17 },
    .{ "KC_O", 18 },
    .{ "KC_P", 19 },
    .{ "KC_Q", 20 },
    .{ "KC_R", 21 },
    .{ "KC_S", 22 },
    .{ "KC_T", 23 },
    .{ "KC_U", 24 },
    .{ "KC_V", 25 },
    .{ "KC_W", 26 },
    .{ "KC_X", 27 },
    .{ "KC_Y", 28 },
    .{ "KC_Z", 29 },
    .{ "KC_1", 30 },
    .{ "KC_2", 31 },
    .{ "KC_3", 32 },
    .{ "KC_4", 33 },
    .{ "KC_5", 34 },
    .{ "KC_6", 35 },
    .{ "KC_7", 36 },
    .{ "KC_8", 37 },
    .{ "KC_9", 38 },
    .{ "KC_0", 39 },
    .{ "KC_ENTER", 40 },
    .{ "KC_ESCAPE", 41 },
    .{ "KC_BACKSPACE", 42 },
    .{ "KC_TAB", 43 },
    .{ "KC_SPACE", 44 },
    .{ "KC_MINUS", 45 },
    .{ "KC_EQUAL", 46 },
    .{ "KC_LEFT_BRACKET", 47 },
    .{ "KC_RIGHT_BRACKET", 48 },
    .{ "KC_BACKSLASH", 49 },
    .{ "KC_NONUS_HASH", 50 },
    .{ "KC_SEMICOLON", 51 },
    .{ "KC_QUOTE", 52 },
    .{ "KC_GRAVE", 53 },
    .{ "KC_COMMA", 54 },
    .{ "KC_DOT", 55 },
    .{ "KC_SLASH", 56 },
    .{ "KC_CAPS_LOCK", 57 },
    .{ "KC_F1", 58 },
    .{ "KC_F2", 59 },
    .{ "KC_F3", 60 },
    .{ "KC_F4", 61 },
    .{ "KC_F5", 62 },
    .{ "KC_F6", 63 },
    .{ "KC_F7", 64 },
    .{ "KC_F8", 65 },
    .{ "KC_F9", 66 },
    .{ "KC_F10", 67 },
    .{ "KC_F11", 68 },
    .{ "KC_F12", 69 },
    .{ "KC_PRINT_SCREEN", 70 },
    .{ "KC_SCROLL_LOCK", 71 },
    .{ "KC_PAUSE", 72 },
    .{ "KC_INSERT", 73 },
    .{ "KC_HOME", 74 },
    .{ "KC_PAGE_UP", 75 },
    .{ "KC_DELETE", 76 },
    .{ "KC_END", 77 },
    .{ "KC_PAGE_DOWN", 78 },
    .{ "KC_RIGHT", 79 },
    .{ "KC_LEFT", 80 },
    .{ "KC_DOWN", 81 },
    .{ "KC_UP", 82 },
    .{ "KC_NUM_LOCK", 83 },
    .{ "KC_KP_SLASH", 84 },
    .{ "KC_KP_ASTERISK", 85 },
    .{ "KC_KP_MINUS", 86 },
    .{ "KC_KP_PLUS", 87 },
    .{ "KC_KP_ENTER", 88 },
    .{ "KC_KP_1", 89 },
    .{ "KC_KP_2", 90 },
    .{ "KC_KP_3", 91 },
    .{ "KC_KP_4", 92 },
    .{ "KC_KP_5", 93 },
    .{ "KC_KP_6", 94 },
    .{ "KC_KP_7", 95 },
    .{ "KC_KP_8", 96 },
    .{ "KC_KP_9", 97 },
    .{ "KC_KP_0", 98 },
    .{ "KC_KP_DOT", 99 },
    .{ "KC_NONUS_BACKSLASH", 100 },
    .{ "KC_APPLICATION", 101 },
    .{ "KC_KB_POWER", 102 },
    .{ "KC_KP_EQUAL", 103 },
    .{ "KC_F13", 104 },
    .{ "KC_F14", 105 },
    .{ "KC_F15", 106 },
    .{ "KC_F16", 107 },
    .{ "KC_F17", 108 },
    .{ "KC_F18", 109 },
    .{ "KC_F19", 110 },
    .{ "KC_F20", 111 },
    .{ "KC_F21", 112 },
    .{ "KC_F22", 113 },
    .{ "KC_F23", 114 },
    .{ "KC_F24", 115 },
    .{ "KC_EXECUTE", 116 },
    .{ "KC_HELP", 117 },
    .{ "KC_MENU", 118 },
    .{ "KC_SELECT", 119 },
    .{ "KC_STOP", 120 },
    .{ "KC_AGAIN", 121 },
    .{ "KC_UNDO", 122 },
    .{ "KC_CUT", 123 },
    .{ "KC_COPY", 124 },
    .{ "KC_PASTE", 125 },
    .{ "KC_FIND", 126 },
    .{ "KC_KB_MUTE", 127 },
    .{ "KC_KB_VOLUME_UP", 128 },
    .{ "KC_KB_VOLUME_DOWN", 129 },
    .{ "KC_LOCKING_CAPS_LOCK", 130 },
    .{ "KC_LOCKING_NUM_LOCK", 131 },
    .{ "KC_LOCKING_SCROLL_LOCK", 132 },
    .{ "KC_KP_COMMA", 133 },
    .{ "KC_KP_EQUAL_AS400", 134 },
    .{ "KC_INTERNATIONAL_1", 135 },
    .{ "KC_INTERNATIONAL_2", 136 },
    .{ "KC_INTERNATIONAL_3", 137 },
    .{ "KC_INTERNATIONAL_4", 138 },
    .{ "KC_INTERNATIONAL_5", 139 },
    .{ "KC_INTERNATIONAL_6", 140 },
    .{ "KC_INTERNATIONAL_7", 141 },
    .{ "KC_INTERNATIONAL_8", 142 },
    .{ "KC_INTERNATIONAL_9", 143 },
    .{ "KC_LANGUAGE_1", 144 },
    .{ "KC_LANGUAGE_2", 145 },
    .{ "KC_LANGUAGE_3", 146 },
    .{ "KC_LANGUAGE_4", 147 },
    .{ "KC_LANGUAGE_5", 148 },
    .{ "KC_LANGUAGE_6", 149 },
    .{ "KC_LANGUAGE_7", 150 },
    .{ "KC_LANGUAGE_8", 151 },
    .{ "KC_LANGUAGE_9", 152 },
    .{ "KC_ALTERNATE_ERASE", 153 },
    .{ "KC_SYSTEM_REQUEST", 154 },
    .{ "KC_CANCEL", 155 },
    .{ "KC_CLEAR", 156 },
    .{ "KC_PRIOR", 157 },
    .{ "KC_RETURN", 158 },
    .{ "KC_SEPARATOR", 159 },
    .{ "KC_OUT", 160 },
    .{ "KC_OPER", 161 },
    .{ "KC_CLEAR_AGAIN", 162 },
    .{ "KC_CRSEL", 163 },
    .{ "KC_EXSEL", 164 },
    .{ "KC_SYSTEM_POWER", 165 },
    .{ "KC_SYSTEM_SLEEP", 166 },
    .{ "KC_SYSTEM_WAKE", 167 },
    .{ "KC_AUDIO_MUTE", 168 },
    .{ "KC_AUDIO_VOL_UP", 169 },
    .{ "KC_AUDIO_VOL_DOWN", 170 },
    .{ "KC_MEDIA_NEXT_TRACK", 171 },
    .{ "KC_MEDIA_PREV_TRACK", 172 },
    .{ "KC_MEDIA_STOP", 173 },
    .{ "KC_MEDIA_PLAY_PAUSE", 174 },
    .{ "KC_MEDIA_SELECT", 175 },
    .{ "KC_MEDIA_EJECT", 176 },
    .{ "KC_MAIL", 177 },
    .{ "KC_CALCULATOR", 178 },
    .{ "KC_MY_COMPUTER", 179 },
    .{ "KC_WWW_SEARCH", 180 },
    .{ "KC_WWW_HOME", 181 },
    .{ "KC_WWW_BACK", 182 },
    .{ "KC_WWW_FORWARD", 183 },
    .{ "KC_WWW_STOP", 184 },
    .{ "KC_WWW_REFRESH", 185 },
    .{ "KC_WWW_FAVORITES", 186 },
    .{ "KC_MEDIA_FAST_FORWARD", 187 },
    .{ "KC_MEDIA_REWIND", 188 },
    .{ "KC_BRIGHTNESS_UP", 189 },
    .{ "KC_BRIGHTNESS_DOWN", 190 },
    .{ "KC_CONTROL_PANEL", 191 },
    .{ "KC_ASSISTANT", 192 },
    .{ "KC_MISSION_CONTROL", 193 },
    .{ "KC_LAUNCHPAD", 194 },
    .{ "QK_MOUSE_CURSOR_UP", 205 },
    .{ "QK_MOUSE_CURSOR_DOWN", 206 },
    .{ "QK_MOUSE_CURSOR_LEFT", 207 },
    .{ "QK_MOUSE_CURSOR_RIGHT", 208 },
    .{ "QK_MOUSE_BUTTON_1", 209 },
    .{ "QK_MOUSE_BUTTON_2", 210 },
    .{ "QK_MOUSE_BUTTON_3", 211 },
    .{ "QK_MOUSE_BUTTON_4", 212 },
    .{ "QK_MOUSE_BUTTON_5", 213 },
    .{ "QK_MOUSE_BUTTON_6", 214 },
    .{ "QK_MOUSE_BUTTON_7", 215 },
    .{ "QK_MOUSE_BUTTON_8", 216 },
    .{ "QK_MOUSE_WHEEL_UP", 217 },
    .{ "QK_MOUSE_WHEEL_DOWN", 218 },
    .{ "QK_MOUSE_WHEEL_LEFT", 219 },
    .{ "QK_MOUSE_WHEEL_RIGHT", 220 },
    .{ "QK_MOUSE_ACCELERATION_0", 221 },
    .{ "QK_MOUSE_ACCELERATION_1", 222 },
    .{ "QK_MOUSE_ACCELERATION_2", 223 },
    .{ "KC_LEFT_CTRL", 224 },
    .{ "KC_LEFT_SHIFT", 225 },
    .{ "KC_LEFT_ALT", 226 },
    .{ "KC_LEFT_GUI", 227 },
    .{ "KC_RIGHT_CTRL", 228 },
    .{ "KC_RIGHT_SHIFT", 229 },
    .{ "KC_RIGHT_ALT", 230 },
    .{ "KC_RIGHT_GUI", 231 },
    .{ "QK_SWAP_HANDS_TOGGLE", 22256 },
    .{ "QK_SWAP_HANDS_TAP_TOGGLE", 22257 },
    .{ "QK_SWAP_HANDS_MOMENTARY_ON", 22258 },
    .{ "QK_SWAP_HANDS_MOMENTARY_OFF", 22259 },
    .{ "QK_SWAP_HANDS_OFF", 22260 },
    .{ "QK_SWAP_HANDS_ON", 22261 },
    .{ "QK_SWAP_HANDS_ONE_SHOT", 22262 },
    .{ "QK_MAGIC_SWAP_CONTROL_CAPS_LOCK", 28672 },
    .{ "QK_MAGIC_UNSWAP_CONTROL_CAPS_LOCK", 28673 },
    .{ "QK_MAGIC_TOGGLE_CONTROL_CAPS_LOCK", 28674 },
    .{ "QK_MAGIC_CAPS_LOCK_AS_CONTROL_OFF", 28675 },
    .{ "QK_MAGIC_CAPS_LOCK_AS_CONTROL_ON", 28676 },
    .{ "QK_MAGIC_SWAP_LALT_LGUI", 28677 },
    .{ "QK_MAGIC_UNSWAP_LALT_LGUI", 28678 },
    .{ "QK_MAGIC_SWAP_RALT_RGUI", 28679 },
    .{ "QK_MAGIC_UNSWAP_RALT_RGUI", 28680 },
    .{ "QK_MAGIC_GUI_ON", 28681 },
    .{ "QK_MAGIC_GUI_OFF", 28682 },
    .{ "QK_MAGIC_TOGGLE_GUI", 28683 },
    .{ "QK_MAGIC_SWAP_GRAVE_ESC", 28684 },
    .{ "QK_MAGIC_UNSWAP_GRAVE_ESC", 28685 },
    .{ "QK_MAGIC_SWAP_BACKSLASH_BACKSPACE", 28686 },
    .{ "QK_MAGIC_UNSWAP_BACKSLASH_BACKSPACE", 28687 },
    .{ "QK_MAGIC_TOGGLE_BACKSLASH_BACKSPACE", 28688 },
    .{ "QK_MAGIC_NKRO_ON", 28689 },
    .{ "QK_MAGIC_NKRO_OFF", 28690 },
    .{ "QK_MAGIC_TOGGLE_NKRO", 28691 },
    .{ "QK_MAGIC_SWAP_ALT_GUI", 28692 },
    .{ "QK_MAGIC_UNSWAP_ALT_GUI", 28693 },
    .{ "QK_MAGIC_TOGGLE_ALT_GUI", 28694 },
    .{ "QK_MAGIC_SWAP_LCTL_LGUI", 28695 },
    .{ "QK_MAGIC_UNSWAP_LCTL_LGUI", 28696 },
    .{ "QK_MAGIC_SWAP_RCTL_RGUI", 28697 },
    .{ "QK_MAGIC_UNSWAP_RCTL_RGUI", 28698 },
    .{ "QK_MAGIC_SWAP_CTL_GUI", 28699 },
    .{ "QK_MAGIC_UNSWAP_CTL_GUI", 28700 },
    .{ "QK_MAGIC_TOGGLE_CTL_GUI", 28701 },
    .{ "QK_MAGIC_EE_HANDS_LEFT", 28702 },
    .{ "QK_MAGIC_EE_HANDS_RIGHT", 28703 },
    .{ "QK_MAGIC_SWAP_ESCAPE_CAPS_LOCK", 28704 },
    .{ "QK_MAGIC_UNSWAP_ESCAPE_CAPS_LOCK", 28705 },
    .{ "QK_MAGIC_TOGGLE_ESCAPE_CAPS_LOCK", 28706 },
    .{ "QK_MIDI_ON", 28928 },
    .{ "QK_MIDI_OFF", 28929 },
    .{ "QK_MIDI_TOGGLE", 28930 },
    .{ "QK_MIDI_NOTE_C_0", 28931 },
    .{ "QK_MIDI_NOTE_C_SHARP_0", 28932 },
    .{ "QK_MIDI_NOTE_D_0", 28933 },
    .{ "QK_MIDI_NOTE_D_SHARP_0", 28934 },
    .{ "QK_MIDI_NOTE_E_0", 28935 },
    .{ "QK_MIDI_NOTE_F_0", 28936 },
    .{ "QK_MIDI_NOTE_F_SHARP_0", 28937 },
    .{ "QK_MIDI_NOTE_G_0", 28938 },
    .{ "QK_MIDI_NOTE_G_SHARP_0", 28939 },
    .{ "QK_MIDI_NOTE_A_0", 28940 },
    .{ "QK_MIDI_NOTE_A_SHARP_0", 28941 },
    .{ "QK_MIDI_NOTE_B_0", 28942 },
    .{ "QK_MIDI_NOTE_C_1", 28943 },
    .{ "QK_MIDI_NOTE_C_SHARP_1", 28944 },
    .{ "QK_MIDI_NOTE_D_1", 28945 },
    .{ "QK_MIDI_NOTE_D_SHARP_1", 28946 },
    .{ "QK_MIDI_NOTE_E_1", 28947 },
    .{ "QK_MIDI_NOTE_F_1", 28948 },
    .{ "QK_MIDI_NOTE_F_SHARP_1", 28949 },
    .{ "QK_MIDI_NOTE_G_1", 28950 },
    .{ "QK_MIDI_NOTE_G_SHARP_1", 28951 },
    .{ "QK_MIDI_NOTE_A_1", 28952 },
    .{ "QK_MIDI_NOTE_A_SHARP_1", 28953 },
    .{ "QK_MIDI_NOTE_B_1", 28954 },
    .{ "QK_MIDI_NOTE_C_2", 28955 },
    .{ "QK_MIDI_NOTE_C_SHARP_2", 28956 },
    .{ "QK_MIDI_NOTE_D_2", 28957 },
    .{ "QK_MIDI_NOTE_D_SHARP_2", 28958 },
    .{ "QK_MIDI_NOTE_E_2", 28959 },
    .{ "QK_MIDI_NOTE_F_2", 28960 },
    .{ "QK_MIDI_NOTE_F_SHARP_2", 28961 },
    .{ "QK_MIDI_NOTE_G_2", 28962 },
    .{ "QK_MIDI_NOTE_G_SHARP_2", 28963 },
    .{ "QK_MIDI_NOTE_A_2", 28964 },
    .{ "QK_MIDI_NOTE_A_SHARP_2", 28965 },
    .{ "QK_MIDI_NOTE_B_2", 28966 },
    .{ "QK_MIDI_NOTE_C_3", 28967 },
    .{ "QK_MIDI_NOTE_C_SHARP_3", 28968 },
    .{ "QK_MIDI_NOTE_D_3", 28969 },
    .{ "QK_MIDI_NOTE_D_SHARP_3", 28970 },
    .{ "QK_MIDI_NOTE_E_3", 28971 },
    .{ "QK_MIDI_NOTE_F_3", 28972 },
    .{ "QK_MIDI_NOTE_F_SHARP_3", 28973 },
    .{ "QK_MIDI_NOTE_G_3", 28974 },
    .{ "QK_MIDI_NOTE_G_SHARP_3", 28975 },
    .{ "QK_MIDI_NOTE_A_3", 28976 },
    .{ "QK_MIDI_NOTE_A_SHARP_3", 28977 },
    .{ "QK_MIDI_NOTE_B_3", 28978 },
    .{ "QK_MIDI_NOTE_C_4", 28979 },
    .{ "QK_MIDI_NOTE_C_SHARP_4", 28980 },
    .{ "QK_MIDI_NOTE_D_4", 28981 },
    .{ "QK_MIDI_NOTE_D_SHARP_4", 28982 },
    .{ "QK_MIDI_NOTE_E_4", 28983 },
    .{ "QK_MIDI_NOTE_F_4", 28984 },
    .{ "QK_MIDI_NOTE_F_SHARP_4", 28985 },
    .{ "QK_MIDI_NOTE_G_4", 28986 },
    .{ "QK_MIDI_NOTE_G_SHARP_4", 28987 },
    .{ "QK_MIDI_NOTE_A_4", 28988 },
    .{ "QK_MIDI_NOTE_A_SHARP_4", 28989 },
    .{ "QK_MIDI_NOTE_B_4", 28990 },
    .{ "QK_MIDI_NOTE_C_5", 28991 },
    .{ "QK_MIDI_NOTE_C_SHARP_5", 28992 },
    .{ "QK_MIDI_NOTE_D_5", 28993 },
    .{ "QK_MIDI_NOTE_D_SHARP_5", 28994 },
    .{ "QK_MIDI_NOTE_E_5", 28995 },
    .{ "QK_MIDI_NOTE_F_5", 28996 },
    .{ "QK_MIDI_NOTE_F_SHARP_5", 28997 },
    .{ "QK_MIDI_NOTE_G_5", 28998 },
    .{ "QK_MIDI_NOTE_G_SHARP_5", 28999 },
    .{ "QK_MIDI_NOTE_A_5", 29000 },
    .{ "QK_MIDI_NOTE_A_SHARP_5", 29001 },
    .{ "QK_MIDI_NOTE_B_5", 29002 },
    .{ "QK_MIDI_OCTAVE_N2", 29003 },
    .{ "QK_MIDI_OCTAVE_N1", 29004 },
    .{ "QK_MIDI_OCTAVE_0", 29005 },
    .{ "QK_MIDI_OCTAVE_1", 29006 },
    .{ "QK_MIDI_OCTAVE_2", 29007 },
    .{ "QK_MIDI_OCTAVE_3", 29008 },
    .{ "QK_MIDI_OCTAVE_4", 29009 },
    .{ "QK_MIDI_OCTAVE_5", 29010 },
    .{ "QK_MIDI_OCTAVE_6", 29011 },
    .{ "QK_MIDI_OCTAVE_7", 29012 },
    .{ "QK_MIDI_OCTAVE_DOWN", 29013 },
    .{ "QK_MIDI_OCTAVE_UP", 29014 },
    .{ "QK_MIDI_TRANSPOSE_N6", 29015 },
    .{ "QK_MIDI_TRANSPOSE_N5", 29016 },
    .{ "QK_MIDI_TRANSPOSE_N4", 29017 },
    .{ "QK_MIDI_TRANSPOSE_N3", 29018 },
    .{ "QK_MIDI_TRANSPOSE_N2", 29019 },
    .{ "QK_MIDI_TRANSPOSE_N1", 29020 },
    .{ "QK_MIDI_TRANSPOSE_0", 29021 },
    .{ "QK_MIDI_TRANSPOSE_1", 29022 },
    .{ "QK_MIDI_TRANSPOSE_2", 29023 },
    .{ "QK_MIDI_TRANSPOSE_3", 29024 },
    .{ "QK_MIDI_TRANSPOSE_4", 29025 },
    .{ "QK_MIDI_TRANSPOSE_5", 29026 },
    .{ "QK_MIDI_TRANSPOSE_6", 29027 },
    .{ "QK_MIDI_TRANSPOSE_DOWN", 29028 },
    .{ "QK_MIDI_TRANSPOSE_UP", 29029 },
    .{ "QK_MIDI_VELOCITY_0", 29030 },
    .{ "QK_MIDI_VELOCITY_1", 29031 },
    .{ "QK_MIDI_VELOCITY_2", 29032 },
    .{ "QK_MIDI_VELOCITY_3", 29033 },
    .{ "QK_MIDI_VELOCITY_4", 29034 },
    .{ "QK_MIDI_VELOCITY_5", 29035 },
    .{ "QK_MIDI_VELOCITY_6", 29036 },
    .{ "QK_MIDI_VELOCITY_7", 29037 },
    .{ "QK_MIDI_VELOCITY_8", 29038 },
    .{ "QK_MIDI_VELOCITY_9", 29039 },
    .{ "QK_MIDI_VELOCITY_10", 29040 },
    .{ "QK_MIDI_VELOCITY_DOWN", 29041 },
    .{ "QK_MIDI_VELOCITY_UP", 29042 },
    .{ "QK_MIDI_CHANNEL_1", 29043 },
    .{ "QK_MIDI_CHANNEL_2", 29044 },
    .{ "QK_MIDI_CHANNEL_3", 29045 },
    .{ "QK_MIDI_CHANNEL_4", 29046 },
    .{ "QK_MIDI_CHANNEL_5", 29047 },
    .{ "QK_MIDI_CHANNEL_6", 29048 },
    .{ "QK_MIDI_CHANNEL_7", 29049 },
    .{ "QK_MIDI_CHANNEL_8", 29050 },
    .{ "QK_MIDI_CHANNEL_9", 29051 },
    .{ "QK_MIDI_CHANNEL_10", 29052 },
    .{ "QK_MIDI_CHANNEL_11", 29053 },
    .{ "QK_MIDI_CHANNEL_12", 29054 },
    .{ "QK_MIDI_CHANNEL_13", 29055 },
    .{ "QK_MIDI_CHANNEL_14", 29056 },
    .{ "QK_MIDI_CHANNEL_15", 29057 },
    .{ "QK_MIDI_CHANNEL_16", 29058 },
    .{ "QK_MIDI_CHANNEL_DOWN", 29059 },
    .{ "QK_MIDI_CHANNEL_UP", 29060 },
    .{ "QK_MIDI_ALL_NOTES_OFF", 29061 },
    .{ "QK_MIDI_SUSTAIN", 29062 },
    .{ "QK_MIDI_PORTAMENTO", 29063 },
    .{ "QK_MIDI_SOSTENUTO", 29064 },
    .{ "QK_MIDI_SOFT", 29065 },
    .{ "QK_MIDI_LEGATO", 29066 },
    .{ "QK_MIDI_MODULATION", 29067 },
    .{ "QK_MIDI_MODULATION_SPEED_DOWN", 29068 },
    .{ "QK_MIDI_MODULATION_SPEED_UP", 29069 },
    .{ "QK_MIDI_PITCH_BEND_DOWN", 29070 },
    .{ "QK_MIDI_PITCH_BEND_UP", 29071 },
    .{ "QK_SEQUENCER_ON", 29184 },
    .{ "QK_SEQUENCER_OFF", 29185 },
    .{ "QK_SEQUENCER_TOGGLE", 29186 },
    .{ "QK_SEQUENCER_TEMPO_DOWN", 29187 },
    .{ "QK_SEQUENCER_TEMPO_UP", 29188 },
    .{ "QK_SEQUENCER_RESOLUTION_DOWN", 29189 },
    .{ "QK_SEQUENCER_RESOLUTION_UP", 29190 },
    .{ "QK_SEQUENCER_STEPS_ALL", 29191 },
    .{ "QK_SEQUENCER_STEPS_CLEAR", 29192 },
    .{ "QK_JOYSTICK_BUTTON_0", 29696 },
    .{ "QK_JOYSTICK_BUTTON_1", 29697 },
    .{ "QK_JOYSTICK_BUTTON_2", 29698 },
    .{ "QK_JOYSTICK_BUTTON_3", 29699 },
    .{ "QK_JOYSTICK_BUTTON_4", 29700 },
    .{ "QK_JOYSTICK_BUTTON_5", 29701 },
    .{ "QK_JOYSTICK_BUTTON_6", 29702 },
    .{ "QK_JOYSTICK_BUTTON_7", 29703 },
    .{ "QK_JOYSTICK_BUTTON_8", 29704 },
    .{ "QK_JOYSTICK_BUTTON_9", 29705 },
    .{ "QK_JOYSTICK_BUTTON_10", 29706 },
    .{ "QK_JOYSTICK_BUTTON_11", 29707 },
    .{ "QK_JOYSTICK_BUTTON_12", 29708 },
    .{ "QK_JOYSTICK_BUTTON_13", 29709 },
    .{ "QK_JOYSTICK_BUTTON_14", 29710 },
    .{ "QK_JOYSTICK_BUTTON_15", 29711 },
    .{ "QK_JOYSTICK_BUTTON_16", 29712 },
    .{ "QK_JOYSTICK_BUTTON_17", 29713 },
    .{ "QK_JOYSTICK_BUTTON_18", 29714 },
    .{ "QK_JOYSTICK_BUTTON_19", 29715 },
    .{ "QK_JOYSTICK_BUTTON_20", 29716 },
    .{ "QK_JOYSTICK_BUTTON_21", 29717 },
    .{ "QK_JOYSTICK_BUTTON_22", 29718 },
    .{ "QK_JOYSTICK_BUTTON_23", 29719 },
    .{ "QK_JOYSTICK_BUTTON_24", 29720 },
    .{ "QK_JOYSTICK_BUTTON_25", 29721 },
    .{ "QK_JOYSTICK_BUTTON_26", 29722 },
    .{ "QK_JOYSTICK_BUTTON_27", 29723 },
    .{ "QK_JOYSTICK_BUTTON_28", 29724 },
    .{ "QK_JOYSTICK_BUTTON_29", 29725 },
    .{ "QK_JOYSTICK_BUTTON_30", 29726 },
    .{ "QK_JOYSTICK_BUTTON_31", 29727 },
    .{ "QK_PROGRAMMABLE_BUTTON_1", 29760 },
    .{ "QK_PROGRAMMABLE_BUTTON_2", 29761 },
    .{ "QK_PROGRAMMABLE_BUTTON_3", 29762 },
    .{ "QK_PROGRAMMABLE_BUTTON_4", 29763 },
    .{ "QK_PROGRAMMABLE_BUTTON_5", 29764 },
    .{ "QK_PROGRAMMABLE_BUTTON_6", 29765 },
    .{ "QK_PROGRAMMABLE_BUTTON_7", 29766 },
    .{ "QK_PROGRAMMABLE_BUTTON_8", 29767 },
    .{ "QK_PROGRAMMABLE_BUTTON_9", 29768 },
    .{ "QK_PROGRAMMABLE_BUTTON_10", 29769 },
    .{ "QK_PROGRAMMABLE_BUTTON_11", 29770 },
    .{ "QK_PROGRAMMABLE_BUTTON_12", 29771 },
    .{ "QK_PROGRAMMABLE_BUTTON_13", 29772 },
    .{ "QK_PROGRAMMABLE_BUTTON_14", 29773 },
    .{ "QK_PROGRAMMABLE_BUTTON_15", 29774 },
    .{ "QK_PROGRAMMABLE_BUTTON_16", 29775 },
    .{ "QK_PROGRAMMABLE_BUTTON_17", 29776 },
    .{ "QK_PROGRAMMABLE_BUTTON_18", 29777 },
    .{ "QK_PROGRAMMABLE_BUTTON_19", 29778 },
    .{ "QK_PROGRAMMABLE_BUTTON_20", 29779 },
    .{ "QK_PROGRAMMABLE_BUTTON_21", 29780 },
    .{ "QK_PROGRAMMABLE_BUTTON_22", 29781 },
    .{ "QK_PROGRAMMABLE_BUTTON_23", 29782 },
    .{ "QK_PROGRAMMABLE_BUTTON_24", 29783 },
    .{ "QK_PROGRAMMABLE_BUTTON_25", 29784 },
    .{ "QK_PROGRAMMABLE_BUTTON_26", 29785 },
    .{ "QK_PROGRAMMABLE_BUTTON_27", 29786 },
    .{ "QK_PROGRAMMABLE_BUTTON_28", 29787 },
    .{ "QK_PROGRAMMABLE_BUTTON_29", 29788 },
    .{ "QK_PROGRAMMABLE_BUTTON_30", 29789 },
    .{ "QK_PROGRAMMABLE_BUTTON_31", 29790 },
    .{ "QK_PROGRAMMABLE_BUTTON_32", 29791 },
    .{ "QK_AUDIO_ON", 29824 },
    .{ "QK_AUDIO_OFF", 29825 },
    .{ "QK_AUDIO_TOGGLE", 29826 },
    .{ "QK_AUDIO_CLICKY_TOGGLE", 29834 },
    .{ "QK_AUDIO_CLICKY_ON", 29835 },
    .{ "QK_AUDIO_CLICKY_OFF", 29836 },
    .{ "QK_AUDIO_CLICKY_UP", 29837 },
    .{ "QK_AUDIO_CLICKY_DOWN", 29838 },
    .{ "QK_AUDIO_CLICKY_RESET", 29839 },
    .{ "QK_MUSIC_ON", 29840 },
    .{ "QK_MUSIC_OFF", 29841 },
    .{ "QK_MUSIC_TOGGLE", 29842 },
    .{ "QK_MUSIC_MODE_NEXT", 29843 },
    .{ "QK_AUDIO_VOICE_NEXT", 29844 },
    .{ "QK_AUDIO_VOICE_PREVIOUS", 29845 },
    .{ "QK_STENO_BOLT", 29936 },
    .{ "QK_STENO_GEMINI", 29937 },
    .{ "QK_STENO_COMB", 29938 },
    .{ "QK_STENO_COMB_MAX", 29948 },
    .{ "QK_MACRO_0", 30464 },
    .{ "QK_MACRO_1", 30465 },
    .{ "QK_MACRO_2", 30466 },
    .{ "QK_MACRO_3", 30467 },
    .{ "QK_MACRO_4", 30468 },
    .{ "QK_MACRO_5", 30469 },
    .{ "QK_MACRO_6", 30470 },
    .{ "QK_MACRO_7", 30471 },
    .{ "QK_MACRO_8", 30472 },
    .{ "QK_MACRO_9", 30473 },
    .{ "QK_MACRO_10", 30474 },
    .{ "QK_MACRO_11", 30475 },
    .{ "QK_MACRO_12", 30476 },
    .{ "QK_MACRO_13", 30477 },
    .{ "QK_MACRO_14", 30478 },
    .{ "QK_MACRO_15", 30479 },
    .{ "QK_MACRO_16", 30480 },
    .{ "QK_MACRO_17", 30481 },
    .{ "QK_MACRO_18", 30482 },
    .{ "QK_MACRO_19", 30483 },
    .{ "QK_MACRO_20", 30484 },
    .{ "QK_MACRO_21", 30485 },
    .{ "QK_MACRO_22", 30486 },
    .{ "QK_MACRO_23", 30487 },
    .{ "QK_MACRO_24", 30488 },
    .{ "QK_MACRO_25", 30489 },
    .{ "QK_MACRO_26", 30490 },
    .{ "QK_MACRO_27", 30491 },
    .{ "QK_MACRO_28", 30492 },
    .{ "QK_MACRO_29", 30493 },
    .{ "QK_MACRO_30", 30494 },
    .{ "QK_MACRO_31", 30495 },
    .{ "QK_OUTPUT_AUTO", 30592 },
    .{ "QK_OUTPUT_NEXT", 30593 },
    .{ "QK_OUTPUT_PREV", 30594 },
    .{ "QK_OUTPUT_NONE", 30595 },
    .{ "QK_OUTPUT_USB", 30596 },
    .{ "QK_OUTPUT_2P4GHZ", 30597 },
    .{ "QK_OUTPUT_BLUETOOTH", 30598 },
    .{ "QK_BLUETOOTH_PROFILE_NEXT", 30608 },
    .{ "QK_BLUETOOTH_PROFILE_PREV", 30609 },
    .{ "QK_BLUETOOTH_UNPAIR", 30610 },
    .{ "QK_BLUETOOTH_PROFILE1", 30611 },
    .{ "QK_BLUETOOTH_PROFILE2", 30612 },
    .{ "QK_BLUETOOTH_PROFILE3", 30613 },
    .{ "QK_BLUETOOTH_PROFILE4", 30614 },
    .{ "QK_BLUETOOTH_PROFILE5", 30615 },
    .{ "QK_BACKLIGHT_ON", 30720 },
    .{ "QK_BACKLIGHT_OFF", 30721 },
    .{ "QK_BACKLIGHT_TOGGLE", 30722 },
    .{ "QK_BACKLIGHT_DOWN", 30723 },
    .{ "QK_BACKLIGHT_UP", 30724 },
    .{ "QK_BACKLIGHT_STEP", 30725 },
    .{ "QK_BACKLIGHT_TOGGLE_BREATHING", 30726 },
    .{ "QK_LED_MATRIX_ON", 30736 },
    .{ "QK_LED_MATRIX_OFF", 30737 },
    .{ "QK_LED_MATRIX_TOGGLE", 30738 },
    .{ "QK_LED_MATRIX_MODE_NEXT", 30739 },
    .{ "QK_LED_MATRIX_MODE_PREVIOUS", 30740 },
    .{ "QK_LED_MATRIX_BRIGHTNESS_UP", 30741 },
    .{ "QK_LED_MATRIX_BRIGHTNESS_DOWN", 30742 },
    .{ "QK_LED_MATRIX_SPEED_UP", 30743 },
    .{ "QK_LED_MATRIX_SPEED_DOWN", 30744 },
    .{ "QK_UNDERGLOW_TOGGLE", 30752 },
    .{ "QK_UNDERGLOW_MODE_NEXT", 30753 },
    .{ "QK_UNDERGLOW_MODE_PREVIOUS", 30754 },
    .{ "QK_UNDERGLOW_HUE_UP", 30755 },
    .{ "QK_UNDERGLOW_HUE_DOWN", 30756 },
    .{ "QK_UNDERGLOW_SATURATION_UP", 30757 },
    .{ "QK_UNDERGLOW_SATURATION_DOWN", 30758 },
    .{ "QK_UNDERGLOW_VALUE_UP", 30759 },
    .{ "QK_UNDERGLOW_VALUE_DOWN", 30760 },
    .{ "QK_UNDERGLOW_SPEED_UP", 30761 },
    .{ "QK_UNDERGLOW_SPEED_DOWN", 30762 },
    .{ "RGB_MODE_PLAIN", 30763 },
    .{ "RGB_MODE_BREATHE", 30764 },
    .{ "RGB_MODE_RAINBOW", 30765 },
    .{ "RGB_MODE_SWIRL", 30766 },
    .{ "RGB_MODE_SNAKE", 30767 },
    .{ "RGB_MODE_KNIGHT", 30768 },
    .{ "RGB_MODE_XMAS", 30769 },
    .{ "RGB_MODE_GRADIENT", 30770 },
    .{ "RGB_MODE_RGBTEST", 30771 },
    .{ "RGB_MODE_TWINKLE", 30772 },
    .{ "QK_RGB_MATRIX_ON", 30784 },
    .{ "QK_RGB_MATRIX_OFF", 30785 },
    .{ "QK_RGB_MATRIX_TOGGLE", 30786 },
    .{ "QK_RGB_MATRIX_MODE_NEXT", 30787 },
    .{ "QK_RGB_MATRIX_MODE_PREVIOUS", 30788 },
    .{ "QK_RGB_MATRIX_HUE_UP", 30789 },
    .{ "QK_RGB_MATRIX_HUE_DOWN", 30790 },
    .{ "QK_RGB_MATRIX_SATURATION_UP", 30791 },
    .{ "QK_RGB_MATRIX_SATURATION_DOWN", 30792 },
    .{ "QK_RGB_MATRIX_VALUE_UP", 30793 },
    .{ "QK_RGB_MATRIX_VALUE_DOWN", 30794 },
    .{ "QK_RGB_MATRIX_SPEED_UP", 30795 },
    .{ "QK_RGB_MATRIX_SPEED_DOWN", 30796 },
    .{ "QK_BOOTLOADER", 31744 },
    .{ "QK_REBOOT", 31745 },
    .{ "QK_DEBUG_TOGGLE", 31746 },
    .{ "QK_CLEAR_EEPROM", 31747 },
    .{ "QK_MAKE", 31748 },
    .{ "QK_AUTO_SHIFT_DOWN", 31760 },
    .{ "QK_AUTO_SHIFT_UP", 31761 },
    .{ "QK_AUTO_SHIFT_REPORT", 31762 },
    .{ "QK_AUTO_SHIFT_ON", 31763 },
    .{ "QK_AUTO_SHIFT_OFF", 31764 },
    .{ "QK_AUTO_SHIFT_TOGGLE", 31765 },
    .{ "QK_GRAVE_ESCAPE", 31766 },
    .{ "QK_VELOCIKEY_TOGGLE", 31767 },
    .{ "QK_SPACE_CADET_LEFT_CTRL_PARENTHESIS_OPEN", 31768 },
    .{ "QK_SPACE_CADET_RIGHT_CTRL_PARENTHESIS_CLOSE", 31769 },
    .{ "QK_SPACE_CADET_LEFT_SHIFT_PARENTHESIS_OPEN", 31770 },
    .{ "QK_SPACE_CADET_RIGHT_SHIFT_PARENTHESIS_CLOSE", 31771 },
    .{ "QK_SPACE_CADET_LEFT_ALT_PARENTHESIS_OPEN", 31772 },
    .{ "QK_SPACE_CADET_RIGHT_ALT_PARENTHESIS_CLOSE", 31773 },
    .{ "QK_SPACE_CADET_RIGHT_SHIFT_ENTER", 31774 },
    .{ "QK_UNICODE_MODE_NEXT", 31792 },
    .{ "QK_UNICODE_MODE_PREVIOUS", 31793 },
    .{ "QK_UNICODE_MODE_MACOS", 31794 },
    .{ "QK_UNICODE_MODE_LINUX", 31795 },
    .{ "QK_UNICODE_MODE_WINDOWS", 31796 },
    .{ "QK_UNICODE_MODE_BSD", 31797 },
    .{ "QK_UNICODE_MODE_WINCOMPOSE", 31798 },
    .{ "QK_UNICODE_MODE_EMACS", 31799 },
    .{ "QK_HAPTIC_ON", 31808 },
    .{ "QK_HAPTIC_OFF", 31809 },
    .{ "QK_HAPTIC_TOGGLE", 31810 },
    .{ "QK_HAPTIC_RESET", 31811 },
    .{ "QK_HAPTIC_FEEDBACK_TOGGLE", 31812 },
    .{ "QK_HAPTIC_BUZZ_TOGGLE", 31813 },
    .{ "QK_HAPTIC_MODE_NEXT", 31814 },
    .{ "QK_HAPTIC_MODE_PREVIOUS", 31815 },
    .{ "QK_HAPTIC_CONTINUOUS_TOGGLE", 31816 },
    .{ "QK_HAPTIC_CONTINUOUS_UP", 31817 },
    .{ "QK_HAPTIC_CONTINUOUS_DOWN", 31818 },
    .{ "QK_HAPTIC_DWELL_UP", 31819 },
    .{ "QK_HAPTIC_DWELL_DOWN", 31820 },
    .{ "QK_COMBO_ON", 31824 },
    .{ "QK_COMBO_OFF", 31825 },
    .{ "QK_COMBO_TOGGLE", 31826 },
    .{ "QK_DYNAMIC_MACRO_RECORD_START_1", 31827 },
    .{ "QK_DYNAMIC_MACRO_RECORD_START_2", 31828 },
    .{ "QK_DYNAMIC_MACRO_RECORD_STOP", 31829 },
    .{ "QK_DYNAMIC_MACRO_PLAY_1", 31830 },
    .{ "QK_DYNAMIC_MACRO_PLAY_2", 31831 },
    .{ "QK_LEADER", 31832 },
    .{ "QK_LOCK", 31833 },
    .{ "QK_ONE_SHOT_ON", 31834 },
    .{ "QK_ONE_SHOT_OFF", 31835 },
    .{ "QK_ONE_SHOT_TOGGLE", 31836 },
    .{ "QK_KEY_OVERRIDE_TOGGLE", 31837 },
    .{ "QK_KEY_OVERRIDE_ON", 31838 },
    .{ "QK_KEY_OVERRIDE_OFF", 31839 },
    .{ "QK_SECURE_LOCK", 31840 },
    .{ "QK_SECURE_UNLOCK", 31841 },
    .{ "QK_SECURE_TOGGLE", 31842 },
    .{ "QK_SECURE_REQUEST", 31843 },
    .{ "QK_DYNAMIC_TAPPING_TERM_PRINT", 31856 },
    .{ "QK_DYNAMIC_TAPPING_TERM_UP", 31857 },
    .{ "QK_DYNAMIC_TAPPING_TERM_DOWN", 31858 },
    .{ "QK_CAPS_WORD_TOGGLE", 31859 },
    .{ "QK_AUTOCORRECT_ON", 31860 },
    .{ "QK_AUTOCORRECT_OFF", 31861 },
    .{ "QK_AUTOCORRECT_TOGGLE", 31862 },
    .{ "QK_TRI_LAYER_LOWER", 31863 },
    .{ "QK_TRI_LAYER_UPPER", 31864 },
    .{ "QK_REPEAT_KEY", 31865 },
    .{ "QK_ALT_REPEAT_KEY", 31866 },
    .{ "QK_LAYER_LOCK", 31867 },
    .{ "QK_KB_0", 32256 },
    .{ "QK_KB_1", 32257 },
    .{ "QK_KB_2", 32258 },
    .{ "QK_KB_3", 32259 },
    .{ "QK_KB_4", 32260 },
    .{ "QK_KB_5", 32261 },
    .{ "QK_KB_6", 32262 },
    .{ "QK_KB_7", 32263 },
    .{ "QK_KB_8", 32264 },
    .{ "QK_KB_9", 32265 },
    .{ "QK_KB_10", 32266 },
    .{ "QK_KB_11", 32267 },
    .{ "QK_KB_12", 32268 },
    .{ "QK_KB_13", 32269 },
    .{ "QK_KB_14", 32270 },
    .{ "QK_KB_15", 32271 },
    .{ "QK_KB_16", 32272 },
    .{ "QK_KB_17", 32273 },
    .{ "QK_KB_18", 32274 },
    .{ "QK_KB_19", 32275 },
    .{ "QK_KB_20", 32276 },
    .{ "QK_KB_21", 32277 },
    .{ "QK_KB_22", 32278 },
    .{ "QK_KB_23", 32279 },
    .{ "QK_KB_24", 32280 },
    .{ "QK_KB_25", 32281 },
    .{ "QK_KB_26", 32282 },
    .{ "QK_KB_27", 32283 },
    .{ "QK_KB_28", 32284 },
    .{ "QK_KB_29", 32285 },
    .{ "QK_KB_30", 32286 },
    .{ "QK_KB_31", 32287 },
    .{ "QK_USER_0", 32320 },
    .{ "QK_USER_1", 32321 },
    .{ "QK_USER_2", 32322 },
    .{ "QK_USER_3", 32323 },
    .{ "QK_USER_4", 32324 },
    .{ "QK_USER_5", 32325 },
    .{ "QK_USER_6", 32326 },
    .{ "QK_USER_7", 32327 },
    .{ "QK_USER_8", 32328 },
    .{ "QK_USER_9", 32329 },
    .{ "QK_USER_10", 32330 },
    .{ "QK_USER_11", 32331 },
    .{ "QK_USER_12", 32332 },
    .{ "QK_USER_13", 32333 },
    .{ "QK_USER_14", 32334 },
    .{ "QK_USER_15", 32335 },
    .{ "QK_USER_16", 32336 },
    .{ "QK_USER_17", 32337 },
    .{ "QK_USER_18", 32338 },
    .{ "QK_USER_19", 32339 },
    .{ "QK_USER_20", 32340 },
    .{ "QK_USER_21", 32341 },
    .{ "QK_USER_22", 32342 },
    .{ "QK_USER_23", 32343 },
    .{ "QK_USER_24", 32344 },
    .{ "QK_USER_25", 32345 },
    .{ "QK_USER_26", 32346 },
    .{ "QK_USER_27", 32347 },
    .{ "QK_USER_28", 32348 },
    .{ "QK_USER_29", 32349 },
    .{ "QK_USER_30", 32350 },
    .{ "QK_USER_31", 32351 },
    .{ "XXXXXXX", 0 },
    .{ "_______", 1 },
    .{ "KC_TRNS", 1 },
    .{ "KC_ENT", 40 },
    .{ "KC_ESC", 41 },
    .{ "KC_BSPC", 42 },
    .{ "KC_SPC", 44 },
    .{ "KC_MINS", 45 },
    .{ "KC_EQL", 46 },
    .{ "KC_LBRC", 47 },
    .{ "KC_RBRC", 48 },
    .{ "KC_BSLS", 49 },
    .{ "KC_NUHS", 50 },
    .{ "KC_SCLN", 51 },
    .{ "KC_QUOT", 52 },
    .{ "KC_GRV", 53 },
    .{ "KC_COMM", 54 },
    .{ "KC_SLSH", 56 },
    .{ "KC_CAPS", 57 },
    .{ "KC_PSCR", 70 },
    .{ "KC_SCRL", 71 },
    .{ "KC_BRMD", 71 },
    .{ "KC_PAUS", 72 },
    .{ "KC_BRK", 72 },
    .{ "KC_BRMU", 72 },
    .{ "KC_INS", 73 },
    .{ "KC_PGUP", 75 },
    .{ "KC_DEL", 76 },
    .{ "KC_PGDN", 78 },
    .{ "KC_RGHT", 79 },
    .{ "KC_NUM", 83 },
    .{ "KC_PSLS", 84 },
    .{ "KC_PAST", 85 },
    .{ "KC_PMNS", 86 },
    .{ "KC_PPLS", 87 },
    .{ "KC_PENT", 88 },
    .{ "KC_P1", 89 },
    .{ "KC_P2", 90 },
    .{ "KC_P3", 91 },
    .{ "KC_P4", 92 },
    .{ "KC_P5", 93 },
    .{ "KC_P6", 94 },
    .{ "KC_P7", 95 },
    .{ "KC_P8", 96 },
    .{ "KC_P9", 97 },
    .{ "KC_P0", 98 },
    .{ "KC_PDOT", 99 },
    .{ "KC_NUBS", 100 },
    .{ "KC_APP", 101 },
    .{ "KC_PEQL", 103 },
    .{ "KC_EXEC", 116 },
    .{ "KC_SLCT", 119 },
    .{ "KC_AGIN", 121 },
    .{ "KC_PSTE", 125 },
    .{ "KC_LCAP", 130 },
    .{ "KC_LNUM", 131 },
    .{ "KC_LSCR", 132 },
    .{ "KC_PCMM", 133 },
    .{ "KC_INT1", 135 },
    .{ "KC_INT2", 136 },
    .{ "KC_INT3", 137 },
    .{ "KC_INT4", 138 },
    .{ "KC_INT5", 139 },
    .{ "KC_INT6", 140 },
    .{ "KC_INT7", 141 },
    .{ "KC_INT8", 142 },
    .{ "KC_INT9", 143 },
    .{ "KC_LNG1", 144 },
    .{ "KC_LNG2", 145 },
    .{ "KC_LNG3", 146 },
    .{ "KC_LNG4", 147 },
    .{ "KC_LNG5", 148 },
    .{ "KC_LNG6", 149 },
    .{ "KC_LNG7", 150 },
    .{ "KC_LNG8", 151 },
    .{ "KC_LNG9", 152 },
    .{ "KC_ERAS", 153 },
    .{ "KC_SYRQ", 154 },
    .{ "KC_CNCL", 155 },
    .{ "KC_CLR", 156 },
    .{ "KC_PRIR", 157 },
    .{ "KC_RETN", 158 },
    .{ "KC_SEPR", 159 },
    .{ "KC_CLAG", 162 },
    .{ "KC_CRSL", 163 },
    .{ "KC_EXSL", 164 },
    .{ "KC_PWR", 165 },
    .{ "KC_SLEP", 166 },
    .{ "KC_WAKE", 167 },
    .{ "KC_MUTE", 168 },
    .{ "KC_VOLU", 169 },
    .{ "KC_VOLD", 170 },
    .{ "KC_MNXT", 171 },
    .{ "KC_MPRV", 172 },
    .{ "KC_MSTP", 173 },
    .{ "KC_MPLY", 174 },
    .{ "KC_MSEL", 175 },
    .{ "KC_EJCT", 176 },
    .{ "KC_CALC", 178 },
    .{ "KC_MYCM", 179 },
    .{ "KC_WSCH", 180 },
    .{ "KC_WHOM", 181 },
    .{ "KC_WBAK", 182 },
    .{ "KC_WFWD", 183 },
    .{ "KC_WSTP", 184 },
    .{ "KC_WREF", 185 },
    .{ "KC_WFAV", 186 },
    .{ "KC_MFFD", 187 },
    .{ "KC_MRWD", 188 },
    .{ "KC_BRIU", 189 },
    .{ "KC_BRID", 190 },
    .{ "KC_CPNL", 191 },
    .{ "KC_ASST", 192 },
    .{ "KC_MCTL", 193 },
    .{ "KC_LPAD", 194 },
    .{ "MS_UP", 205 },
    .{ "MS_DOWN", 206 },
    .{ "MS_LEFT", 207 },
    .{ "MS_RGHT", 208 },
    .{ "MS_BTN1", 209 },
    .{ "MS_BTN2", 210 },
    .{ "MS_BTN3", 211 },
    .{ "MS_BTN4", 212 },
    .{ "MS_BTN5", 213 },
    .{ "MS_BTN6", 214 },
    .{ "MS_BTN7", 215 },
    .{ "MS_BTN8", 216 },
    .{ "MS_WHLU", 217 },
    .{ "MS_WHLD", 218 },
    .{ "MS_WHLL", 219 },
    .{ "MS_WHLR", 220 },
    .{ "MS_ACL0", 221 },
    .{ "MS_ACL1", 222 },
    .{ "MS_ACL2", 223 },
    .{ "KC_LCTL", 224 },
    .{ "KC_LSFT", 225 },
    .{ "KC_LALT", 226 },
    .{ "KC_LOPT", 226 },
    .{ "KC_LGUI", 227 },
    .{ "KC_LCMD", 227 },
    .{ "KC_LWIN", 227 },
    .{ "KC_RCTL", 228 },
    .{ "KC_RSFT", 229 },
    .{ "KC_RALT", 230 },
    .{ "KC_ROPT", 230 },
    .{ "KC_ALGR", 230 },
    .{ "KC_RGUI", 231 },
    .{ "KC_RCMD", 231 },
    .{ "KC_RWIN", 231 },
    .{ "SH_TOGG", 22256 },
    .{ "SH_TT", 22257 },
    .{ "SH_MON", 22258 },
    .{ "SH_MOFF", 22259 },
    .{ "SH_OFF", 22260 },
    .{ "SH_ON", 22261 },
    .{ "SH_OS", 22262 },
    .{ "CL_SWAP", 28672 },
    .{ "CL_NORM", 28673 },
    .{ "CL_TOGG", 28674 },
    .{ "CL_CAPS", 28675 },
    .{ "CL_CTRL", 28676 },
    .{ "AG_LSWP", 28677 },
    .{ "AG_LNRM", 28678 },
    .{ "AG_RSWP", 28679 },
    .{ "AG_RNRM", 28680 },
    .{ "GU_ON", 28681 },
    .{ "GU_OFF", 28682 },
    .{ "GU_TOGG", 28683 },
    .{ "GE_SWAP", 28684 },
    .{ "GE_NORM", 28685 },
    .{ "BS_SWAP", 28686 },
    .{ "BS_NORM", 28687 },
    .{ "BS_TOGG", 28688 },
    .{ "NK_ON", 28689 },
    .{ "NK_OFF", 28690 },
    .{ "NK_TOGG", 28691 },
    .{ "AG_SWAP", 28692 },
    .{ "AG_NORM", 28693 },
    .{ "AG_TOGG", 28694 },
    .{ "CG_LSWP", 28695 },
    .{ "CG_LNRM", 28696 },
    .{ "CG_RSWP", 28697 },
    .{ "CG_RNRM", 28698 },
    .{ "CG_SWAP", 28699 },
    .{ "CG_NORM", 28700 },
    .{ "CG_TOGG", 28701 },
    .{ "EH_LEFT", 28702 },
    .{ "EH_RGHT", 28703 },
    .{ "EC_SWAP", 28704 },
    .{ "EC_NORM", 28705 },
    .{ "EC_TOGG", 28706 },
    .{ "MI_ON", 28928 },
    .{ "MI_OFF", 28929 },
    .{ "MI_TOGG", 28930 },
    .{ "MI_C", 28931 },
    .{ "MI_Cs", 28932 },
    .{ "MI_Db", 28932 },
    .{ "MI_D", 28933 },
    .{ "MI_Ds", 28934 },
    .{ "MI_Eb", 28934 },
    .{ "MI_E", 28935 },
    .{ "MI_F", 28936 },
    .{ "MI_Fs", 28937 },
    .{ "MI_Gb", 28937 },
    .{ "MI_G", 28938 },
    .{ "MI_Gs", 28939 },
    .{ "MI_Ab", 28939 },
    .{ "MI_A", 28940 },
    .{ "MI_As", 28941 },
    .{ "MI_Bb", 28941 },
    .{ "MI_B", 28942 },
    .{ "MI_C1", 28943 },
    .{ "MI_Cs1", 28944 },
    .{ "MI_Db1", 28944 },
    .{ "MI_D1", 28945 },
    .{ "MI_Ds1", 28946 },
    .{ "MI_Eb1", 28946 },
    .{ "MI_E1", 28947 },
    .{ "MI_F1", 28948 },
    .{ "MI_Fs1", 28949 },
    .{ "MI_Gb1", 28949 },
    .{ "MI_G1", 28950 },
    .{ "MI_Gs1", 28951 },
    .{ "MI_Ab1", 28951 },
    .{ "MI_A1", 28952 },
    .{ "MI_As1", 28953 },
    .{ "MI_Bb1", 28953 },
    .{ "MI_B1", 28954 },
    .{ "MI_C2", 28955 },
    .{ "MI_Cs2", 28956 },
    .{ "MI_Db2", 28956 },
    .{ "MI_D2", 28957 },
    .{ "MI_Ds2", 28958 },
    .{ "MI_Eb2", 28958 },
    .{ "MI_E2", 28959 },
    .{ "MI_F2", 28960 },
    .{ "MI_Fs2", 28961 },
    .{ "MI_Gb2", 28961 },
    .{ "MI_G2", 28962 },
    .{ "MI_Gs2", 28963 },
    .{ "MI_Ab2", 28963 },
    .{ "MI_A2", 28964 },
    .{ "MI_As2", 28965 },
    .{ "MI_Bb2", 28965 },
    .{ "MI_B2", 28966 },
    .{ "MI_C3", 28967 },
    .{ "MI_Cs3", 28968 },
    .{ "MI_Db3", 28968 },
    .{ "MI_D3", 28969 },
    .{ "MI_Ds3", 28970 },
    .{ "MI_Eb3", 28970 },
    .{ "MI_E3", 28971 },
    .{ "MI_F3", 28972 },
    .{ "MI_Fs3", 28973 },
    .{ "MI_Gb3", 28973 },
    .{ "MI_G3", 28974 },
    .{ "MI_Gs3", 28975 },
    .{ "MI_Ab3", 28975 },
    .{ "MI_A3", 28976 },
    .{ "MI_As3", 28977 },
    .{ "MI_Bb3", 28977 },
    .{ "MI_B3", 28978 },
    .{ "MI_C4", 28979 },
    .{ "MI_Cs4", 28980 },
    .{ "MI_Db4", 28980 },
    .{ "MI_D4", 28981 },
    .{ "MI_Ds4", 28982 },
    .{ "MI_Eb4", 28982 },
    .{ "MI_E4", 28983 },
    .{ "MI_F4", 28984 },
    .{ "MI_Fs4", 28985 },
    .{ "MI_Gb4", 28985 },
    .{ "MI_G4", 28986 },
    .{ "MI_Gs4", 28987 },
    .{ "MI_Ab4", 28987 },
    .{ "MI_A4", 28988 },
    .{ "MI_As4", 28989 },
    .{ "MI_Bb4", 28989 },
    .{ "MI_B4", 28990 },
    .{ "MI_C5", 28991 },
    .{ "MI_Cs5", 28992 },
    .{ "MI_Db5", 28992 },
    .{ "MI_D5", 28993 },
    .{ "MI_Ds5", 28994 },
    .{ "MI_Eb5", 28994 },
    .{ "MI_E5", 28995 },
    .{ "MI_F5", 28996 },
    .{ "MI_Fs5", 28997 },
    .{ "MI_Gb5", 28997 },
    .{ "MI_G5", 28998 },
    .{ "MI_Gs5", 28999 },
    .{ "MI_Ab5", 28999 },
    .{ "MI_A5", 29000 },
    .{ "MI_As5", 29001 },
    .{ "MI_Bb5", 29001 },
    .{ "MI_B5", 29002 },
    .{ "MI_OCN2", 29003 },
    .{ "MI_OCN1", 29004 },
    .{ "MI_OC0", 29005 },
    .{ "MI_OC1", 29006 },
    .{ "MI_OC2", 29007 },
    .{ "MI_OC3", 29008 },
    .{ "MI_OC4", 29009 },
    .{ "MI_OC5", 29010 },
    .{ "MI_OC6", 29011 },
    .{ "MI_OC7", 29012 },
    .{ "MI_OCTD", 29013 },
    .{ "MI_OCTU", 29014 },
    .{ "MI_TRN6", 29015 },
    .{ "MI_TRN5", 29016 },
    .{ "MI_TRN4", 29017 },
    .{ "MI_TRN3", 29018 },
    .{ "MI_TRN2", 29019 },
    .{ "MI_TRN1", 29020 },
    .{ "MI_TR0", 29021 },
    .{ "MI_TR1", 29022 },
    .{ "MI_TR2", 29023 },
    .{ "MI_TR3", 29024 },
    .{ "MI_TR4", 29025 },
    .{ "MI_TR5", 29026 },
    .{ "MI_TR6", 29027 },
    .{ "MI_TRSD", 29028 },
    .{ "MI_TRSU", 29029 },
    .{ "MI_VL0", 29030 },
    .{ "MI_VL1", 29031 },
    .{ "MI_VL2", 29032 },
    .{ "MI_VL3", 29033 },
    .{ "MI_VL4", 29034 },
    .{ "MI_VL5", 29035 },
    .{ "MI_VL6", 29036 },
    .{ "MI_VL7", 29037 },
    .{ "MI_VL8", 29038 },
    .{ "MI_VL9", 29039 },
    .{ "MI_VL10", 29040 },
    .{ "MI_VELD", 29041 },
    .{ "MI_VELU", 29042 },
    .{ "MI_CH1", 29043 },
    .{ "MI_CH2", 29044 },
    .{ "MI_CH3", 29045 },
    .{ "MI_CH4", 29046 },
    .{ "MI_CH5", 29047 },
    .{ "MI_CH6", 29048 },
    .{ "MI_CH7", 29049 },
    .{ "MI_CH8", 29050 },
    .{ "MI_CH9", 29051 },
    .{ "MI_CH10", 29052 },
    .{ "MI_CH11", 29053 },
    .{ "MI_CH12", 29054 },
    .{ "MI_CH13", 29055 },
    .{ "MI_CH14", 29056 },
    .{ "MI_CH15", 29057 },
    .{ "MI_CH16", 29058 },
    .{ "MI_CHND", 29059 },
    .{ "MI_CHNU", 29060 },
    .{ "MI_AOFF", 29061 },
    .{ "MI_SUST", 29062 },
    .{ "MI_PORT", 29063 },
    .{ "MI_SOST", 29064 },
    .{ "MI_SOFT", 29065 },
    .{ "MI_LEG", 29066 },
    .{ "MI_MOD", 29067 },
    .{ "MI_MODD", 29068 },
    .{ "MI_MODU", 29069 },
    .{ "MI_BNDD", 29070 },
    .{ "MI_BNDU", 29071 },
    .{ "SQ_ON", 29184 },
    .{ "SQ_OFF", 29185 },
    .{ "SQ_TOGG", 29186 },
    .{ "SQ_TMPD", 29187 },
    .{ "SQ_TMPU", 29188 },
    .{ "SQ_RESD", 29189 },
    .{ "SQ_RESU", 29190 },
    .{ "SQ_SALL", 29191 },
    .{ "SQ_SCLR", 29192 },
    .{ "JS_0", 29696 },
    .{ "JS_1", 29697 },
    .{ "JS_2", 29698 },
    .{ "JS_3", 29699 },
    .{ "JS_4", 29700 },
    .{ "JS_5", 29701 },
    .{ "JS_6", 29702 },
    .{ "JS_7", 29703 },
    .{ "JS_8", 29704 },
    .{ "JS_9", 29705 },
    .{ "JS_10", 29706 },
    .{ "JS_11", 29707 },
    .{ "JS_12", 29708 },
    .{ "JS_13", 29709 },
    .{ "JS_14", 29710 },
    .{ "JS_15", 29711 },
    .{ "JS_16", 29712 },
    .{ "JS_17", 29713 },
    .{ "JS_18", 29714 },
    .{ "JS_19", 29715 },
    .{ "JS_20", 29716 },
    .{ "JS_21", 29717 },
    .{ "JS_22", 29718 },
    .{ "JS_23", 29719 },
    .{ "JS_24", 29720 },
    .{ "JS_25", 29721 },
    .{ "JS_26", 29722 },
    .{ "JS_27", 29723 },
    .{ "JS_28", 29724 },
    .{ "JS_29", 29725 },
    .{ "JS_30", 29726 },
    .{ "JS_31", 29727 },
    .{ "PB_1", 29760 },
    .{ "PB_2", 29761 },
    .{ "PB_3", 29762 },
    .{ "PB_4", 29763 },
    .{ "PB_5", 29764 },
    .{ "PB_6", 29765 },
    .{ "PB_7", 29766 },
    .{ "PB_8", 29767 },
    .{ "PB_9", 29768 },
    .{ "PB_10", 29769 },
    .{ "PB_11", 29770 },
    .{ "PB_12", 29771 },
    .{ "PB_13", 29772 },
    .{ "PB_14", 29773 },
    .{ "PB_15", 29774 },
    .{ "PB_16", 29775 },
    .{ "PB_17", 29776 },
    .{ "PB_18", 29777 },
    .{ "PB_19", 29778 },
    .{ "PB_20", 29779 },
    .{ "PB_21", 29780 },
    .{ "PB_22", 29781 },
    .{ "PB_23", 29782 },
    .{ "PB_24", 29783 },
    .{ "PB_25", 29784 },
    .{ "PB_26", 29785 },
    .{ "PB_27", 29786 },
    .{ "PB_28", 29787 },
    .{ "PB_29", 29788 },
    .{ "PB_30", 29789 },
    .{ "PB_31", 29790 },
    .{ "PB_32", 29791 },
    .{ "AU_ON", 29824 },
    .{ "AU_OFF", 29825 },
    .{ "AU_TOGG", 29826 },
    .{ "CK_TOGG", 29834 },
    .{ "CK_ON", 29835 },
    .{ "CK_OFF", 29836 },
    .{ "CK_UP", 29837 },
    .{ "CK_DOWN", 29838 },
    .{ "CK_RST", 29839 },
    .{ "MU_ON", 29840 },
    .{ "MU_OFF", 29841 },
    .{ "MU_TOGG", 29842 },
    .{ "MU_NEXT", 29843 },
    .{ "AU_NEXT", 29844 },
    .{ "AU_PREV", 29845 },
    .{ "MC_0", 30464 },
    .{ "MC_1", 30465 },
    .{ "MC_2", 30466 },
    .{ "MC_3", 30467 },
    .{ "MC_4", 30468 },
    .{ "MC_5", 30469 },
    .{ "MC_6", 30470 },
    .{ "MC_7", 30471 },
    .{ "MC_8", 30472 },
    .{ "MC_9", 30473 },
    .{ "MC_10", 30474 },
    .{ "MC_11", 30475 },
    .{ "MC_12", 30476 },
    .{ "MC_13", 30477 },
    .{ "MC_14", 30478 },
    .{ "MC_15", 30479 },
    .{ "MC_16", 30480 },
    .{ "MC_17", 30481 },
    .{ "MC_18", 30482 },
    .{ "MC_19", 30483 },
    .{ "MC_20", 30484 },
    .{ "MC_21", 30485 },
    .{ "MC_22", 30486 },
    .{ "MC_23", 30487 },
    .{ "MC_24", 30488 },
    .{ "MC_25", 30489 },
    .{ "MC_26", 30490 },
    .{ "MC_27", 30491 },
    .{ "MC_28", 30492 },
    .{ "MC_29", 30493 },
    .{ "MC_30", 30494 },
    .{ "MC_31", 30495 },
    .{ "OU_AUTO", 30592 },
    .{ "OU_NEXT", 30593 },
    .{ "OU_PREV", 30594 },
    .{ "OU_NONE", 30595 },
    .{ "OU_USB", 30596 },
    .{ "OU_2P4G", 30597 },
    .{ "OU_BT", 30598 },
    .{ "BT_NEXT", 30608 },
    .{ "BT_PREV", 30609 },
    .{ "BT_UNPR", 30610 },
    .{ "BT_PRF1", 30611 },
    .{ "BT_PRF2", 30612 },
    .{ "BT_PRF3", 30613 },
    .{ "BT_PRF4", 30614 },
    .{ "BT_PRF5", 30615 },
    .{ "BL_ON", 30720 },
    .{ "BL_OFF", 30721 },
    .{ "BL_TOGG", 30722 },
    .{ "BL_DOWN", 30723 },
    .{ "BL_UP", 30724 },
    .{ "BL_STEP", 30725 },
    .{ "BL_BRTG", 30726 },
    .{ "LM_ON", 30736 },
    .{ "LM_OFF", 30737 },
    .{ "LM_TOGG", 30738 },
    .{ "LM_NEXT", 30739 },
    .{ "LM_PREV", 30740 },
    .{ "LM_BRIU", 30741 },
    .{ "LM_BRID", 30742 },
    .{ "LM_SPDU", 30743 },
    .{ "LM_SPDD", 30744 },
    .{ "UG_TOGG", 30752 },
    .{ "UG_NEXT", 30753 },
    .{ "UG_PREV", 30754 },
    .{ "UG_HUEU", 30755 },
    .{ "UG_HUED", 30756 },
    .{ "UG_SATU", 30757 },
    .{ "UG_SATD", 30758 },
    .{ "UG_VALU", 30759 },
    .{ "UG_VALD", 30760 },
    .{ "UG_SPDU", 30761 },
    .{ "UG_SPDD", 30762 },
    .{ "RGB_M_P", 30763 },
    .{ "RGB_M_B", 30764 },
    .{ "RGB_M_R", 30765 },
    .{ "RGB_M_SW", 30766 },
    .{ "RGB_M_SN", 30767 },
    .{ "RGB_M_K", 30768 },
    .{ "RGB_M_X", 30769 },
    .{ "RGB_M_G", 30770 },
    .{ "RGB_M_T", 30771 },
    .{ "RGB_M_TW", 30772 },
    .{ "RM_ON", 30784 },
    .{ "RM_OFF", 30785 },
    .{ "RM_TOGG", 30786 },
    .{ "RM_NEXT", 30787 },
    .{ "RM_PREV", 30788 },
    .{ "RM_HUEU", 30789 },
    .{ "RM_HUED", 30790 },
    .{ "RM_SATU", 30791 },
    .{ "RM_SATD", 30792 },
    .{ "RM_VALU", 30793 },
    .{ "RM_VALD", 30794 },
    .{ "RM_SPDU", 30795 },
    .{ "RM_SPDD", 30796 },
    .{ "QK_BOOT", 31744 },
    .{ "QK_RBT", 31745 },
    .{ "DB_TOGG", 31746 },
    .{ "EE_CLR", 31747 },
    .{ "AS_DOWN", 31760 },
    .{ "AS_UP", 31761 },
    .{ "AS_RPT", 31762 },
    .{ "AS_ON", 31763 },
    .{ "AS_OFF", 31764 },
    .{ "AS_TOGG", 31765 },
    .{ "QK_GESC", 31766 },
    .{ "VK_TOGG", 31767 },
    .{ "SC_LCPO", 31768 },
    .{ "SC_RCPC", 31769 },
    .{ "SC_LSPO", 31770 },
    .{ "SC_RSPC", 31771 },
    .{ "SC_LAPO", 31772 },
    .{ "SC_RAPC", 31773 },
    .{ "SC_SENT", 31774 },
    .{ "UC_NEXT", 31792 },
    .{ "UC_PREV", 31793 },
    .{ "UC_MAC", 31794 },
    .{ "UC_LINX", 31795 },
    .{ "UC_WIN", 31796 },
    .{ "UC_BSD", 31797 },
    .{ "UC_WINC", 31798 },
    .{ "UC_EMAC", 31799 },
    .{ "HF_ON", 31808 },
    .{ "HF_OFF", 31809 },
    .{ "HF_TOGG", 31810 },
    .{ "HF_RST", 31811 },
    .{ "HF_FDBK", 31812 },
    .{ "HF_BUZZ", 31813 },
    .{ "HF_NEXT", 31814 },
    .{ "HF_PREV", 31815 },
    .{ "HF_CONT", 31816 },
    .{ "HF_CONU", 31817 },
    .{ "HF_COND", 31818 },
    .{ "HF_DWLU", 31819 },
    .{ "HF_DWLD", 31820 },
    .{ "CM_ON", 31824 },
    .{ "CM_OFF", 31825 },
    .{ "CM_TOGG", 31826 },
    .{ "DM_REC1", 31827 },
    .{ "DM_REC2", 31828 },
    .{ "DM_RSTP", 31829 },
    .{ "DM_PLY1", 31830 },
    .{ "DM_PLY2", 31831 },
    .{ "QK_LEAD", 31832 },
    .{ "OS_ON", 31834 },
    .{ "OS_OFF", 31835 },
    .{ "OS_TOGG", 31836 },
    .{ "KO_TOGG", 31837 },
    .{ "KO_ON", 31838 },
    .{ "KO_OFF", 31839 },
    .{ "SE_LOCK", 31840 },
    .{ "SE_UNLK", 31841 },
    .{ "SE_TOGG", 31842 },
    .{ "SE_REQ", 31843 },
    .{ "DT_PRNT", 31856 },
    .{ "DT_UP", 31857 },
    .{ "DT_DOWN", 31858 },
    .{ "CW_TOGG", 31859 },
    .{ "AC_ON", 31860 },
    .{ "AC_OFF", 31861 },
    .{ "AC_TOGG", 31862 },
    .{ "TL_LOWR", 31863 },
    .{ "TL_UPPR", 31864 },
    .{ "QK_REP", 31865 },
    .{ "QK_AREP", 31866 },
    .{ "QK_LLCK", 31867 },
    // Aliases from keymap_us.h
    .{ "KC_TILD", 53 }, // ~
    .{ "KC_EXLM", 30 }, // !
    .{ "KC_AT  ", 31 }, // @
    .{ "KC_HASH", 32 }, // #
    .{ "KC_DLR ", 33 }, // $
    .{ "KC_PERC", 34 }, // %
    .{ "KC_CIRC", 35 }, // ^
    .{ "KC_AMPR", 36 }, // &
    .{ "KC_ASTR", 37 }, // *
    .{ "KC_LPRN", 38 }, // (
    .{ "KC_RPRN", 39 }, // ")
    .{ "KC_UNDS", 45 }, // _
    .{ "KC_PLUS", 46 }, // +
    .{ "KC_LCBR", 47 }, // {
    .{ "KC_RCBR", 48 }, // }
    .{ "KC_PIPE", 49 }, // |
    .{ "KC_COLN", 51 }, // :
    .{ "KC_DQUO", 52 }, // "
    .{ "KC_LABK", 54 }, // <
    .{ "KC_RABK", 55 }, // >
    .{ "KC_QUES", 56 }, // ?

    .{ "KC_TILDE", 53 },
    .{ "KC_EXCLAIM", 30 },
    .{ "KC_DOLLAR", 33 },
    .{ "KC_PERCENT", 34 },
    .{ "KC_CIRCUMFLEX", 35 },
    .{ "KC_AMPERSAND", 36 },
    .{ "KC_ASTERISK", 37 },
    .{ "KC_LEFT_PAREN", 38 },
    .{ "KC_RIGHT_PAREN", 39 },
    .{ "KC_UNDERSCORE", 45 },
    .{ "KC_LEFT_CURLY_BRACE", 47 },
    .{ "KC_RIGHT_CURLY_BRACE", 48 },
    .{ "KC_COLON", 51 },
    .{ "KC_DOUBLE_QUOTE", 52 },
    .{ "KC_DQT", 52 },
    .{ "KC_LEFT_ANGLE_BRACKET", 54 },
    .{ "KC_LT", 54 },
    .{ "KC_RIGHT_ANGLE_BRACKET", 55 },
    .{ "KC_GT", 55 },
    .{ "KC_QUESTION", 56 },
    // End Aliases
    // Keyboard internal keycodes
    // MO(layer) - Momentary turn layer on
    .{ "MO(0)", -10 },
    .{ "MO(1)", -11 },
    .{ "MO(2)", -12 },
    .{ "MO(3)", -13 },
    .{ "MO(4)", -14 },
    .{ "MO(5)", -15 },
    .{ "MO(6)", -16 },
    .{ "MO(7)", -17 },
    .{ "MO(8)", -18 },
    .{ "MO(9)", -19 },
});

pub fn getKeycodeDefines(other: []const u8) i32 {
    return (KeycodeDefines.get(other) orelse 0);
}

pub const enum_qk_keycode_ranges = c_uint;
pub const enum_qk_keycode_defines = c_uint;
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 19);
pub const __clang_minor__ = @as(c_int, 1);
pub const __clang_patchlevel__ = @as(c_int, 0);
pub const __clang_version__ = "19.1.0 (https://github.com/ziglang/zig-bootstrap 46b9e66db90230fe62404b27b85a378ccf2c82c2)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __MEMORY_SCOPE_SYSTEM = @as(c_int, 0);
pub const __MEMORY_SCOPE_DEVICE = @as(c_int, 1);
pub const __MEMORY_SCOPE_WRKGRP = @as(c_int, 2);
pub const __MEMORY_SCOPE_WVFRNT = @as(c_int, 3);
pub const __MEMORY_SCOPE_SINGLE = @as(c_int, 4);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __FPCLASS_SNAN = @as(c_int, 0x0001);
pub const __FPCLASS_QNAN = @as(c_int, 0x0002);
pub const __FPCLASS_NEGINF = @as(c_int, 0x0004);
pub const __FPCLASS_NEGNORMAL = @as(c_int, 0x0008);
pub const __FPCLASS_NEGSUBNORMAL = @as(c_int, 0x0010);
pub const __FPCLASS_NEGZERO = @as(c_int, 0x0020);
pub const __FPCLASS_POSZERO = @as(c_int, 0x0040);
pub const __FPCLASS_POSSUBNORMAL = @as(c_int, 0x0080);
pub const __FPCLASS_POSNORMAL = @as(c_int, 0x0100);
pub const __FPCLASS_POSINF = @as(c_int, 0x0200);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 19.1.0 (https://github.com/ziglang/zig-bootstrap 46b9e66db90230fe62404b27b85a378ccf2c82c2)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-32";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const _LP64 = @as(c_int, 1);
pub const __LP64__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 64);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 8388608, .decimal);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 32);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 32);
pub const __INTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 8);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 4);
pub const __SIZEOF_WINT_T__ = @as(c_int, 4);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_long;
pub const __INTMAX_FMTd__ = "ld";
pub const __INTMAX_FMTi__ = "li";
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):95:9
pub const __UINTMAX_TYPE__ = c_ulong;
pub const __UINTMAX_FMTo__ = "lo";
pub const __UINTMAX_FMTu__ = "lu";
pub const __UINTMAX_FMTx__ = "lx";
pub const __UINTMAX_FMTX__ = "lX";
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):101:9
pub const __PTRDIFF_TYPE__ = c_long;
pub const __PTRDIFF_FMTd__ = "ld";
pub const __PTRDIFF_FMTi__ = "li";
pub const __INTPTR_TYPE__ = c_long;
pub const __INTPTR_FMTd__ = "ld";
pub const __INTPTR_FMTi__ = "li";
pub const __SIZE_TYPE__ = c_ulong;
pub const __SIZE_FMTo__ = "lo";
pub const __SIZE_FMTu__ = "lu";
pub const __SIZE_FMTx__ = "lx";
pub const __SIZE_FMTX__ = "lX";
pub const __WCHAR_TYPE__ = c_int;
pub const __WINT_TYPE__ = c_uint;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulong;
pub const __UINTPTR_FMTo__ = "lo";
pub const __UINTPTR_FMTu__ = "lu";
pub const __UINTPTR_FMTx__ = "lx";
pub const __UINTPTR_FMTX__ = "lX";
pub const __FLT16_DENORM_MIN__ = @as(f16, 5.9604644775390625e-8);
pub const __FLT16_NORM_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_EPSILON__ = @as(f16, 9.765625e-4);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MAX__ = @as(f16, 6.5504e+4);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT16_MIN__ = @as(f16, 6.103515625e-5);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_NORM_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_NORM_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_NORM_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_long;
pub const __INT64_FMTd__ = "ld";
pub const __INT64_FMTi__ = "li";
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `L`");
// (no file):202:9
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`");
// (no file):224:9
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulong;
pub const __UINT64_FMTo__ = "lo";
pub const __UINT64_FMTu__ = "lu";
pub const __UINT64_FMTx__ = "lx";
pub const __UINT64_FMTX__ = "lX";
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `UL`");
// (no file):232:9
pub const __UINT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __INT64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_long;
pub const __INT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "ld";
pub const __INT_LEAST64_FMTi__ = "li";
pub const __UINT_LEAST64_TYPE__ = c_ulong;
pub const __UINT_LEAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_LEAST64_FMTo__ = "lo";
pub const __UINT_LEAST64_FMTu__ = "lu";
pub const __UINT_LEAST64_FMTx__ = "lx";
pub const __UINT_LEAST64_FMTX__ = "lX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_long;
pub const __INT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_long, 9223372036854775807, .decimal);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "ld";
pub const __INT_FAST64_FMTi__ = "li";
pub const __UINT_FAST64_TYPE__ = c_ulong;
pub const __UINT_FAST64_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_ulong, 18446744073709551615, .decimal);
pub const __UINT_FAST64_FMTo__ = "lo";
pub const __UINT_FAST64_FMTu__ = "lu";
pub const __UINT_FAST64_FMTx__ = "lx";
pub const __UINT_FAST64_FMTX__ = "lX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __GCC_DESTRUCTIVE_SIZE = @as(c_int, 64);
pub const __GCC_CONSTRUCTIVE_SIZE = @as(c_int, 64);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __ELF__ = @as(c_int, 1);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):363:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `address_space`");
// (no file):364:9
pub const __k8 = @as(c_int, 1);
pub const __k8__ = @as(c_int, 1);
pub const __tune_k8__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __VAES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __VPCLMULQDQ__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __GFNI__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __PKU__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __SHSTK__ = @as(c_int, 1);
pub const __RDPID__ = @as(c_int, 1);
pub const __WAITPKG__ = @as(c_int, 1);
pub const __MOVDIRI__ = @as(c_int, 1);
pub const __MOVDIR64B__ = @as(c_int, 1);
pub const __PCONFIG__ = @as(c_int, 1);
pub const __PTWRITE__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __CRC32__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const unix = @as(c_int, 1);
pub const __unix = @as(c_int, 1);
pub const __unix__ = @as(c_int, 1);
pub const linux = @as(c_int, 1);
pub const __linux = @as(c_int, 1);
pub const __linux__ = @as(c_int, 1);
pub const __gnu_linux__ = @as(c_int, 1);
pub const __FLOAT128__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const __STDC_EMBED_NOT_FOUND__ = @as(c_int, 0);
pub const __STDC_EMBED_FOUND__ = @as(c_int, 1);
pub const __STDC_EMBED_EMPTY__ = @as(c_int, 2);
pub const _DEBUG = @as(c_int, 1);
pub const __GCC_HAVE_DWARF2_CFI_ASM = @as(c_int, 1);
pub inline fn IS_QK_BASIC(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_BASIC")) and (code <= getKeycodeDefines("QK_BASIC_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_BASIC")) and (code <= getKeycodeDefines("QK_BASIC_MAX"));
}
pub inline fn IS_QK_MODS(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_MODS")) and (code <= getKeycodeDefines("QK_MODS_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_MODS")) and (code <= getKeycodeDefines("QK_MODS_MAX"));
}
pub inline fn IS_QK_MOD_TAP(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_MOD_TAP")) and (code <= getKeycodeDefines("QK_MOD_TAP_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_MOD_TAP")) and (code <= getKeycodeDefines("QK_MOD_TAP_MAX"));
}
pub inline fn IS_QK_LAYER_TAP(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_LAYER_TAP")) and (code <= getKeycodeDefines("QK_LAYER_TAP_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_LAYER_TAP")) and (code <= getKeycodeDefines("QK_LAYER_TAP_MAX"));
}
pub inline fn IS_QK_LAYER_MOD(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_LAYER_MOD")) and (code <= getKeycodeDefines("QK_LAYER_MOD_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_LAYER_MOD")) and (code <= getKeycodeDefines("QK_LAYER_MOD_MAX"));
}
pub inline fn IS_QK_TO(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_TO")) and (code <= getKeycodeDefines("QK_TO_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_TO")) and (code <= getKeycodeDefines("QK_TO_MAX"));
}
pub inline fn IS_QK_MOMENTARY(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_MOMENTARY")) and (code <= getKeycodeDefines("QK_MOMENTARY_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_MOMENTARY")) and (code <= getKeycodeDefines("QK_MOMENTARY_MAX"));
}
pub inline fn IS_QK_DEF_LAYER(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_DEF_LAYER")) and (code <= getKeycodeDefines("QK_DEF_LAYER_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_DEF_LAYER")) and (code <= getKeycodeDefines("QK_DEF_LAYER_MAX"));
}
pub inline fn IS_QK_TOGGLE_LAYER(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_TOGGLE_LAYER")) and (code <= getKeycodeDefines("QK_TOGGLE_LAYER_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_TOGGLE_LAYER")) and (code <= getKeycodeDefines("QK_TOGGLE_LAYER_MAX"));
}
pub inline fn IS_QK_ONE_SHOT_LAYER(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_ONE_SHOT_LAYER")) and (code <= getKeycodeDefines("QK_ONE_SHOT_LAYER_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_ONE_SHOT_LAYER")) and (code <= getKeycodeDefines("QK_ONE_SHOT_LAYER_MAX"));
}
pub inline fn IS_QK_ONE_SHOT_MOD(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_ONE_SHOT_MOD")) and (code <= getKeycodeDefines("QK_ONE_SHOT_MOD_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_ONE_SHOT_MOD")) and (code <= getKeycodeDefines("QK_ONE_SHOT_MOD_MAX"));
}
pub inline fn IS_QK_LAYER_TAP_TOGGLE(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_LAYER_TAP_TOGGLE")) and (code <= getKeycodeDefines("QK_LAYER_TAP_TOGGLE_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_LAYER_TAP_TOGGLE")) and (code <= getKeycodeDefines("QK_LAYER_TAP_TOGGLE_MAX"));
}
pub inline fn IS_QK_PERSISTENT_DEF_LAYER(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_PERSISTENT_DEF_LAYER")) and (code <= getKeycodeDefines("QK_PERSISTENT_DEF_LAYER_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_PERSISTENT_DEF_LAYER")) and (code <= getKeycodeDefines("QK_PERSISTENT_DEF_LAYER_MAX"));
}
pub inline fn IS_QK_SWAP_HANDS(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_SWAP_HANDS")) and (code <= getKeycodeDefines("QK_SWAP_HANDS_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_SWAP_HANDS")) and (code <= getKeycodeDefines("QK_SWAP_HANDS_MAX"));
}
pub inline fn IS_QK_TAP_DANCE(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_TAP_DANCE")) and (code <= getKeycodeDefines("QK_TAP_DANCE_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_TAP_DANCE")) and (code <= getKeycodeDefines("QK_TAP_DANCE_MAX"));
}
pub inline fn IS_QK_MAGIC(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_MAGIC")) and (code <= getKeycodeDefines("QK_MAGIC_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_MAGIC")) and (code <= getKeycodeDefines("QK_MAGIC_MAX"));
}
pub inline fn IS_QK_MIDI(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_MIDI")) and (code <= getKeycodeDefines("QK_MIDI_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_MIDI")) and (code <= getKeycodeDefines("QK_MIDI_MAX"));
}
pub inline fn IS_QK_SEQUENCER(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_SEQUENCER")) and (code <= getKeycodeDefines("QK_SEQUENCER_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_SEQUENCER")) and (code <= getKeycodeDefines("QK_SEQUENCER_MAX"));
}
pub inline fn IS_QK_JOYSTICK(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_JOYSTICK")) and (code <= getKeycodeDefines("QK_JOYSTICK_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_JOYSTICK")) and (code <= getKeycodeDefines("QK_JOYSTICK_MAX"));
}
pub inline fn IS_QK_PROGRAMMABLE_BUTTON(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_PROGRAMMABLE_BUTTON")) and (code <= getKeycodeDefines("QK_PROGRAMMABLE_BUTTON_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_PROGRAMMABLE_BUTTON")) and (code <= getKeycodeDefines("QK_PROGRAMMABLE_BUTTON_MAX"));
}
pub inline fn IS_QK_AUDIO(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_AUDIO")) and (code <= getKeycodeDefines("QK_AUDIO_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_AUDIO")) and (code <= getKeycodeDefines("QK_AUDIO_MAX"));
}
pub inline fn IS_QK_STENO(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_STENO")) and (code <= getKeycodeDefines("QK_STENO_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_STENO")) and (code <= getKeycodeDefines("QK_STENO_MAX"));
}
pub inline fn IS_QK_MACRO(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_MACRO")) and (code <= getKeycodeDefines("QK_MACRO_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_MACRO")) and (code <= getKeycodeDefines("QK_MACRO_MAX"));
}
pub inline fn IS_QK_CONNECTION(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_CONNECTION")) and (code <= getKeycodeDefines("QK_CONNECTION_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_CONNECTION")) and (code <= getKeycodeDefines("QK_CONNECTION_MAX"));
}
pub inline fn IS_QK_LIGHTING(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_LIGHTING")) and (code <= getKeycodeDefines("QK_LIGHTING_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_LIGHTING")) and (code <= getKeycodeDefines("QK_LIGHTING_MAX"));
}
pub inline fn IS_QK_QUANTUM(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_QUANTUM")) and (code <= getKeycodeDefines("QK_QUANTUM_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_QUANTUM")) and (code <= getKeycodeDefines("QK_QUANTUM_MAX"));
}
pub inline fn IS_QK_KB(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_KB")) and (code <= getKeycodeDefines("QK_KB_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_KB")) and (code <= getKeycodeDefines("QK_KB_MAX"));
}
pub inline fn IS_QK_USER(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_USER")) and (code <= getKeycodeDefines("QK_USER_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_USER")) and (code <= getKeycodeDefines("QK_USER_MAX"));
}
pub inline fn IS_QK_UNICODEMAP(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_UNICODEMAP")) and (code <= getKeycodeDefines("QK_UNICODEMAP_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_UNICODEMAP")) and (code <= getKeycodeDefines("QK_UNICODEMAP_MAX"));
}
pub inline fn IS_QK_UNICODE(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_UNICODE")) and (code <= getKeycodeDefines("QK_UNICODE_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_UNICODE")) and (code <= getKeycodeDefines("QK_UNICODE_MAX"));
}
pub inline fn IS_QK_UNICODEMAP_PAIR(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_UNICODEMAP_PAIR")) and (code <= getKeycodeDefines("QK_UNICODEMAP_PAIR_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_UNICODEMAP_PAIR")) and (code <= getKeycodeDefines("QK_UNICODEMAP_PAIR_MAX"));
}
pub inline fn IS_INTERNAL_KEYCODE(code: anytype) @TypeOf((code >= getKeycodeDefines("KC_NO")) and (code <= getKeycodeDefines("KC_TRANSPARENT"))) {
    _ = &code;
    return (code >= getKeycodeDefines("KC_NO")) and (code <= getKeycodeDefines("KC_TRANSPARENT"));
}
pub inline fn IS_BASIC_KEYCODE(code: anytype) @TypeOf((code >= getKeycodeDefines("KC_A")) and (code <= getKeycodeDefines("KC_EXSEL"))) {
    _ = &code;
    return (code >= getKeycodeDefines("KC_A")) and (code <= getKeycodeDefines("KC_EXSEL"));
}
pub inline fn IS_SYSTEM_KEYCODE(code: anytype) @TypeOf((code >= getKeycodeDefines("KC_SYSTEM_POWER")) and (code <= getKeycodeDefines("KC_SYSTEM_WAKE"))) {
    _ = &code;
    return (code >= getKeycodeDefines("KC_SYSTEM_POWER")) and (code <= getKeycodeDefines("KC_SYSTEM_WAKE"));
}
pub inline fn IS_CONSUMER_KEYCODE(code: anytype) @TypeOf((code >= getKeycodeDefines("KC_AUDIO_MUTE")) and (code <= getKeycodeDefines("KC_LAUNCHPAD"))) {
    _ = &code;
    return (code >= getKeycodeDefines("KC_AUDIO_MUTE")) and (code <= getKeycodeDefines("KC_LAUNCHPAD"));
}
pub inline fn IS_MOUSE_KEYCODE(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_MOUSE_CURSOR_UP")) and (code <= getKeycodeDefines("QK_MOUSE_ACCELERATION_2"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_MOUSE_CURSOR_UP")) and (code <= getKeycodeDefines("QK_MOUSE_ACCELERATION_2"));
}
pub inline fn IS_MODIFIER_KEYCODE(code: anytype) @TypeOf((code >= getKeycodeDefines("KC_LEFT_CTRL")) and (code <= getKeycodeDefines("KC_RIGHT_GUI"))) {
    _ = &code;
    return (code >= getKeycodeDefines("KC_LEFT_CTRL")) and (code <= getKeycodeDefines("KC_RIGHT_GUI"));
}
pub inline fn IS_SWAP_HANDS_KEYCODE(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_SWAP_HANDS_TOGGLE")) and (code <= getKeycodeDefines("QK_SWAP_HANDS_ONE_SHOT"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_SWAP_HANDS_TOGGLE")) and (code <= getKeycodeDefines("QK_SWAP_HANDS_ONE_SHOT"));
}
pub inline fn IS_MAGIC_KEYCODE(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_MAGIC_SWAP_CONTROL_CAPS_LOCK")) and (code <= getKeycodeDefines("QK_MAGIC_TOGGLE_ESCAPE_CAPS_LOCK"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_MAGIC_SWAP_CONTROL_CAPS_LOCK")) and (code <= getKeycodeDefines("QK_MAGIC_TOGGLE_ESCAPE_CAPS_LOCK"));
}
pub inline fn IS_MIDI_KEYCODE(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_MIDI_ON")) and (code <= getKeycodeDefines("QK_MIDI_PITCH_BEND_UP"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_MIDI_ON")) and (code <= getKeycodeDefines("QK_MIDI_PITCH_BEND_UP"));
}
pub inline fn IS_SEQUENCER_KEYCODE(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_SEQUENCER_ON")) and (code <= getKeycodeDefines("QK_SEQUENCER_STEPS_CLEAR"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_SEQUENCER_ON")) and (code <= getKeycodeDefines("QK_SEQUENCER_STEPS_CLEAR"));
}
pub inline fn IS_JOYSTICK_KEYCODE(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_JOYSTICK_BUTTON_0")) and (code <= getKeycodeDefines("QK_JOYSTICK_BUTTON_31"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_JOYSTICK_BUTTON_0")) and (code <= getKeycodeDefines("QK_JOYSTICK_BUTTON_31"));
}
pub inline fn IS_PROGRAMMABLE_BUTTON_KEYCODE(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_PROGRAMMABLE_BUTTON_1")) and (code <= getKeycodeDefines("QK_PROGRAMMABLE_BUTTON_32"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_PROGRAMMABLE_BUTTON_1")) and (code <= getKeycodeDefines("QK_PROGRAMMABLE_BUTTON_32"));
}
pub inline fn IS_AUDIO_KEYCODE(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_AUDIO_ON")) and (code <= getKeycodeDefines("QK_AUDIO_VOICE_PREVIOUS"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_AUDIO_ON")) and (code <= getKeycodeDefines("QK_AUDIO_VOICE_PREVIOUS"));
}
pub inline fn IS_STENO_KEYCODE(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_STENO_BOLT")) and (code <= getKeycodeDefines("QK_STENO_COMB_MAX"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_STENO_BOLT")) and (code <= getKeycodeDefines("QK_STENO_COMB_MAX"));
}
pub inline fn IS_MACRO_KEYCODE(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_MACRO_0")) and (code <= getKeycodeDefines("QK_MACRO_31"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_MACRO_0")) and (code <= getKeycodeDefines("QK_MACRO_31"));
}
pub inline fn IS_CONNECTION_KEYCODE(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_OUTPUT_AUTO")) and (code <= getKeycodeDefines("QK_BLUETOOTH_PROFILE5"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_OUTPUT_AUTO")) and (code <= getKeycodeDefines("QK_BLUETOOTH_PROFILE5"));
}
pub inline fn IS_BACKLIGHT_KEYCODE(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_BACKLIGHT_ON")) and (code <= getKeycodeDefines("QK_BACKLIGHT_TOGGLE_BREATHING"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_BACKLIGHT_ON")) and (code <= getKeycodeDefines("QK_BACKLIGHT_TOGGLE_BREATHING"));
}
pub inline fn IS_LED_MATRIX_KEYCODE(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_LED_MATRIX_ON")) and (code <= getKeycodeDefines("QK_LED_MATRIX_SPEED_DOWN"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_LED_MATRIX_ON")) and (code <= getKeycodeDefines("QK_LED_MATRIX_SPEED_DOWN"));
}
pub inline fn IS_UNDERGLOW_KEYCODE(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_UNDERGLOW_TOGGLE")) and (code <= getKeycodeDefines("QK_UNDERGLOW_SPEED_DOWN"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_UNDERGLOW_TOGGLE")) and (code <= getKeycodeDefines("QK_UNDERGLOW_SPEED_DOWN"));
}
pub inline fn IS_RGB_KEYCODE(code: anytype) @TypeOf((code >= getKeycodeDefines("RGB_MODE_PLAIN")) and (code <= getKeycodeDefines("RGB_MODE_TWINKLE"))) {
    _ = &code;
    return (code >= getKeycodeDefines("RGB_MODE_PLAIN")) and (code <= getKeycodeDefines("RGB_MODE_TWINKLE"));
}
pub inline fn IS_RGB_MATRIX_KEYCODE(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_RGB_MATRIX_ON")) and (code <= getKeycodeDefines("QK_RGB_MATRIX_SPEED_DOWN"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_RGB_MATRIX_ON")) and (code <= getKeycodeDefines("QK_RGB_MATRIX_SPEED_DOWN"));
}
pub inline fn IS_QUANTUM_KEYCODE(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_BOOTLOADER")) and (code <= getKeycodeDefines("QK_LAYER_LOCK"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_BOOTLOADER")) and (code <= getKeycodeDefines("QK_LAYER_LOCK"));
}
pub inline fn IS_KB_KEYCODE(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_KB_0")) and (code <= getKeycodeDefines("QK_KB_31"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_KB_0")) and (code <= getKeycodeDefines("QK_KB_31"));
}
pub inline fn IS_USER_KEYCODE(code: anytype) @TypeOf((code >= getKeycodeDefines("QK_USER_0")) and (code <= getKeycodeDefines("QK_USER_31"))) {
    _ = &code;
    return (code >= getKeycodeDefines("QK_USER_0")) and (code <= getKeycodeDefines("QK_USER_31"));
}
pub const INTERNAL_KEYCODE_RANGE = @compileError("unable to translate C expr: unexpected token '...'");
// ./keycodes.h:1514:9
pub const BASIC_KEYCODE_RANGE = @compileError("unable to translate C expr: unexpected token '...'");
// ./keycodes.h:1515:9
pub const SYSTEM_KEYCODE_RANGE = @compileError("unable to translate C expr: unexpected token '...'");
// ./keycodes.h:1516:9
pub const CONSUMER_KEYCODE_RANGE = @compileError("unable to translate C expr: unexpected token '...'");
// ./keycodes.h:1517:9
pub const MOUSE_KEYCODE_RANGE = @compileError("unable to translate C expr: unexpected token '...'");
// ./keycodes.h:1518:9
pub const MODIFIER_KEYCODE_RANGE = @compileError("unable to translate C expr: unexpected token '...'");
// ./keycodes.h:1519:9
pub const SWAP_HANDS_KEYCODE_RANGE = @compileError("unable to translate C expr: unexpected token '...'");
// ./keycodes.h:1520:9
pub const MAGIC_KEYCODE_RANGE = @compileError("unable to translate C expr: unexpected token '...'");
// ./keycodes.h:1521:9
pub const MIDI_KEYCODE_RANGE = @compileError("unable to translate C expr: unexpected token '...'");
// ./keycodes.h:1522:9
pub const SEQUENCER_KEYCODE_RANGE = @compileError("unable to translate C expr: unexpected token '...'");
// ./keycodes.h:1523:9
pub const JOYSTICK_KEYCODE_RANGE = @compileError("unable to translate C expr: unexpected token '...'");
// ./keycodes.h:1524:9
pub const PROGRAMMABLE_BUTTON_KEYCODE_RANGE = @compileError("unable to translate C expr: unexpected token '...'");
// ./keycodes.h:1525:9
pub const AUDIO_KEYCODE_RANGE = @compileError("unable to translate C expr: unexpected token '...'");
// ./keycodes.h:1526:9
pub const STENO_KEYCODE_RANGE = @compileError("unable to translate C expr: unexpected token '...'");
// ./keycodes.h:1527:9
pub const MACRO_KEYCODE_RANGE = @compileError("unable to translate C expr: unexpected token '...'");
// ./keycodes.h:1528:9
pub const CONNECTION_KEYCODE_RANGE = @compileError("unable to translate C expr: unexpected token '...'");
// ./keycodes.h:1529:9
pub const BACKLIGHT_KEYCODE_RANGE = @compileError("unable to translate C expr: unexpected token '...'");
// ./keycodes.h:1530:9
pub const LED_MATRIX_KEYCODE_RANGE = @compileError("unable to translate C expr: unexpected token '...'");
// ./keycodes.h:1531:9
pub const UNDERGLOW_KEYCODE_RANGE = @compileError("unable to translate C expr: unexpected token '...'");
// ./keycodes.h:1532:9
pub const RGB_KEYCODE_RANGE = @compileError("unable to translate C expr: unexpected token '...'");
// ./keycodes.h:1533:9
pub const RGB_MATRIX_KEYCODE_RANGE = @compileError("unable to translate C expr: unexpected token '...'");
// ./keycodes.h:1534:9
pub const QUANTUM_KEYCODE_RANGE = @compileError("unable to translate C expr: unexpected token '...'");
// ./keycodes.h:1535:9
pub const KB_KEYCODE_RANGE = @compileError("unable to translate C expr: unexpected token '...'");
// ./keycodes.h:1536:9
pub const USER_KEYCODE_RANGE = @compileError("unable to translate C expr: unexpected token '...'");
// ./keycodes.h:1537:9
pub const qk_keycode_ranges = enum_qk_keycode_ranges;
pub const qk_keycode_defines = enum_qk_keycode_defines;

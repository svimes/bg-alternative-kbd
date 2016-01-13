// Based on Bundyo's layout (<bundyo@gmail.com>)
import QtQuick 2.0
import ".."

KeyboardLayout {
    splitSupported: true

    KeyboardRow {
        CharacterKey { caption: "я"; captionShifted: "Я"; symView: "1"; symView2: "€" }
        CharacterKey { caption: "в"; captionShifted: "В"; symView: "2"; symView2: "£" }
        CharacterKey { caption: "е"; captionShifted: "Е"; symView: "3"; symView2: "$"; accents: "уў"; accentsShifted: "УЎ" }
        CharacterKey { caption: "р"; captionShifted: "Р"; symView: "4"; symView2: "¥" }
        CharacterKey { caption: "т"; captionShifted: "Т"; symView: "5"; symView2: "₹"; accents: "её€"; accentsShifted: "ЕЁ€" }
        CharacterKey { caption: "ъ"; captionShifted: "Ъ"; symView: "6"; symView2: "%" }
        CharacterKey { caption: "у"; captionShifted: "У"; symView: "7"; symView2: "<" }
        CharacterKey { caption: "и"; captionShifted: "И"; symView: "8"; symView2: ">" }
        CharacterKey { caption: "о"; captionShifted: "О"; symView: "9"; symView2: "[" }
        CharacterKey { caption: "п"; captionShifted: "П"; symView: "0"; symView2: "]" }
        CharacterKey { caption: "ч"; captionShifted: "Ч"; symView: "~"; symView2: "™" }
    }

    KeyboardRow {
        CharacterKey { caption: "а"; captionShifted: "А"; symView: "*"; symView2: "`" }
        CharacterKey { caption: "с"; captionShifted: "С"; symView: "#"; symView2: "^" }
        CharacterKey { caption: "д"; captionShifted: "Д"; symView: "+"; symView2: "|" }
        CharacterKey { caption: "ф"; captionShifted: "Ф"; symView: "-"; symView2: "√" }
        CharacterKey { caption: "г"; captionShifted: "Г"; symView: "="; symView2: "§" }
        CharacterKey { caption: "х"; captionShifted: "Х"; symView: "("; symView2: "{" }
        CharacterKey { caption: "й"; captionShifted: "Й"; symView: ")"; symView2: "}" }
        CharacterKey { caption: "к"; captionShifted: "К"; symView: "!"; symView2: "¡" }
        CharacterKey { caption: "л"; captionShifted: "Л"; symView: "?"; symView2: "¿" }
        CharacterKey { caption: "ш"; captionShifted: "Ш"; symView: "№"; symView2: "¢" }
        CharacterKey { caption: "щ"; captionShifted: "Щ"; symView: "%"; symView2: "℅" }
    }

    KeyboardRow {
        ShiftKey {
	    implicitWidth: shiftKeyWidth * 0.8
        }

        CharacterKey { caption: "з"; captionShifted: "З"; symView: "@"; symView2: "«" }
        CharacterKey { caption: "ь"; captionShifted: "ѝ"; symView: "&"; symView2: "»" }
        CharacterKey { caption: "ц"; captionShifted: "Ц"; symView: "/"; symView2: "\"" }
        CharacterKey { caption: "ж"; captionShifted: "Ж"; symView: "\\"; symView2: "“" }
        CharacterKey { caption: "б"; captionShifted: "Б"; symView: "'"; symView2: "”" }
        CharacterKey { caption: "н"; captionShifted: "Н"; symView: ";"; symView2: "„" }
        CharacterKey { caption: "м"; captionShifted: "М"; symView: ":"; symView2: "~" }
        CharacterKey { caption: "ю"; captionShifted: "Ю"; symView: "_"; symView2: "η" }

        BackspaceKey {
            implicitWidth: shiftKeyWidth * 0.8
        }
    }
    KeyboardRow {
        splitIndex: 3

        SymbolKey {
            implicitWidth: functionKeyWidth * 0.8
        }
        ContextAwareCommaKey {
            implicitWidth: punctuationKeyWidth * 0.8
        }
        SpacebarKey {}
        SpacebarKey {
            active: splitActive
            languageLabel: ""
        }
        CharacterKey {
            caption: "."
            captionShifted: "."
            implicitWidth: punctuationKeyWidth * 0.8
            fixedWidth: !splitActive
            separator: SeparatorState.HiddenSeparator
        }
        EnterKey {
            implicitWidth: functionKeyWidth * 0.8
        }
    }
}

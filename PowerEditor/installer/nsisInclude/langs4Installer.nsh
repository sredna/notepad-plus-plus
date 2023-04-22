; This file is part of Notepad++ project
; Copyright (C)2021 Don HO <don.h@free.fr>
;
; This program is free software: you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published by
; the Free Software Foundation, either version 3 of the License, or
; at your option any later version.
;
; This program is distributed in the hope that it will be useful,
; but WITHOUT ANY WARRANTY; without even the implied warranty of
; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
; GNU General Public License for more details.
;
; You should have received a copy of the GNU General Public License
; along with this program.  If not, see <https://www.gnu.org/licenses/>.

; This file declares all UI languages supported by the installer.
; It also declares a LangString that is used to ensure that the 
; language used in the installer is also available as a 
; N++ UI language even if the user unchecked that language component.

!define MUI_LANGDLL_ALLLANGUAGES
!insertmacro MUI_RESERVEFILE_LANGDLL


!macro NPPINST_LANGUAGE NsisName NppFile
	!insertmacro MUI_LANGUAGE "${NsisName}"
	LangString langFileName ${LANG_${NsisName}} "${NppFile}"
	!if ! /FileExists ".\nativeLang\${NppFile}"
		!warning "${NppFile} does not exist for language ${NsisName} (${LANG_${NsisName}})"
	!endif
!macroend

!insertmacro NPPINST_LANGUAGE "English" "english.xml" ; The first is the default NSIS language
!insertmacro NPPINST_LANGUAGE "Afrikaans" "afrikaans.xml"
!insertmacro NPPINST_LANGUAGE "Albanian" "albanian.xml"
!insertmacro NPPINST_LANGUAGE "Arabic" "arabic.xml"
;!insertmacro NPPINST_LANGUAGE "Armenian"
!insertmacro NPPINST_LANGUAGE "Basque" "basque.xml"
!insertmacro NPPINST_LANGUAGE "Belarusian" "belarusian.xml"
!insertmacro NPPINST_LANGUAGE "Bosnian" "bosnian.xml"
!insertmacro NPPINST_LANGUAGE "Breton" "breton.xml"
!insertmacro NPPINST_LANGUAGE "Bulgarian" "bulgarian.xml"
!insertmacro NPPINST_LANGUAGE "Catalan" "catalan.xml"
!insertmacro NPPINST_LANGUAGE "Corsican" "corsican.xml"
!insertmacro NPPINST_LANGUAGE "Croatian" "croatian.xml"
!insertmacro NPPINST_LANGUAGE "Czech" "czech.xml"
!insertmacro NPPINST_LANGUAGE "Danish" "danish.xml"
!insertmacro NPPINST_LANGUAGE "Dutch" "dutch.xml"
!insertmacro NPPINST_LANGUAGE "Farsi" "farsi.xml"
!insertmacro NPPINST_LANGUAGE "Finnish" "finnish.xml"
!insertmacro NPPINST_LANGUAGE "Estonian" "estonian.xml"
!insertmacro NPPINST_LANGUAGE "French" "french.xml"
!insertmacro NPPINST_LANGUAGE "Galician" "galician.xml"
!insertmacro NPPINST_LANGUAGE "Georgian" "georgian.xml"
!insertmacro NPPINST_LANGUAGE "German" "german.xml"
!insertmacro NPPINST_LANGUAGE "Greek" "greek.xml"
!insertmacro NPPINST_LANGUAGE "Hebrew" "hebrew.xml"
!insertmacro NPPINST_LANGUAGE "Hindi" "hindi.xml"
!insertmacro NPPINST_LANGUAGE "Hungarian" "hungarian.xml"
;!insertmacro NPPINST_LANGUAGE "Icelandic"
!insertmacro NPPINST_LANGUAGE "Irish" "irish.xml"
!insertmacro NPPINST_LANGUAGE "Indonesian" "indonesian.xml"
!insertmacro NPPINST_LANGUAGE "Italian" "italian.xml"
!insertmacro NPPINST_LANGUAGE "Japanese" "japanese.xml"
!insertmacro NPPINST_LANGUAGE "Korean" "korean.xml"
!insertmacro NPPINST_LANGUAGE "Kurdish" "kurdish.xml"
!insertmacro NPPINST_LANGUAGE "Latvian" "Latvian.xml"
!insertmacro NPPINST_LANGUAGE "Lithuanian" "lithuanian.xml"
!insertmacro NPPINST_LANGUAGE "Luxembourgish" "luxembourgish.xml"
!insertmacro NPPINST_LANGUAGE "Macedonian" "macedonian.xml"
!insertmacro NPPINST_LANGUAGE "Malay" "malay.xml"
!insertmacro NPPINST_LANGUAGE "Mongolian" "mongolian.xml"
!insertmacro NPPINST_LANGUAGE "Norwegian" "norwegian.xml"
!insertmacro NPPINST_LANGUAGE "NorwegianNynorsk" "nynorsk.xml"
!insertmacro NPPINST_LANGUAGE "Polish" "polish.xml"
!insertmacro NPPINST_LANGUAGE "Romanian" "romanian.xml"
!insertmacro NPPINST_LANGUAGE "Portuguese" "portuguese.xml"
!insertmacro NPPINST_LANGUAGE "PortugueseBR" "brazilian_portuguese.xml"
!insertmacro NPPINST_LANGUAGE "Russian" "russian.xml"
!insertmacro NPPINST_LANGUAGE "Serbian" "serbian.xml"
!insertmacro NPPINST_LANGUAGE "Spanish" "spanish.xml"
!insertmacro NPPINST_LANGUAGE "SimpChinese" "chineseSimplified.xml"
!insertmacro NPPINST_LANGUAGE "Slovenian" "slovenian.xml"
!insertmacro NPPINST_LANGUAGE "Slovak" "slovak.xml"
!insertmacro NPPINST_LANGUAGE "Swedish" "swedish.xml"
!insertmacro NPPINST_LANGUAGE "Thai" "thai.xml"
!insertmacro NPPINST_LANGUAGE "TradChinese" "taiwaneseMandarin.xml"
!insertmacro NPPINST_LANGUAGE "Turkish" "turkish.xml"
!insertmacro NPPINST_LANGUAGE "Ukrainian" "ukrainian.xml"
!insertmacro NPPINST_LANGUAGE "Uzbek" "uzbek.xml"
!insertmacro NPPINST_LANGUAGE "Vietnamese" "vietnamese.xml"
!insertmacro NPPINST_LANGUAGE "Welsh" "welsh.xml"

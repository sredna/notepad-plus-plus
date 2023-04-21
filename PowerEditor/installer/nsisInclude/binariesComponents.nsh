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


SectionGroup "Plugins" Plugins
	SetOverwrite on
	
	${MementoSection} "NppExport" NppExport
		Delete "$INSTDIR\plugins\NppExport.dll"
		Delete "$INSTDIR\plugins\NppExport\NppExport.dll"
		Delete "$PLUGIN_INST_PATH\NppExport\NppExport.dll"
		
		SetOutPath "$PLUGIN_INST_PATH\NppExport"
		File "..\${ARCHBINDIR}\plugins\NppExport\NppExport.dll"
	${MementoSectionEnd}


	${MementoSection} "Mime Tools" MimeTools
		Delete "$INSTDIR\plugins\mimeTools.dll"
		Delete "$INSTDIR\plugins\mimeTools\mimeTools.dll"
		Delete "$PLUGIN_INST_PATH\mimeTools\mimeTools.dll"
		
		SetOutPath "$PLUGIN_INST_PATH\mimeTools"
		File "..\${ARCHBINDIR}\plugins\mimeTools\mimeTools.dll"
	${MementoSectionEnd}
	
	${MementoSection} "Converter" Converter
		Delete "$INSTDIR\plugins\NppConverter.dll"
		Delete "$INSTDIR\plugins\NppConverter\NppConverter.dll"
		Delete "$PLUGIN_INST_PATH\NppConverter\NppConverter.dll"
		
		SetOutPath "$PLUGIN_INST_PATH\NppConverter"
		File "..\${ARCHBINDIR}\plugins\NppConverter\NppConverter.dll"
	${MementoSectionEnd}

SectionGroupEnd

${MementoSection} "Auto-Updater" AutoUpdater
	SetOverwrite on
	SetOutPath "$INSTDIR\updater"
	File "..\${ARCHBINDIR}\updater\GUP.exe"
	File "..\${ARCHBINDIR}\updater\libcurl.dll"
	File "..\${ARCHBINDIR}\updater\gup.xml"
	File "..\${ARCHBINDIR}\updater\LICENSE"
	File "..\${ARCHBINDIR}\updater\README.md"
	File "..\${ARCHBINDIR}\updater\updater.ico"

	SetOutPath "$PLUGINSDIR\gupLocalization"
	File "..\bin\updater\translations\"
${MementoSectionEnd}

${MementoSection} "Plugins Admin" PluginsAdmin
	SetOverwrite on
	SetOutPath $ALLUSERS_PLUGIN_CONF_PATH
	File "..\${ARCHBINDIR}\plugins\Config\nppPluginList.dll"
${MementoSectionEnd}

;Uninstall section
SectionGroup un.Plugins
	Section un.NppExport
		Delete "$INSTDIR\plugins\NppExport.dll"
		Delete "$INSTDIR\plugins\NppExport\NppExport.dll"
		RMDir "$INSTDIR\plugins\NppExport"

		Delete "$PLUGIN_INST_PATH\NppExport\NppExport.dll"
		RMDir "$PLUGIN_INST_PATH\NppExport"
	SectionEnd
	
	Section un.Converter
		Delete "$INSTDIR\plugins\NppConverter.dll"
		Delete "$INSTDIR\plugins\NppConverter\NppConverter.dll"
		RMDir "$INSTDIR\plugins\NppConverter"
		Delete "$PLUGIN_INST_PATH\NppConverter\NppConverter.dll"
		RMDir "$PLUGIN_INST_PATH\NppConverter"
	SectionEnd
	
	Section un.MimeTools
		Delete "$INSTDIR\plugins\mimeTools.dll"
		Delete "$INSTDIR\plugins\mimeTools\mimeTools.dll"
		RMDir "$INSTDIR\plugins\mimeTools"
		Delete "$PLUGIN_INST_PATH\mimeTools\mimeTools.dll"
		RMDir "$PLUGIN_INST_PATH\mimeTools"
	SectionEnd

 	Section un.DSpellCheck

		Delete "$INSTDIR\plugins\DSpellCheck.dll"
		Delete "$INSTDIR\plugins\DSpellCheck\DSpellCheck.dll"
		Delete "$PLUGIN_INST_PATH\DSpellCheck\DSpellCheck.dll"
		Delete "$UPDATE_PATH\plugins\Config\DSpellCheck.ini"
		Delete "$ALLUSERS_PLUGIN_CONF_PATH\DSpellCheck.ini"
		Delete "$INSTDIR\plugins\Config\Hunspell\en_US.aff"
		Delete "$USER_PLUGIN_CONF_PATH\Hunspell\en_US.aff"
		Delete "$INSTDIR\plugins\Config\Hunspell\en_US.dic"
		Delete "$USER_PLUGIN_CONF_PATH\Hunspell\en_US.dic"
		RMDir /r "$INSTDIR\plugins\Config"			; Remove Config folder recursively only if empty
		RMDir /r "$ALLUSERS_PLUGIN_CONF_PATH\Config"			; Remove Config folder recursively only if empty
		RMDir "$INSTDIR\plugins\DSpellCheck"
	SectionEnd

SectionGroupEnd

Section un.AutoUpdater
	Delete "$INSTDIR\updater\GUP.exe"
	Delete "$INSTDIR\updater\libcurl.dll"
	Delete "$INSTDIR\updater\gup.xml"
	Delete "$INSTDIR\updater\License.txt"
	Delete "$INSTDIR\updater\LICENSE"
	Delete "$INSTDIR\updater\gpl.txt"
	Delete "$INSTDIR\updater\readme.txt"
	Delete "$INSTDIR\updater\README.md"
	Delete "$INSTDIR\updater\updater.ico"
	Delete "$INSTDIR\updater\getDownLoadUrl.php"
	Delete "$INSTDIR\updater\nativeLang.xml"
	RMDir "$INSTDIR\updater"
SectionEnd

Function .onSelChange
${If} ${SectionIsSelected} ${PluginsAdmin}
    !insertmacro SetSectionFlag ${AutoUpdater} ${SF_RO}
    !insertmacro SelectSection ${AutoUpdater}
${Else}
    !insertmacro ClearSectionFlag ${AutoUpdater} ${SF_RO}
${EndIf}
FunctionEnd

Section un.PluginsAdmin
	Delete "$USER_PLUGIN_CONF_PATH\nppPluginList.dll" ; delete 7.6 version's left
	Delete "$ALLUSERS_PLUGIN_CONF_PATH\nppPluginList.dll"
SectionEnd

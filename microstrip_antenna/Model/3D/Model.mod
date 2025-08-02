'# MWS Version: Version 2025.0 - Aug 30 2024 - ACIS 34.0.1 -

'# length = mm
'# frequency = GHz
'# time = ns
'# frequency range: fmin = 1.5 fmax = 3.5
'# created = '[VERSION]2025.0|34.0.1|20240830[/VERSION]


'@ use template: Antenna - Planar.cfg

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
'set the units
With Units
    .SetUnit "Length", "mm"
    .SetUnit "Frequency", "GHz"
    .SetUnit "Voltage", "V"
    .SetUnit "Resistance", "Ohm"
    .SetUnit "Inductance", "nH"
    .SetUnit "Temperature",  "K"
    .SetUnit "Time", "ns"
    .SetUnit "Current", "A"
    .SetUnit "Conductance", "S"
    .SetUnit "Capacitance", "pF"
End With

'----------------------------------------------------------------------------

'set the frequency range
Solver.FrequencyRange "1.5", "3.5"

'----------------------------------------------------------------------------

Plot.DrawBox True

With Background
     .Type "Normal"
     .Epsilon "1.0"
     .Mu "1.0"
     .XminSpace "0.0"
     .XmaxSpace "0.0"
     .YminSpace "0.0"
     .YmaxSpace "0.0"
     .ZminSpace "0.0"
     .ZmaxSpace "0.0"
End With

With Boundary
     .Xmin "expanded open"
     .Xmax "expanded open"
     .Ymin "expanded open"
     .Ymax "expanded open"
     .Zmin "expanded open"
     .Zmax "expanded open"
     .Xsymmetry "none"
     .Ysymmetry "none"
     .Zsymmetry "none"
End With

' optimize mesh settings for planar structures

With Mesh
     .MergeThinPECLayerFixpoints "True"
     .RatioLimit "20"
     .AutomeshRefineAtPecLines "True", "6"
     .FPBAAvoidNonRegUnite "True"
     .ConsiderSpaceForLowerMeshLimit "False"
     .MinimumStepNumber "5"
     .AnisotropicCurvatureRefinement "True"
     .AnisotropicCurvatureRefinementFSM "True"
End With

With MeshSettings
     .SetMeshType "Hex"
     .Set "RatioLimitGeometry", "20"
     .Set "EdgeRefinementOn", "1"
     .Set "EdgeRefinementRatio", "6"
End With

With MeshSettings
     .SetMeshType "HexTLM"
     .Set "RatioLimitGeometry", "20"
End With

With MeshSettings
     .SetMeshType "Tet"
     .Set "VolMeshGradation", "1.5"
     .Set "SrfMeshGradation", "1.5"
End With

' change mesh adaption scheme to energy
' 		(planar structures tend to store high energy
'     	 locally at edges rather than globally in volume)

MeshAdaption3D.SetAdaptionStrategy "Energy"

' switch on FD-TET setting for accurate farfields

FDSolver.ExtrudeOpenBC "True"

PostProcess1D.ActivateOperation "vswr", "true"
PostProcess1D.ActivateOperation "yz-matrices", "true"

With FarfieldPlot
	.ClearCuts ' lateral=phi, polar=theta
	.AddCut "lateral", "0", "1"
	.AddCut "lateral", "90", "1"
	.AddCut "polar", "90", "1"
End With

'----------------------------------------------------------------------------

Dim sDefineAt As String
sDefineAt = "4.45"
Dim sDefineAtName As String
sDefineAtName = "4.45"
Dim sDefineAtToken As String
sDefineAtToken = "f="
Dim aFreq() As String
aFreq = Split(sDefineAt, ";")
Dim aNames() As String
aNames = Split(sDefineAtName, ";")

Dim nIndex As Integer
For nIndex = LBound(aFreq) To UBound(aFreq)

Dim zz_val As String
zz_val = aFreq (nIndex)
Dim zz_name As String
zz_name = sDefineAtToken & aNames (nIndex)

' Define E-Field Monitors
With Monitor
    .Reset
    .Name "e-field ("& zz_name &")"
    .Dimension "Volume"
    .Domain "Frequency"
    .FieldType "Efield"
    .MonitorValue  zz_val
    .Create
End With

' Define H-Field Monitors
With Monitor
    .Reset
    .Name "h-field ("& zz_name &")"
    .Dimension "Volume"
    .Domain "Frequency"
    .FieldType "Hfield"
    .MonitorValue  zz_val
    .Create
End With

' Define Farfield Monitors
With Monitor
    .Reset
    .Name "farfield ("& zz_name &")"
    .Domain "Frequency"
    .FieldType "Farfield"
    .MonitorValue  zz_val
    .ExportFarfieldSource "False"
    .Create
End With

Next

'----------------------------------------------------------------------------

With MeshSettings
     .SetMeshType "Hex"
     .Set "Version", 1%
End With

With Mesh
     .MeshType "PBA"
End With

'set the solver type
ChangeSolverType("HF Time Domain")

'----------------------------------------------------------------------------

'@ define material: FR-4 (lossy)

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Material
     .Reset
     .Name "FR-4 (lossy)"
     .Folder ""
     .FrqType "all"
     .Type "Normal"
     .SetMaterialUnit "GHz", "mm"
     .Epsilon "4.3"
     .Mu "1.0"
     .Kappa "0.0"
     .TanD "0.025"
     .TanDFreq "10.0"
     .TanDGiven "True"
     .TanDModel "ConstTanD"
     .KappaM "0.0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstKappa"
     .DispModelEps "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "General 1st"
     .DispersiveFittingSchemeMu "General 1st"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .Rho "0.0"
     .ThermalType "Normal"
     .ThermalConductivity "0.3"
     .SetActiveMaterial "all"
     .Colour "0.94", "0.82", "0.76"
     .Wireframe "False"
     .Transparency "0"
     .Create
End With

'@ new component: component1

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Component.New "component1"

'@ define brick: component1:Substrate

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Brick
     .Reset 
     .Name "Substrate" 
     .Component "component1" 
     .Material "FR-4 (lossy)" 
     .Xrange "-a-5", "a+5" 
     .Yrange "-a-Lf", "a+5" 
     .Zrange "0.035", "0.035+1.6" 
     .Create
End With

'@ define material: Copper (annealed)

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Material
     .Reset
     .Name "Copper (annealed)"
     .Folder ""
     .FrqType "static"
     .Type "Normal"
     .SetMaterialUnit "Hz", "mm"
     .Epsilon "1"
     .Mu "1.0"
     .Kappa "5.8e+007"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstTanD"
     .KappaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstTanD"
     .DispModelEps "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .DispersiveFittingSchemeMu "Nth Order"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .FrqType "all"
     .Type "Lossy metal"
     .SetMaterialUnit "GHz", "mm"
     .Mu "1.0"
     .Kappa "5.8e+007"
     .Rho "8930.0"
     .ThermalType "Normal"
     .ThermalConductivity "401.0"
     .SpecificHeat "390", "J/K/kg"
     .MetabolicRate "0"
     .BloodFlow "0"
     .VoxelConvection "0"
     .MechanicsType "Isotropic"
     .YoungsModulus "120"
     .PoissonsRatio "0.33"
     .ThermalExpansionRate "17"
     .Colour "1", "1", "0"
     .Wireframe "False"
     .Reflection "False"
     .Allowoutline "True"
     .Transparentoutline "False"
     .Transparency "0"
     .Create
End With

'@ define cylinder: component1:Patch

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Cylinder 
     .Reset 
     .Name "Patch" 
     .Component "component1" 
     .Material "Copper (annealed)" 
     .OuterRadius "a" 
     .InnerRadius "0.0" 
     .Axis "z" 
     .Zrange "0.035+1.6", "0.035+1.6+0.035" 
     .Xcenter "0" 
     .Ycenter "0" 
     .Segments "0" 
     .Create 
End With

'@ define brick: component1:Inset_feed_cut

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Brick
     .Reset 
     .Name "Inset_feed_cut" 
     .Component "component1" 
     .Material "Vacuum" 
     .Xrange "-wf/2-Gp", "wf/2+Gp" 
     .Yrange "-a", "-a+fi" 
     .Zrange "0.035+1.6", "0.035+1.6+0.035" 
     .Create
End With

'@ boolean subtract shapes: component1:Patch, component1:Inset_feed_cut

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Solid.Subtract "component1:Patch", "component1:Inset_feed_cut"

'@ define brick: component1:feed_line

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Brick
     .Reset 
     .Name "feed_line" 
     .Component "component1" 
     .Material "Copper (annealed)" 
     .Xrange "-wf/2", "wf/2" 
     .Yrange "-a-Lf", "-a+fi" 
     .Zrange "0.035+1.6", "0.035+1.6+0.035" 
     .Create
End With

'@ boolean add shapes: component1:Patch, component1:feed_line

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Solid.Add "component1:Patch", "component1:feed_line"

'@ define brick: component1:Ground

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Brick
     .Reset 
     .Name "Ground" 
     .Component "component1" 
     .Material "Copper (annealed)" 
     .Xrange "-a-5", "a+5" 
     .Yrange "-a-Lf", "a+5" 
     .Zrange "0", "0.035" 
     .Create
End With

'@ pick face

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Pick.PickFaceFromId "component1:Patch", "3"

'@ define port:1

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
' Port constructed by macro Solver -> Ports -> Calculate port extension coefficient


With Port
  .Reset
  .PortNumber "1"
  .NumberOfModes "1"
  .AdjustPolarization False
  .PolarizationAngle "0.0"
  .ReferencePlaneDistance "0"
  .TextSize "50"
  .Coordinates "Picks"
  .Orientation "Positive"
  .PortOnBound "True"
  .ClipPickedPortToBound "False"
  .XrangeAdd "1.6*6.82", "1.6*6.82"
  .YrangeAdd "0", "0"
  .ZrangeAdd "1.6", "1.6*6.82"
  .Shield "PEC"
  .SingleEnded "False"
  .Create
End With

'@ define time domain solver parameters

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Mesh.SetCreator "High Frequency" 

With Solver 
     .Method "Hexahedral"
     .CalculationType "TD-S"
     .StimulationPort "All"
     .StimulationMode "All"
     .SteadyStateLimit "-40"
     .MeshAdaption "False"
     .AutoNormImpedance "False"
     .NormingImpedance "50"
     .CalculateModesOnly "False"
     .SParaSymmetry "False"
     .StoreTDResultsInCache  "False"
     .RunDiscretizerOnly "False"
     .FullDeembedding "False"
     .SuperimposePLWExcitation "False"
     .UseSensitivityAnalysis "False"
End With

'@ define farfield monitor: farfield (f=4.5)

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Monitor 
     .Reset 
     .Name "farfield (f=4.5)" 
     .Domain "Frequency" 
     .FieldType "Farfield" 
     .MonitorValue "4.5" 
     .ExportFarfieldSource "False" 
     .UseSubvolume "False" 
     .Coordinates "Structure" 
     .SetSubvolume "-22.4", "22.4", "-32.15", "22.4", "0", "12.582" 
     .SetSubvolumeOffset "10", "10", "10", "10", "10", "10" 
     .SetSubvolumeInflateWithOffset "False" 
     .SetSubvolumeOffsetType "FractionOfWavelength" 
     .EnableNearfieldCalculation "True" 
     .Create 
End With


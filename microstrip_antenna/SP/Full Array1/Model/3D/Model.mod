'# MWS Version: Version 2025.0 - Aug 30 2024 - ACIS 34.0.1 -

'# length = mm
'# frequency = GHz
'# time = ns
'# frequency range: fmin = 1.5 fmax = 3.5
'# created = '[VERSION]2025.0|34.0.1|20240830[/VERSION]


'@ define units

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Units 
     .SetUnit "Length", "mm"
     .SetUnit "Temperature", "K"
     .SetUnit "Voltage", "V"
     .SetUnit "Current", "A"
     .SetUnit "Resistance", "Ohm"
     .SetUnit "Conductance", "S"
     .SetUnit "Capacitance", "pF"
     .SetUnit "Inductance", "nH"
     .SetUnit "Frequency", "GHz"
     .SetUnit "Time", "ns"
     .SetResultUnit "frequency", "frequency", "" 
End With

'@ import external project: ..\..\ModelCache\Model.mif

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
StartSubProject 

With Material 
     .Reset 
     .Name "Copper (annealed)" 
     .Folder "MWSSCHEM1" 
     .Rho "8930.0"
     .ThermalType "Normal"
     .ThermalConductivity "401.0"
     .SpecificHeat "390", "J/K/kg"
     .DynamicViscosity "0"
     .UseEmissivity "True"
     .Emissivity "0"
     .MetabolicRate "0"
     .VoxelConvection "0"
     .BloodFlow "0"
     .MechanicsType "Isotropic"
     .YoungsModulus "120"
     .PoissonsRatio "0.33"
     .ThermalExpansionRate "17"
     .SolarRadiationAbsorptionType "Opaque"
     .Absorptance "0.0"
     .UseSemiTransparencyCalculator "False"
     .SolarRadTransmittance "0.0"
     .SolarRadReflectance "0.0"
     .SolarRadSpecimenThickness "0.0"
     .SolarRadRefractiveIndex "1.0"
     .SolarRadAbsorptionCoefficient "0.0"
     .FrqType "static"
     .Type "Normal"
     .MaterialUnit "Frequency", "Hz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "s"
     .Epsilon "1"
     .Mu "1.0"
     .Sigma "5.8e+007"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstTanD"
     .SetConstTanDStrategyEps "AutomaticOrder"
     .ConstTanDModelOrderEps "3"
     .DjordjevicSarkarUpperFreqEps "0"
     .SetElParametricConductivity "False"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstTanD"
     .SetConstTanDStrategyMu "AutomaticOrder"
     .ConstTanDModelOrderMu "3"
     .DjordjevicSarkarUpperFreqMu "0"
     .SetMagParametricConductivity "False"
     .DispModelEps  "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .MaximalOrderNthModelFitEps "10"
     .ErrorLimitNthModelFitEps "0.1"
     .UseOnlyDataInSimFreqRangeNthModelEps "False"
     .DispersiveFittingSchemeMu "Nth Order"
     .MaximalOrderNthModelFitMu "10"
     .ErrorLimitNthModelFitMu "0.1"
     .UseOnlyDataInSimFreqRangeNthModelMu "False"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .FrqType "all"
     .Type "Lossy metal"
     .MaterialUnit "Frequency", "GHz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "s"
     .Mu "1.0"
     .Sigma "5.8e+007"
     .LossyMetalSIRoughness "0.0"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Colour "1", "1", "0" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .Create
End With 

With Material 
     .Reset 
     .Name "FR-4 (lossy)" 
     .Folder "MWSSCHEM1" 
     .Rho "0.0"
     .ThermalType "Normal"
     .ThermalConductivity "0.3"
     .SpecificHeat "0", "J/K/kg"
     .DynamicViscosity "0"
     .UseEmissivity "True"
     .Emissivity "0"
     .MetabolicRate "0.0"
     .VoxelConvection "0.0"
     .BloodFlow "0"
     .MechanicsType "Unused"
     .SolarRadiationAbsorptionType "Opaque"
     .Absorptance "0.0"
     .UseSemiTransparencyCalculator "False"
     .SolarRadTransmittance "0.0"
     .SolarRadReflectance "0.0"
     .SolarRadSpecimenThickness "0.0"
     .SolarRadRefractiveIndex "1.0"
     .SolarRadAbsorptionCoefficient "0.0"
     .FrqType "all"
     .Type "Normal"
     .MaterialUnit "Frequency", "GHz"
     .MaterialUnit "Geometry", "mm"
     .MaterialUnit "Time", "s"
     .Epsilon "4.3"
     .Mu "1.0"
     .Sigma "0.0"
     .TanD "0.025"
     .TanDFreq "10.0"
     .TanDGiven "True"
     .TanDModel "ConstTanD"
     .SetConstTanDStrategyEps "AutomaticOrder"
     .ConstTanDModelOrderEps "3"
     .DjordjevicSarkarUpperFreqEps "0"
     .SetElParametricConductivity "False"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0.0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstSigma"
     .SetConstTanDStrategyMu "AutomaticOrder"
     .ConstTanDModelOrderMu "3"
     .DjordjevicSarkarUpperFreqMu "0"
     .SetMagParametricConductivity "False"
     .DispModelEps "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "1st Order"
     .DispersiveFittingSchemeMu "1st Order"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Colour "0.94", "0.82", "0.76" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .Create
End With 

With SAT
     .Reset 
     .FileName "*Model.mif.sab" 
     .SubProjectName3D "..\..\ModelCache\Model.mif" 
     .SubProjectScaleFactor "0.001" 
     .Version "14.0" 
     .PortnameMap "1>1" 
     .AssemblyPartName "MWSSCHEM1" 
     .ImportToActiveCoordinateSystem "False" 
     .Curves "True" 
     .Wires "True" 
     .SolidWiresAsSolids "False" 
     .ImportSources "True" 
     .Set "ImportSensitivityInformation", "True" 
     .Read 
End With

With Port 
     .Reset 
     .PortNumber "1" 
     .Label ""
     .Folder "MWSSCHEM1"
     .NumberOfModes "1"
     .AdjustPolarization "False"
     .PolarizationAngle "0"
     .ReferencePlaneDistance "0"
     .TextSize "50"
     .TextMaxLimit "1"
     .Coordinates "Free"
     .Orientation "zmin"
     .PortOnBound "False"
     .ClipPickedPortToBound "False"
     .Xrange "0", "12.547000000000001"
     .Yrange "0", "24.954000000000001"
     .Zrange "0", "0"
     .XrangeAdd "0.0", "0.0"
     .YrangeAdd "0.0", "0.0"
     .ZrangeAdd "0.0", "0.0"
     .SingleEnded "False"
     .Shield "PEC"
     .WaveguideMonitor "False"
     .ReferenceWCS "6.2735", "12.477", "0", "0", "0", "-1", "1", "0", "0"
     .CreateImported 
End With 

With Transform 
     .Reset 
     .Name "port1" 
     .UseGlobalCoordinates "True" 
     .Vector "-12.477", "-32.15", "0.035" 
     .AdjustVectorToSubProjectScaleFactor 
     .Matrix "0", "0", "1", "1", "0", "0", "0", "1", "0" 
     .Transform "port", "matrix" 
     .Transform "port", "GlobalToLocal" 
End With 


EndSubProject 


'@ activate global coordinates

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
WCS.ActivateWCS "global"

'@ define frequency range

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Solver.FrequencyRange "1.5", "3.5"

'@ define background

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Background 
     .Reset 
     .XminSpace "0.0" 
     .XmaxSpace "0.0" 
     .YminSpace "0.0" 
     .YmaxSpace "0.0" 
     .ZminSpace "0.0" 
     .ZmaxSpace "0.0" 
     .ApplyInAllDirections "False" 
End With 

With Material 
     .Reset 
     .Rho "0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .SpecificHeat "0", "J/K/kg"
     .DynamicViscosity "0"
     .UseEmissivity "True"
     .Emissivity "0"
     .MetabolicRate "0.0"
     .VoxelConvection "0.0"
     .BloodFlow "0"
     .MechanicsType "Unused"
     .SolarRadiationAbsorptionType "Opaque"
     .Absorptance "0.0"
     .UseSemiTransparencyCalculator "False"
     .SolarRadTransmittance "0.0"
     .SolarRadReflectance "0.0"
     .SolarRadSpecimenThickness "0.0"
     .SolarRadRefractiveIndex "1.0"
     .SolarRadAbsorptionCoefficient "0.0"
     .FrqType "all"
     .Type "Normal"
     .MaterialUnit "Frequency", "Hz"
     .MaterialUnit "Geometry", "m"
     .MaterialUnit "Time", "s"
     .MaterialUnit "Temperature", "K"
     .Epsilon "1.0"
     .Mu "1.0"
     .Sigma "0"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstSigma"
     .SetConstTanDStrategyEps "AutomaticOrder"
     .ConstTanDModelOrderEps "3"
     .DjordjevicSarkarUpperFreqEps "0"
     .SetElParametricConductivity "False"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstSigma"
     .SetConstTanDStrategyMu "AutomaticOrder"
     .ConstTanDModelOrderMu "3"
     .DjordjevicSarkarUpperFreqMu "0"
     .SetMagParametricConductivity "False"
     .DispModelEps  "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .MaximalOrderNthModelFitEps "10"
     .ErrorLimitNthModelFitEps "0.1"
     .UseOnlyDataInSimFreqRangeNthModelEps "False"
     .DispersiveFittingSchemeMu "Nth Order"
     .MaximalOrderNthModelFitMu "10"
     .ErrorLimitNthModelFitMu "0.1"
     .UseOnlyDataInSimFreqRangeNthModelMu "False"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Colour "0.6", "0.6", "0.6" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .ChangeBackgroundMaterial
End With

'@ define boundaries

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
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
     .ApplyInAllDirections "False"
     .OpenAddSpaceFactor "0.5"
     .ThermalBoundary "Xmin", "isothermal"
     .ThermalBoundary "Xmax", "isothermal"
     .ThermalBoundary "Ymin", "isothermal"
     .ThermalBoundary "Ymax", "isothermal"
     .ThermalBoundary "Zmin", "isothermal"
     .ThermalBoundary "Zmax", "isothermal"
     .ThermalSymmetry "X", "none"
     .ThermalSymmetry "Y", "none"
     .ThermalSymmetry "Z", "none"
     .ResetThermalBoundaryValues
     .WallFlow "Xmin", "NoSlip"
     .EnableThermalRadiation "Xmin", "True"
     .OverwriteThermalRadiation "Xmin", "False"
     .WallFlow "Xmax", "NoSlip"
     .EnableThermalRadiation "Xmax", "True"
     .OverwriteThermalRadiation "Xmax", "False"
     .WallFlow "Ymin", "NoSlip"
     .EnableThermalRadiation "Ymin", "True"
     .OverwriteThermalRadiation "Ymin", "False"
     .WallFlow "Ymax", "NoSlip"
     .EnableThermalRadiation "Ymax", "True"
     .OverwriteThermalRadiation "Ymax", "False"
     .WallFlow "Zmin", "NoSlip"
     .EnableThermalRadiation "Zmin", "True"
     .OverwriteThermalRadiation "Zmin", "False"
     .WallFlow "Zmax", "NoSlip"
     .EnableThermalRadiation "Zmax", "True"
     .OverwriteThermalRadiation "Zmax", "False"
End With

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

'@ define frequency range

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Solver.FrequencyRange "1.5", "3.5"

'@ define background

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Background 
     .Reset 
     .XminSpace "0.0" 
     .XmaxSpace "0.0" 
     .YminSpace "0.0" 
     .YmaxSpace "0.0" 
     .ZminSpace "0.0" 
     .ZmaxSpace "0.0" 
     .ApplyInAllDirections "False" 
End With 

With Material 
     .Reset 
     .Rho "0"
     .ThermalType "Normal"
     .ThermalConductivity "0"
     .SpecificHeat "0", "J/K/kg"
     .DynamicViscosity "0"
     .UseEmissivity "True"
     .Emissivity "0"
     .MetabolicRate "0.0"
     .VoxelConvection "0.0"
     .BloodFlow "0"
     .MechanicsType "Unused"
     .SolarRadiationAbsorptionType "Opaque"
     .Absorptance "0.0"
     .UseSemiTransparencyCalculator "False"
     .SolarRadTransmittance "0.0"
     .SolarRadReflectance "0.0"
     .SolarRadSpecimenThickness "0.0"
     .SolarRadRefractiveIndex "1.0"
     .SolarRadAbsorptionCoefficient "0.0"
     .FrqType "all"
     .Type "Normal"
     .MaterialUnit "Frequency", "Hz"
     .MaterialUnit "Geometry", "m"
     .MaterialUnit "Time", "s"
     .MaterialUnit "Temperature", "K"
     .Epsilon "1.0"
     .Mu "1.0"
     .Sigma "0"
     .TanD "0.0"
     .TanDFreq "0.0"
     .TanDGiven "False"
     .TanDModel "ConstSigma"
     .SetConstTanDStrategyEps "AutomaticOrder"
     .ConstTanDModelOrderEps "3"
     .DjordjevicSarkarUpperFreqEps "0"
     .SetElParametricConductivity "False"
     .ReferenceCoordSystem "Global"
     .CoordSystemType "Cartesian"
     .SigmaM "0"
     .TanDM "0.0"
     .TanDMFreq "0.0"
     .TanDMGiven "False"
     .TanDMModel "ConstSigma"
     .SetConstTanDStrategyMu "AutomaticOrder"
     .ConstTanDModelOrderMu "3"
     .DjordjevicSarkarUpperFreqMu "0"
     .SetMagParametricConductivity "False"
     .DispModelEps  "None"
     .DispModelMu "None"
     .DispersiveFittingSchemeEps "Nth Order"
     .MaximalOrderNthModelFitEps "10"
     .ErrorLimitNthModelFitEps "0.1"
     .UseOnlyDataInSimFreqRangeNthModelEps "False"
     .DispersiveFittingSchemeMu "Nth Order"
     .MaximalOrderNthModelFitMu "10"
     .ErrorLimitNthModelFitMu "0.1"
     .UseOnlyDataInSimFreqRangeNthModelMu "False"
     .UseGeneralDispersionEps "False"
     .UseGeneralDispersionMu "False"
     .NLAnisotropy "False"
     .NLAStackingFactor "1"
     .NLADirectionX "1"
     .NLADirectionY "0"
     .NLADirectionZ "0"
     .Colour "0.6", "0.6", "0.6" 
     .Wireframe "False" 
     .Reflection "False" 
     .Allowoutline "True" 
     .Transparentoutline "False" 
     .Transparency "0" 
     .ChangeBackgroundMaterial
End With

'@ define boundaries

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
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
     .ApplyInAllDirections "False"
     .OpenAddSpaceFactor "0.5"
     .ThermalBoundary "Xmin", "isothermal"
     .ThermalBoundary "Xmax", "isothermal"
     .ThermalBoundary "Ymin", "isothermal"
     .ThermalBoundary "Ymax", "isothermal"
     .ThermalBoundary "Zmin", "isothermal"
     .ThermalBoundary "Zmax", "isothermal"
     .ThermalSymmetry "X", "none"
     .ThermalSymmetry "Y", "none"
     .ThermalSymmetry "Z", "none"
     .ResetThermalBoundaryValues
     .WallFlow "Xmin", "NoSlip"
     .EnableThermalRadiation "Xmin", "True"
     .OverwriteThermalRadiation "Xmin", "False"
     .WallFlow "Xmax", "NoSlip"
     .EnableThermalRadiation "Xmax", "True"
     .OverwriteThermalRadiation "Xmax", "False"
     .WallFlow "Ymin", "NoSlip"
     .EnableThermalRadiation "Ymin", "True"
     .OverwriteThermalRadiation "Ymin", "False"
     .WallFlow "Ymax", "NoSlip"
     .EnableThermalRadiation "Ymax", "True"
     .OverwriteThermalRadiation "Ymax", "False"
     .WallFlow "Zmin", "NoSlip"
     .EnableThermalRadiation "Zmin", "True"
     .OverwriteThermalRadiation "Zmin", "False"
     .WallFlow "Zmax", "NoSlip"
     .EnableThermalRadiation "Zmax", "True"
     .OverwriteThermalRadiation "Zmax", "False"
End With

'@ define units

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Units 
     .SetUnit "Length", "mm"
     .SetUnit "Temperature", "K"
     .SetUnit "Voltage", "V"
     .SetUnit "Current", "A"
     .SetUnit "Resistance", "Ohm"
     .SetUnit "Conductance", "S"
     .SetUnit "Capacitance", "pF"
     .SetUnit "Inductance", "nH"
     .SetUnit "Frequency", "GHz"
     .SetUnit "Time", "ns"
     .SetResultUnit "frequency", "frequency", "" 
End With

'@ build array geometry from unit cell

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With PhasedAntennaArray
    .Reset 
    .Orientation "XY" 
    .NumberOfElements "4", "4" 
    .Spacing "PAA_UC_DS1", "PAA_UC_DS2" 
    .GridAngle "PAA_UC_ANGLE" 
    .FillSpace "True" 
    .ForceParallelogram "False" 
    .ElementTypes "1;1;1;1;1;0;0;1;1;0;0;1;1;1;1;1;" 
    .ElementLabel "(1.1);(2.1);(3.1);(4.1);(1.2);(2.2);(3.2);(4.2);(1.3);(2.3);(3.3);(4.3);(1.4);(2.4);(3.4);(4.4);" 
    .IdenticalPorts "True" 
    .InsertElements "True" 
    .ExcludeComponents "" 
    .Create 
End With

'@ change problem type

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
ChangeProblemType "High Frequency"

'@ set solver type

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
ChangeSolverType "HF Time Domain" 
With Solver
     .Method "Hexahedral"
End With

'@ define array excitation properties

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With PhasedAntennaArray
    .QuantizationError "0", "0", "0.5" 
    .Pedestal 0, "0.0" 
End With

'@ define boundaries

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
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
     .XminThermal "isothermal"  
     .XmaxThermal "isothermal"  
     .YminThermal "isothermal"  
     .YmaxThermal "isothermal"  
     .ZminThermal "isothermal"  
     .ZmaxThermal "isothermal"  
     .XsymmetryThermal "none"  
     .YsymmetryThermal "none"  
     .ZsymmetryThermal "none"  
     .ApplyInAllDirections "False"  
     .ApplyInAllDirectionsThermal "False"  
     .XminTemperature ""  
     .XminTemperatureType "None"  
     .XmaxTemperature ""  
     .XmaxTemperatureType "None"  
     .YminTemperature ""  
     .YminTemperatureType "None"  
     .YmaxTemperature ""  
     .YmaxTemperatureType "None"  
     .ZminTemperature ""  
     .ZminTemperatureType "None"  
     .ZmaxTemperature ""  
     .ZmaxTemperatureType "None"  
End With

'@ define solver excitation modes

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With PhasedAntennaArray 
	 .ExcitationPatternType "Taylor"
	 .LoadExcitations 
End With 
With PhasedAntennaArray 
    .FullArrayExcitationType "Simultaneous"
    .ElementExcitationType "Individual"
    .PhaseShiftsAsTimeDelays "False"
End With 
With CombineResults 
    .Reset 
    .SetLabel "Array Scanning1" 
    .SetOffsetType "Phase" 
    .SetReferenceFrequency "PAA_FA_FREQ" 
    .SetExcitationValues "port", "6", "1", "AA_Amplitude (5, 6, 1)", "AA_Phase (5, 6, 1)" 
    .SetExcitationValues "port", "7", "1", "AA_Amplitude (6, 7, 1)", "AA_Phase (6, 7, 1)" 
    .SetExcitationValues "port", "10", "1", "AA_Amplitude (9, 10, 1)", "AA_Phase (9, 10, 1)" 
    .SetExcitationValues "port", "11", "1", "AA_Amplitude (10, 11, 1)", "AA_Phase (10, 11, 1)" 
    .AddToExcitationList 
End With 
With Solver 
    .StimulationPort "Selected"
    .StimulationMode "All" 
    .ResetExcitationModes 
    .SParameterPortExcitation "True" 
    .SimultaneousExcitation "False" 
    .ActivateExcitation "Simultaneous", "Array Scanning1", "1", "True" 
End With 
With FDSolver 
    .Stimulation "List", "List" 
    .ResetExcitationList 
    .AddToExcitationList "Simultaneous", "Array Scanning1" 
End With

'@ define farfield monitor: Farfield (PAA_FA_FREQ)

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
With Monitor 
	 .Reset 
	 .Name "Farfield (PAA_FA_FREQ)" 
	 .Domain "Frequency" 
	 .FieldType "Farfield" 
	 .Frequency "PAA_FA_FREQ" 
	 .UseSubvolume "False" 
	 .ExportFarfieldSource "False" 
	 .Create 
End With

'@ define time domain and frequency domain solver parameters

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Mesh.SetCreator "High Frequency" 
With Solver 
	 .Method "Hexahedral" 
	 .CalculationType "TD-S" 
	 .SteadyStateLimit "-40" 
	 .MeshAdaption "False" 
	 .AutoNormImpedance "False" 
	 .NormingImpedance "50" 
	 .CalculateModesOnly "False" 
	 .SParaSymmetry "False" 
	 .StoreTDResultsInCache  "False" 
	 .FullDeembedding "False" 
	 .SuperimposePLWExcitation "False" 
	 .UseSensitivityAnalysis "False" 
End With 
With DomainDecomposition 
	 .EncloseComponents "True", "Element;[Array]" 
	 .UseAutomaticRepetitions "True" 
End With

'@ define farfield monitoring specials

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Solver.MonitorFarFieldsNearToModel "True"

'@ change solver type

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
ChangeSolverType "HF Time Domain"

'@ set mesh type

'[VERSION]2025.0|34.0.1|20240830[/VERSION]
Mesh.MeshType "PBA"
MeshSettings.SetMeshType "Hex"
MeshSettings.Set "Version", 1%


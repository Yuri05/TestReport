outputVenousBlood <- function(subFilter, dataDisplayName, pkParametersVenousBlood)
{
  return (Output$new(path = "Organism|PeripheralVenousBlood|Raltegravir|Plasma (Peripheral Venous Blood)", displayName = "Raltegravir", displayUnit = "µg/l", 
                     pkParameters = pkParametersVenousBlood,
                     dataSelection = paste0('OUTPUT=="Raltegravir_PLASMA" & ', subFilter),
                     dataDisplayName = dataDisplayName,
                     residualScale = ResidualScales$Logarithmic))
}


#startWorkflow = function()
#{

  library("ospsuite.reportingengine")
  Sys.setenv(LANG = "en")
  ospsuite::removeAllUserDefinedPKParameters()

  workflowDir = getwd()
  outputDir = file.path(workflowDir, "Report")

  dataFile = file.path(workflowDir,'Data/Raltegravir_PK.txt')
  dictionaryFile = file.path(workflowDir,'Data/tpDictionary.csv')
  dataSource = DataSource$new(dataFile = dataFile, metaDataFile = dictionaryFile)

  pkC_max = PkParameterInfo$new("C_max", displayName = "C_max", displayUnit = "µg/l")
  pkAUC_t1_t2 = PkParameterInfo$new("AUC_tD1_tD2", displayName = "AUC_t1_t2", displayUnit = "µg*h/l")

  pkVenousMultiple = c(pkC_max, pkAUC_t1_t2)

  simulationSet10 <- SimulationSet$new(simulationSetName = 'Raltegravir 100 mg filmcoated tablet md', 
                                       simulationFile = file.path(workflowDir, "Models", "Raltegravir 100 mg filmcoated tablet md.pkml"),
                                       outputs = outputVenousBlood('Grouping=="100mg_FCT_MD"', 'Observed_Raltegravir 100 mg filmcoated tablet md',  pkVenousMultiple), 
                                       dataSource = dataSource)

  meanModelWorkflow <- MeanModelWorkflow$new(simulationSets = list(simulationSet10), workflowFolder = outputDir, 
                                             simulationSetDescriptor = "Scenario")

  meanModelWorkflow$inactivateTasks(meanModelWorkflow$getAllTasks())
  meanModelWorkflow$activateTasks("simulate")
  meanModelWorkflow$activateTasks("plotAbsorption")
  meanModelWorkflow$activateTasks("plotMassBalance")
  meanModelWorkflow$activateTasks("plotTimeProfilesAndResiduals")
  meanModelWorkflow$activateTasks("calculatePKParameters")
  meanModelWorkflow$activateTasks("plotPKParameters")
  meanModelWorkflow$activateTasks("calculateSensitivity")
  meanModelWorkflow$activateTasks("plotSensitivity")

  meanModelWorkflow$calculateSensitivity$settings$showProgress = TRUE
  meanModelWorkflow$calculateSensitivity$settings$variableParameterPaths <- c(
    "Raltegravir|Lipophilicity", 
    "Raltegravir|Specific intestinal permeability (transcellular)",  
    "Raltegravir-UGT1A9-Kassahun 2007|In vitro Vmax for liver microsomes",
    "Raltegravir-UGT1A1-Kassahun 2007|In vitro Vmax for liver microsomes"
    )
  meanModelWorkflow$plotSensitivity$settings = SensitivityPlotSettings$new(xAxisFontSize = 12, yAxisFontSize = 8)

  setWorkflowParameterDisplayPathsFromFile(fileName = "parameterDisplayPath.csv", workflow = meanModelWorkflow)
  
  meanModelWorkflow$runWorkflow()
#}

#startWorkflow()

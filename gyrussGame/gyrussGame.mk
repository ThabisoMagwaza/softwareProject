##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=gyrussGame
ConfigurationName      :=Debug
WorkspacePath          :="C:/Users/Thabiso Magwaza/Documents/C++"
ProjectPath            :="C:/Users/Thabiso Magwaza/Desktop/Electrical Engineering Undergrad/Third Year/SecondSemester/ELEN3009/Project/softwareProject/gyrussGame"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Thabiso Magwaza
Date                   :=16/09/2017
CodeLitePath           :="C:/Program Files/CodeLite"
LinkerName             :=C:/TDM-GCC-64/bin/g++.exe
SharedObjectLinkerName :=C:/TDM-GCC-64/bin/g++.exe -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.i
DebugSwitch            :=-g 
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E
ObjectsFileList        :="gyrussGame.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=C:/TDM-GCC-64/bin/windres.exe
LinkOptions            :=  
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch)"C:\Users\Thabiso Magwaza\Desktop\ProgramSetups\win-64\sfml\include" 
IncludePCH             := 
RcIncludePath          := 
Libs                   := $(LibrarySwitch)sfml-audio $(LibrarySwitch)sfml-graphics $(LibrarySwitch)sfml-window $(LibrarySwitch)sfml-system 
ArLibs                 :=  "sfml-audio" "sfml-graphics" "sfml-window" "sfml-system" 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch)"C:\Users\Thabiso Magwaza\Desktop\ProgramSetups\win-64\sfml\lib" 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := C:/TDM-GCC-64/bin/ar.exe rcu
CXX      := C:/TDM-GCC-64/bin/g++.exe --std=gnu++14
CC       := C:/TDM-GCC-64/bin/gcc.exe
CXXFLAGS :=  -g -O0 -Wall $(Preprocessors)
CFLAGS   :=  -g -O0 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := C:/TDM-GCC-64/bin/as.exe


##
## User defined environment variables
##
CodeLiteDir:=C:\Program Files\CodeLite
Objects0=$(IntermediateDirectory)/Submissions_Background.cpp$(ObjectSuffix) $(IntermediateDirectory)/Submissions_Game.cpp$(ObjectSuffix) $(IntermediateDirectory)/Submissions_main.cpp$(ObjectSuffix) $(IntermediateDirectory)/Submissions_SplashScreen.cpp$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@$(MakeDirCommand) "./Debug"


$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Debug"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/Submissions_Background.cpp$(ObjectSuffix): Submissions/Background.cpp $(IntermediateDirectory)/Submissions_Background.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Thabiso Magwaza/Desktop/Electrical Engineering Undergrad/Third Year/SecondSemester/ELEN3009/Project/softwareProject/gyrussGame/Submissions/Background.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Submissions_Background.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Submissions_Background.cpp$(DependSuffix): Submissions/Background.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Submissions_Background.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Submissions_Background.cpp$(DependSuffix) -MM Submissions/Background.cpp

$(IntermediateDirectory)/Submissions_Background.cpp$(PreprocessSuffix): Submissions/Background.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Submissions_Background.cpp$(PreprocessSuffix) Submissions/Background.cpp

$(IntermediateDirectory)/Submissions_Game.cpp$(ObjectSuffix): Submissions/Game.cpp $(IntermediateDirectory)/Submissions_Game.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Thabiso Magwaza/Desktop/Electrical Engineering Undergrad/Third Year/SecondSemester/ELEN3009/Project/softwareProject/gyrussGame/Submissions/Game.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Submissions_Game.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Submissions_Game.cpp$(DependSuffix): Submissions/Game.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Submissions_Game.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Submissions_Game.cpp$(DependSuffix) -MM Submissions/Game.cpp

$(IntermediateDirectory)/Submissions_Game.cpp$(PreprocessSuffix): Submissions/Game.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Submissions_Game.cpp$(PreprocessSuffix) Submissions/Game.cpp

$(IntermediateDirectory)/Submissions_main.cpp$(ObjectSuffix): Submissions/main.cpp $(IntermediateDirectory)/Submissions_main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Thabiso Magwaza/Desktop/Electrical Engineering Undergrad/Third Year/SecondSemester/ELEN3009/Project/softwareProject/gyrussGame/Submissions/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Submissions_main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Submissions_main.cpp$(DependSuffix): Submissions/main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Submissions_main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Submissions_main.cpp$(DependSuffix) -MM Submissions/main.cpp

$(IntermediateDirectory)/Submissions_main.cpp$(PreprocessSuffix): Submissions/main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Submissions_main.cpp$(PreprocessSuffix) Submissions/main.cpp

$(IntermediateDirectory)/Submissions_SplashScreen.cpp$(ObjectSuffix): Submissions/SplashScreen.cpp $(IntermediateDirectory)/Submissions_SplashScreen.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Thabiso Magwaza/Desktop/Electrical Engineering Undergrad/Third Year/SecondSemester/ELEN3009/Project/softwareProject/gyrussGame/Submissions/SplashScreen.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Submissions_SplashScreen.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Submissions_SplashScreen.cpp$(DependSuffix): Submissions/SplashScreen.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Submissions_SplashScreen.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/Submissions_SplashScreen.cpp$(DependSuffix) -MM Submissions/SplashScreen.cpp

$(IntermediateDirectory)/Submissions_SplashScreen.cpp$(PreprocessSuffix): Submissions/SplashScreen.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Submissions_SplashScreen.cpp$(PreprocessSuffix) Submissions/SplashScreen.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/



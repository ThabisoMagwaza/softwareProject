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
Objects0=$(IntermediateDirectory)/up_Submissions_Background.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_Submissions_Game.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_Submissions_main.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_Submissions_SplashScreen.cpp$(ObjectSuffix) 



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
$(IntermediateDirectory)/up_Submissions_Background.cpp$(ObjectSuffix): ../Submissions/Background.cpp $(IntermediateDirectory)/up_Submissions_Background.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Thabiso Magwaza/Desktop/Electrical Engineering Undergrad/Third Year/SecondSemester/ELEN3009/Project/softwareProject/Submissions/Background.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_Submissions_Background.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_Submissions_Background.cpp$(DependSuffix): ../Submissions/Background.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_Submissions_Background.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_Submissions_Background.cpp$(DependSuffix) -MM ../Submissions/Background.cpp

$(IntermediateDirectory)/up_Submissions_Background.cpp$(PreprocessSuffix): ../Submissions/Background.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_Submissions_Background.cpp$(PreprocessSuffix) ../Submissions/Background.cpp

$(IntermediateDirectory)/up_Submissions_Game.cpp$(ObjectSuffix): ../Submissions/Game.cpp $(IntermediateDirectory)/up_Submissions_Game.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Thabiso Magwaza/Desktop/Electrical Engineering Undergrad/Third Year/SecondSemester/ELEN3009/Project/softwareProject/Submissions/Game.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_Submissions_Game.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_Submissions_Game.cpp$(DependSuffix): ../Submissions/Game.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_Submissions_Game.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_Submissions_Game.cpp$(DependSuffix) -MM ../Submissions/Game.cpp

$(IntermediateDirectory)/up_Submissions_Game.cpp$(PreprocessSuffix): ../Submissions/Game.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_Submissions_Game.cpp$(PreprocessSuffix) ../Submissions/Game.cpp

$(IntermediateDirectory)/up_Submissions_main.cpp$(ObjectSuffix): ../Submissions/main.cpp $(IntermediateDirectory)/up_Submissions_main.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Thabiso Magwaza/Desktop/Electrical Engineering Undergrad/Third Year/SecondSemester/ELEN3009/Project/softwareProject/Submissions/main.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_Submissions_main.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_Submissions_main.cpp$(DependSuffix): ../Submissions/main.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_Submissions_main.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_Submissions_main.cpp$(DependSuffix) -MM ../Submissions/main.cpp

$(IntermediateDirectory)/up_Submissions_main.cpp$(PreprocessSuffix): ../Submissions/main.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_Submissions_main.cpp$(PreprocessSuffix) ../Submissions/main.cpp

$(IntermediateDirectory)/up_Submissions_SplashScreen.cpp$(ObjectSuffix): ../Submissions/SplashScreen.cpp $(IntermediateDirectory)/up_Submissions_SplashScreen.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Thabiso Magwaza/Desktop/Electrical Engineering Undergrad/Third Year/SecondSemester/ELEN3009/Project/softwareProject/Submissions/SplashScreen.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_Submissions_SplashScreen.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_Submissions_SplashScreen.cpp$(DependSuffix): ../Submissions/SplashScreen.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_Submissions_SplashScreen.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_Submissions_SplashScreen.cpp$(DependSuffix) -MM ../Submissions/SplashScreen.cpp

$(IntermediateDirectory)/up_Submissions_SplashScreen.cpp$(PreprocessSuffix): ../Submissions/SplashScreen.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_Submissions_SplashScreen.cpp$(PreprocessSuffix) ../Submissions/SplashScreen.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/



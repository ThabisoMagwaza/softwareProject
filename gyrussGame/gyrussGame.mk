##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Debug
ProjectName            :=gyrussGame
ConfigurationName      :=Debug
WorkspacePath          :="C:/Users/Thabiso Magwaza/Documents/Lab3"
ProjectPath            :="C:/Users/Thabiso Magwaza/Desktop/Electrical Engineering Undergrad/Third Year/SecondSemester/ELEN3009/Project/projectCode/gyrussGame"
IntermediateDirectory  :=./Debug
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Thabiso Magwaza
Date                   :=15/09/2017
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
Objects0=$(IntermediateDirectory)/up_Submissions_game-source-code_Game.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_Submissions_game-source-code_Player.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_Submissions_game-source-code_source.cpp$(ObjectSuffix) $(IntermediateDirectory)/up_Submissions_game-source-code_SplashScreen.cpp$(ObjectSuffix) 



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
$(IntermediateDirectory)/up_Submissions_game-source-code_Game.cpp$(ObjectSuffix): ../Submissions/game-source-code/Game.cpp $(IntermediateDirectory)/up_Submissions_game-source-code_Game.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Thabiso Magwaza/Desktop/Electrical Engineering Undergrad/Third Year/SecondSemester/ELEN3009/Project/projectCode/Submissions/game-source-code/Game.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_Submissions_game-source-code_Game.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_Submissions_game-source-code_Game.cpp$(DependSuffix): ../Submissions/game-source-code/Game.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_Submissions_game-source-code_Game.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_Submissions_game-source-code_Game.cpp$(DependSuffix) -MM ../Submissions/game-source-code/Game.cpp

$(IntermediateDirectory)/up_Submissions_game-source-code_Game.cpp$(PreprocessSuffix): ../Submissions/game-source-code/Game.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_Submissions_game-source-code_Game.cpp$(PreprocessSuffix) ../Submissions/game-source-code/Game.cpp

$(IntermediateDirectory)/up_Submissions_game-source-code_Player.cpp$(ObjectSuffix): ../Submissions/game-source-code/Player.cpp $(IntermediateDirectory)/up_Submissions_game-source-code_Player.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Thabiso Magwaza/Desktop/Electrical Engineering Undergrad/Third Year/SecondSemester/ELEN3009/Project/projectCode/Submissions/game-source-code/Player.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_Submissions_game-source-code_Player.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_Submissions_game-source-code_Player.cpp$(DependSuffix): ../Submissions/game-source-code/Player.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_Submissions_game-source-code_Player.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_Submissions_game-source-code_Player.cpp$(DependSuffix) -MM ../Submissions/game-source-code/Player.cpp

$(IntermediateDirectory)/up_Submissions_game-source-code_Player.cpp$(PreprocessSuffix): ../Submissions/game-source-code/Player.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_Submissions_game-source-code_Player.cpp$(PreprocessSuffix) ../Submissions/game-source-code/Player.cpp

$(IntermediateDirectory)/up_Submissions_game-source-code_source.cpp$(ObjectSuffix): ../Submissions/game-source-code/source.cpp $(IntermediateDirectory)/up_Submissions_game-source-code_source.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Thabiso Magwaza/Desktop/Electrical Engineering Undergrad/Third Year/SecondSemester/ELEN3009/Project/projectCode/Submissions/game-source-code/source.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_Submissions_game-source-code_source.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_Submissions_game-source-code_source.cpp$(DependSuffix): ../Submissions/game-source-code/source.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_Submissions_game-source-code_source.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_Submissions_game-source-code_source.cpp$(DependSuffix) -MM ../Submissions/game-source-code/source.cpp

$(IntermediateDirectory)/up_Submissions_game-source-code_source.cpp$(PreprocessSuffix): ../Submissions/game-source-code/source.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_Submissions_game-source-code_source.cpp$(PreprocessSuffix) ../Submissions/game-source-code/source.cpp

$(IntermediateDirectory)/up_Submissions_game-source-code_SplashScreen.cpp$(ObjectSuffix): ../Submissions/game-source-code/SplashScreen.cpp $(IntermediateDirectory)/up_Submissions_game-source-code_SplashScreen.cpp$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "C:/Users/Thabiso Magwaza/Desktop/Electrical Engineering Undergrad/Third Year/SecondSemester/ELEN3009/Project/projectCode/Submissions/game-source-code/SplashScreen.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/up_Submissions_game-source-code_SplashScreen.cpp$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/up_Submissions_game-source-code_SplashScreen.cpp$(DependSuffix): ../Submissions/game-source-code/SplashScreen.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/up_Submissions_game-source-code_SplashScreen.cpp$(ObjectSuffix) -MF$(IntermediateDirectory)/up_Submissions_game-source-code_SplashScreen.cpp$(DependSuffix) -MM ../Submissions/game-source-code/SplashScreen.cpp

$(IntermediateDirectory)/up_Submissions_game-source-code_SplashScreen.cpp$(PreprocessSuffix): ../Submissions/game-source-code/SplashScreen.cpp
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/up_Submissions_game-source-code_SplashScreen.cpp$(PreprocessSuffix) ../Submissions/game-source-code/SplashScreen.cpp


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) -r ./Debug/



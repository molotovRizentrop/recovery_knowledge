#!/usr/bin/env sh
@rem
@rem Copyright 2023. http://dev.kastan
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem     http://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem ###################################################################################################################
@rem Description:
@rem             The sh script to start the Tic-Tac-Toe game for Unix systems
@rem
@rem @author kashtan
@rem @email  bassanddub.co@gmail.com
@rem ###################################################################################################################

java -jar ${project.build.finalName}.jar
echo 'Press enter to continue...'
read -r test
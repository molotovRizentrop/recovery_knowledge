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
########################################################################################################################
# ----------------------------------------------------------------------------------------------------------------------
# Try to use the `java` from `$JAVA_HOME` if this environment variable set correctly:
if [ -n "$JAVA_HOME" ] && [ -x "$JAVA_HOME/bin/java" ] ; then
  JAVA_CMD="$JAVA_HOME/bin/java"
fi
# ----------------------------------------------------------------------------------------------------------------------
# Try to use the `java` using `PATH` environment variable:
WHICH_JAVA=$(which java)
if [ -x "$WHICH_JAVA" ]; then
  JAVA_CMD="java"
  unset WHICH_JAVA
fi
# ----------------------------------------------------------------------------------------------------------------------
# Fix current dir issue for MacOS. Read more: http://hints.macworld.com/article.php?story=20041217111834902
cd "$(dirname "$0")" || exit
# Try to use `java` from JRE if `jre/bin/java` exists and executable:
if [ -x "jre/bin/java" ]; then
  JAVA_CMD="jre/bin/java"
fi
# ----------------------------------------------------------------------------------------------------------------------
if [ -z ${JAVA_CMD+x} ]; then
  # Throw error if `java` is not configured:
  echo "------------------------------------------------------------------------" >&2
  echo "\`java\` not defined! Install or configure JVM before using this script!" >&2
  echo "------------------------------------------------------------------------" >&2
  RETURN_CODE=1
else
  # Run tic-tac-toe game:
  $JAVA_CMD -jar ${project.build.finalName}-release.jar
  RETURN_CODE=0
fi
# ----------------------------------------------------------------------------------------------------------------------
# Wait for the `enter` key pressed:
echo "Press enter to continue . . ."
read -r test
# ----------------------------------------------------------------------------------------------------------------------
exit $RETURN_CODE
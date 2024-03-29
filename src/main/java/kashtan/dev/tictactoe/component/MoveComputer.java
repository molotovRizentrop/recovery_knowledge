/*
 * Copyright (c) 2023. http://dev.kashtan
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package kashtan.dev.tictactoe.component;

import kashtan.dev.tictactoe.model.Cell;
import kashtan.dev.tictactoe.model.GameTable;

import java.util.Random;

/**
 * author:kashtan
 * email:bassanddub.co@gmail.com
 **/
public class MoveComputer extends GameTable {
    public void make(final GameTable gameTable) {
        while (true) {
            int randomRow = new Random().nextInt(3);
            int randomCol = new Random().nextInt(3);
            Cell randomCell = new Cell(randomRow, randomCol);
            if (gameTable.isEmpty(randomCell)) {
                gameTable.setSign(randomCell, '0');
                return;
            }
        }
    }
}

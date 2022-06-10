/*
 * Copyright (c) 2022 Application Library Engineering Group.
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


export namespace switchModel {
  export class Model {
    switchId: number = 0
    buttonPositionX: number = 5
    buttonSize: number = 16
    buttonColor1: string = ""
    buttonColor2: string = ""
    buttonColor: string = ""
    withIcon: boolean = false
    isSelected: boolean = false
    iconColor: string = "rgb(255,255,255)"
    iconPositionX: number = 9
    iconPositionY: number = 13
    borderColor: string = "rgba(117,126,118,1.0)"
    shadowPosition: number = 2.5


    setSwitchId(switchId: number): Model {
      this.switchId = switchId
      return this
    }

    setButtonColor(buttonColor: string): Model {
      this.buttonColor = buttonColor
      return this
    }


    setWithIcon(withIcon: boolean): Model {
      this.withIcon = withIcon
      return this
    }

    reset(): Model {
      this.switchId = 0
      this.buttonPositionX = 5
      this.buttonSize = 16
      this.buttonColor1 = "rgba(117,126,118,1.0)"
      this.buttonColor2 = "rgba(216,216,216,1.0)"
      this.buttonColor = "rgba(55,136,62,1.0)"
      this.withIcon= false
      this.isSelected = false
      this.iconColor = "rgb(255,255,255)"
      this.iconPositionX = 9
      this.iconPositionY = 13
      this.borderColor = "rgba(117,126,118,1.0)"
      this.shadowPosition = 2.5
      return this
    }
  }
}

export default switchModel

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
    private switchId: number = 0
    private buttonSize: number = 16
    private withIcon: boolean = false
    private isSelected: boolean = false
    private isOn: boolean = false
    private icon: Resource = $r('app.media.tick')
    private disabled: boolean = false

    private onBackgroundColor: string | Color | Resource = "rgba(55,136,62,1.0)"
    private offBackgroundColor: string | Color | Resource = "rgba(216,216,216,1.0)"

    private onCircleColor: string | Color | Resource= Color.White
    private offCircleColor: string | Color | Resource= "rgba(117,126,118,1.0)"

    private onBorderColor: string | Color | Resource= "rgba(55,136,62,1.0)"
    private offBorderColor: string | Color | Resource= "rgba(117,126,118,1.0)"


    getOnBackgroundColor(): string | Resource | Color {
      return this.onBackgroundColor
    }

    setOnBackgroundColor(onBackgroundColor: string | Color | Resource): Model {
      if (onBackgroundColor != null) {
        this.onBackgroundColor = onBackgroundColor
      } else {
        this.onBackgroundColor = "rgba(55,136,62,1.0)"
      }
      return this
    }

    getOffBackgroundColor(): string | Resource | Color {
      return this.offBackgroundColor
    }

    setOffBackgroundColor(offBackgroundColor: string | Color | Resource): Model {
      if (offBackgroundColor != null) {
        this.offBackgroundColor = offBackgroundColor
      } else {
        this.offBackgroundColor = "rgba(216,216,216,1.0)"
      }
      return this
    }

    getOnCircleColor(): string | Resource | Color {
      return this.onCircleColor
    }

    setOnCircleColor(onCircleColor: string | Color | Resource): Model {
      if (onCircleColor != null) {
        this.onCircleColor = onCircleColor
      } else {
        this.onCircleColor = Color.White
      }
      return this
    }

    getOffCircleColor(): string | Resource | Color {
      return this.offCircleColor
    }

    setOffCircleColor(offCircleColor: string | Color | Resource): Model {
      if (offCircleColor != null) {
        this.offCircleColor = offCircleColor
      } else {
        this.offCircleColor = "rgba(117,126,118,1.0)"
      }
      return this
    }

    getOnBorderColor(): string | Resource | Color {
      return this.onBorderColor
    }

    setOnBorderColor(onBorderColor: string | Color | Resource): Model {
      if (onBorderColor != null) {
        this.onBorderColor = onBorderColor
      } else {
        this.onBorderColor = "rgba(55,136,62,1.0)"
      }
      return this
    }

    getOffBorderColor(): string | Resource | Color {
      return this.offBorderColor
    }

    setOffBorderColor(offBorderColor: string | Color | Resource): Model {
      if (offBorderColor != null) {
        this.offBorderColor = offBorderColor
      } else {
        this.offBorderColor = "rgba(117,126,118,1.0)"
      }
      return this
    }

    getDisabled(): boolean{
      return this.disabled
    }

    setDisabled(disabled: boolean): Model{
      if (disabled == null || disabled == undefined) {
        this.disabled = false
      }
      else this.disabled = disabled
      return this
    }

    getSwitchId(): number {
      return this.switchId
    }

    setSwitchId(switchId: number): Model {
      if (switchId != null && switchId > -1) {
        this.switchId = switchId
      } else {
        this.switchId = 0
      }
      return this
    }

    getButtonSize(): number{
      return this.buttonSize
    }

    setButtonSize(buttonSize: number): Model{
      if (buttonSize != null) this.buttonSize = buttonSize
      else this.buttonSize = 16
      return this
    }

    getWithIcon(): boolean {
      return this.withIcon
    }

    setWithIcon(withIcon: boolean): Model {
      if (withIcon != null) {
        this.withIcon = withIcon
      } else {
        this.withIcon = false
      }
      return this
    }

    getIsSelected(): boolean {
      return this.isSelected
    }

    setIsSelected(isSelected: boolean): Model {
      if (isSelected != null) {
        this.isSelected = isSelected
      } else {
        this.isSelected = false
      }
      return this
    }

    getIsOn(): boolean {
      return this.isOn
    }

    setIsOn(isOn: boolean): Model {
      if (isOn != null) {
        this.isOn = isOn
        if (this.isOn) {
          this.buttonSize = 24
        }
      } else {
        this.isOn = false
      }
      return this
    }

    getIcon(): Resource {
      return this.icon
    }

    setIcon(icon: Resource): Model {
      if (icon != null) {
        this.icon = icon
      }
      else {
        this.icon = $r('app.media.tick')
      }
      return this
    }

    reset(): Model {
      this.switchId = 0
      this.buttonSize = 16
      this.withIcon = false
      this.isSelected = false
      this.isOn = false
      this.icon = $r('app.media.tick')
      this.disabled = false
      this.onBackgroundColor = "rgba(55,136,62,1.0)"
      this.offBackgroundColor = "rgba(216,216,216,1.0)"
      this.onCircleColor = Color.White
      this.offCircleColor = "rgba(117,126,118,1.0)"
      this.onBorderColor = "rgba(55,136,62,1.0)"
      this.offBorderColor = "rgba(117,126,118,1.0)"
      return this
    }
  }
}


export default switchModel

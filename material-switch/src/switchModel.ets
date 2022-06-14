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

import { IconImageType } from './iconImageType'

export namespace switchModel {
  export class Model {
    private switchId: number = 0
    private buttonSize: number = 16
    private buttonColor1: string | Color | Resource = ""
    private buttonColor2: string | Color | Resource = ""
    private buttonColor: string | Color | Resource = "rgba(55,136,62,1.0)"
    private withIcon: boolean = false
    private isSelected: boolean = false
    private iconColor: string | Color | Resource = "rgb(255,255,255)"
    private borderColor: string | Color | Resource = "rgba(117,126,118,1.0)"
    private isOn: boolean = false
    private icon: string | Resource = "M9 22l-10-10.598 2.798-2.859 7.149 7.473 13.144-14.016 2.909 2.806z"
    private iconImageType: IconImageType = IconImageType.Path
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

    getButtonColor1(): string | Resource | Color {
      return this.buttonColor1
    }

    setButtonColor1(buttonColor1: string | Color | Resource): Model {
      if (buttonColor1 != null) {
        this.buttonColor1 = buttonColor1
      } else {
        this.buttonColor1 = "rgba(117,126,118,1.0)"
      }
      return this
    }

    getButtonColor2(): string | Resource | Color {
      return this.buttonColor2
    }

    setButtonColor2(buttonColor2: string | Color | Resource): Model {
      if (buttonColor2 != null) {
        this.buttonColor2 = buttonColor2
      } else {
        this.buttonColor2 = "rgba(216,216,216,1.0)"
      }
      return this
    }

    getButtonColor(): string | Resource | Color {
      return this.buttonColor
    }

    setButtonColor(buttonColor: string | Color | Resource): Model {
      if (buttonColor != null) {
        this.buttonColor = buttonColor
      } else {
        this.buttonColor = "rgba(55,136,62,1.0)"
      }
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

    getIconColor(): string | Resource | Color {
      return this.iconColor
    }

    setIconColor(iconColor: string | Color | Resource): Model {
      if (iconColor != null) {
        this.iconColor = iconColor
      } else {
        this.iconColor = "rgb(255,255,255)"
      }
      return this
    }

    getBorderColor(): string | Resource | Color {
      return this.borderColor
    }

    setBorderColor(borderColor: string | Color | Resource): Model {
      if (borderColor != null) {
        this.borderColor = borderColor
      } else {
        this.borderColor = "rgba(117,126,118,1.0)"
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
          this.buttonColor1 = "rgb(255,255,255)"
          this.buttonColor2 = this.buttonColor
          this.iconColor = this.buttonColor
          this.buttonSize = 24
        }
      } else {
        this.isOn = false
      }
      return this
    }

    getIcon(): string | Resource {
      return this.icon
    }

    setIcon(icon: string | Resource): Model {
      if (icon != null) {
        this.icon = icon
      }
      else {
        this.icon = "M9 22l-10-10.598 2.798-2.859 7.149 7.473 13.144-14.016 2.909 2.806z"
      }
      return this
    }

    getIconImageType(): IconImageType {
      return this.iconImageType
    }

    setIconImageType(iconImageType: IconImageType): Model {
      this.iconImageType = (iconImageType != null && iconImageType != undefined) ? iconImageType : IconImageType.Path;
      return this
    }

    reset(): Model {
      this.switchId = 0
      this.buttonSize = 16
      this.buttonColor1 = "rgba(117,126,118,1.0)"
      this.buttonColor2 = "rgba(216,216,216,1.0)"
      this.buttonColor = "rgba(55,136,62,1.0)"
      this.withIcon = false
      this.isSelected = false
      this.iconColor = "rgb(255,255,255)"
      this.borderColor = "rgba(117,126,118,1.0)"
      this.isOn = false
      this.icon = "M9 22l-10-10.598 2.798-2.859 7.149 7.473 13.144-14.016 2.909 2.806z"
      this.iconImageType = IconImageType.Path
      return this
    }
  }
}

export { IconImageType }  from './iconImageType'

export default switchModel

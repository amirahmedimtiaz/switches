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

import switchModel from "./switchModel"


@Component
export struct Switch {
  @State model: switchModel.Model = new switchModel.Model();
  private onSelect: ((id: number) => void) = null


  build() {
    Shape() {
      Button()
        .width(52)
        .height(32)
        .backgroundColor(this.model.buttonColor2)
        .borderColor(this.model.isSelected ? this.model.borderColor : this.model.buttonColor1)
        .borderWidth(2)
        .borderRadius(2)
      if (this.model.isSelected) {
        Circle()
          .width(38).height(38).fill("rgba(0,0,0,0.3)")
          .offset({ x: this.model.shadowPosition - 6, y: -3 })
      }

      Circle()
        .width(this.model.isSelected ? 28 : this.model.buttonSize)
        .height(this.model.isSelected ? 28 : this.model.buttonSize)
        .offset({
          x: this.model.isSelected ? this.model.buttonPositionX - 3 : this.model.buttonPositionX,
          y: this.model.isSelected ? 2 : (16 - (this.model.buttonSize) / 2)
        })
        .fill(this.model.buttonColor1)
      if (this.model.withIcon) {
        Path()
          .commands("M9 22l-10-10.598 2.798-2.859 7.149 7.473 13.144-14.016 2.909 2.806z")
          .fill(this.model.iconColor)
          .offset({ x: this.model.iconPositionX, y: this.model.iconPositionY })
      }
    }.onClick(() => {
      this.model.isSelected = true
      this.model.buttonColor1 = "rgba(117,126,118,1.0)"
      if (this.onSelect != null) {
        this.onSelect(this.model.switchId);
      }
      animateTo({
        duration: 100,
        onFinish: () => {
          if (this.model.buttonPositionX == 5) {
            this.model.buttonSize = 16
            this.model.buttonColor1 = "rgba(117,126,118,1.0)"

          }
          else {
            this.model.buttonSize = 24
            this.model.buttonColor1 = "rgb(255,255,255)"
            this.model.buttonColor2 = this.model.buttonColor
//            "rgba(55,136,62,1.0)"
          }
          this.model.isSelected = false
        }
      }, () => {
        if (this.model.buttonPositionX == 5) {
          this.model.buttonPositionX = 23
          this.model.shadowPosition = 23
          if (this.model.withIcon) {
            this.model.iconPositionX = 32
            this.model.iconColor = this.model.buttonColor
          }
        }
        else {
          this.model.buttonPositionX = 5
          this.model.shadowPosition = 2.5
          this.model.buttonColor2 = "rgba(216,216,216,1.0)"
          if (this.model.withIcon) {
            this.model.iconPositionX = 9
            this.model.iconColor = "rgba(255,255,255,1.0)"
          }
        }
      })
    }).padding(5)
  }
}

export { switchModel } from "./switchModel";
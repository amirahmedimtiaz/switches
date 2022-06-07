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


@Component
export struct Switch {
  @Prop switchId: number
  @State buttonPositionX: number = 5
  @State buttonSize: number= 16
  @Prop  buttonColor1: string
  @Prop  buttonColor2: string
  @Prop  withIcon: boolean
  @State isSelected: boolean = false
  @State iconColor: string = "rgb(255,255,255)"
  @State iconPositionX: number = 9
  @State iconPositionY: number = 13
  @State borderColor: string= "rgba(121,116,126,1.0)"
  @State shadowPosition: number = 2.5
  private onSelect: ((id: number) => void) = null


  build() {
    Shape() {
      Button()
        .width(52)
        .height(32)
        .backgroundColor(this.buttonColor2)
        .borderColor(this.isSelected ? this.borderColor : this.buttonColor1)
        .borderWidth(2)
        .borderRadius(2)
      if (this.isSelected) {
        Circle()
          .width(38).height(38).fill("rgba(0,0,0,0.3)")
          .offset({ x: this.shadowPosition - 6, y: -3 })
      }

      Circle()
        .width(this.isSelected ? 28 : this.buttonSize)
        .height(this.isSelected ? 28 : this.buttonSize)
        .offset({
          x: this.isSelected ? this.buttonPositionX - 3 : this.buttonPositionX,
          y: this.isSelected ? 2 : (16 - (this.buttonSize) / 2)
        })
        .fill(this.buttonColor1)
      if (this.withIcon) {
        Path()
          .commands("M9 22l-10-10.598 2.798-2.859 7.149 7.473 13.144-14.016 2.909 2.806z")
          .fill(this.iconColor)
          .offset({ x: this.iconPositionX, y: this.iconPositionY })
      }
    }.onClick(() => {
      this.isSelected = true
      this.buttonColor1 = "rgba(121,116,126,1.0)"
      if (this.onSelect != null) {
        this.onSelect(this.switchId);
      }
      animateTo({
        duration: 100,
        onFinish: () => {
          if (this.buttonPositionX == 5) {
            this.buttonSize = 16
            this.buttonColor1 = "rgba(121,116,126,1.0)"

          }
          else {
            this.buttonSize = 24
            this.buttonColor1 = "rgb(255,255,255)"
            this.buttonColor2 = "rgba(103,80,164,1.0)"
          }
          this.isSelected = false
        }
      }, () => {
        if (this.buttonPositionX == 5) {
          this.buttonPositionX = 23
          this.shadowPosition = 23
          if (this.withIcon) {
            this.iconPositionX = 32
            this.iconColor = "rgba(103,80,164,1.0)"
          }
        }
        else {
          this.buttonPositionX = 5
          this.shadowPosition = 2.5
          this.buttonColor2 = "rgb(231,224,236)"
          if (this.withIcon) {
            this.iconPositionX = 9
            this.iconColor = "rgba(255,255,255,1.0)"
          }
        }
      })
    }).padding(5)
  }
}

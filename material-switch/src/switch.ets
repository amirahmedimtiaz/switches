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

//export class SwitchOption {
//  switchType: string
//  constructor(switchType: string ) {
//    this.switchType = switchType
//  }
//}

@Component
export struct Switch {
  @State buttonPositionX: number = 5
  @State buttonSize: number= 18
  @Prop buttonColor1: string
  @Prop buttonColor2: string
  @Prop SwitchType: string
  @State iconColor:string = "rgb(255,255,255)"
  @State iconPositionX:number = 12
  @State iconPositionY:number = 13
  @State borderColor: string="rgba(121,116,126,1.0)"
  @State shadowPosition: number = 2

  build() {
        if(this.SwitchType=="withoutIcon"){
          Shape() {
            Button()
              .width(54)
              .height(34)
              .backgroundColor(this.buttonColor2)
              .borderColor(this.buttonColor1)
              .borderWidth(2)
              .borderRadius(2)
            Circle().width(this.buttonSize).height(this.buttonSize)
              .offset({ x: this.buttonPositionX, y: (17 - (this.buttonSize) / 2) })
              .fill(this.buttonColor1)
          }.onClick(() => {
            if (this.buttonPositionX == 5) {
              this.buttonPositionX = 25
              this.buttonSize = 24
              this.buttonColor1 = "rgb(255,255,255)"
              this.buttonColor2 = "rgba(103,80,164,1.0)"
            }
            else {
              this.buttonPositionX = 5
              this.buttonSize = 18
              this.buttonColor1 = "rgba(121,116,126,1.0)"
              this.buttonColor2 = "rgb(231,224,236)"
            }
          }).padding(5)
        }
        else if(this.SwitchType=="withIcon"){
          Shape() {
            Button()
              .width(54)
              .height(34)
              .backgroundColor(this.buttonColor2)
              .borderColor(this.buttonColor1)
              .borderWidth(2)
              .borderRadius(2)
            Circle().width(this.buttonSize+6).height(this.buttonSize+6)
              .offset({ x: this.buttonPositionX, y: (17 - (this.buttonSize+6) / 2) })
              .fill(this.buttonColor1)
            Path()
              .commands("M9 22l-10-10.598 2.798-2.859 7.149 7.473 13.144-14.016 2.909 2.806z")
              .fill(this.iconColor)
              .offset({ x: this.iconPositionX, y: this.iconPositionY })

          }.onClick(() => {
            if (this.buttonPositionX == 5) {
              this.buttonPositionX = 25
              this.buttonColor1 = "rgb(255,255,255)"
              this.buttonColor2 = "rgba(103,80,164,1.0)"
              this.iconColor = "rgba(103,80,164,1.0)"
              this.iconPositionX=33
            }
            else {
              this.buttonPositionX = 5
              this.buttonColor1 = "rgba(121,116,126,1.0)"
              this.buttonColor2 = "rgb(231,224,236)"
              this.iconColor="rgb(255,255,255)"
              this.iconPositionX=12
            }
          }).padding(5)
        }
        else if(this.SwitchType=="pressedWithoutIcon"){
          Shape() {
            Button()
              .width(54)
              .height(32)
              .backgroundColor(this.buttonColor2)
              .borderColor(this.borderColor)
              .borderWidth(2)
              .borderRadius(2)
            Circle().width(38).height(38).fill("rgba(0,0,0,0.2)")
              .offset({ x: this.shadowPosition-6, y: (16 - (this.buttonSize+10) / 2) -5})
            Circle().width(this.buttonSize+10).height(this.buttonSize+10)
              .offset({ x: this.buttonPositionX-3, y: (16 - (this.buttonSize+10) / 2) })
              .fill(this.buttonColor1)

          }.onClick(() => {
            if (this.buttonPositionX == 5) {
              this.buttonPositionX = 26
              this.shadowPosition=24
              this.buttonColor1 = "rgb(255,255,255)"
              this.buttonColor2 = "rgba(103,80,164,1.0)"
              this.borderColor = "rgba(103,80,164,1.0)"
            }
            else {
              this.buttonPositionX = 5
              this.shadowPosition=2
              this.buttonColor1 = "rgba(73,69,79,1.0)"
              this.buttonColor2 = "rgb(231,224,236)"
              this.borderColor = "rgba(73,69,79,1.0)"
            }
          }).padding(5)
        }
        else if (this.SwitchType=="pressedWithIcon"){
          Shape() {
            Button()
              .width(54)
              .height(32)
              .backgroundColor(this.buttonColor2)
              .borderColor(this.borderColor)
              .borderWidth(2)
              .borderRadius(2)
            Circle().width(38).height(38).fill("rgba(0,0,0,0.2)")
              .offset({ x: this.shadowPosition-6, y: (16 - (this.buttonSize+10) / 2) -5})
            Circle().width(this.buttonSize+10).height(this.buttonSize+10)
              .offset({ x: this.buttonPositionX-3, y: (16 - (this.buttonSize+10) / 2) })
              .fill(this.buttonColor1)
            Path()
              .commands("M9 22l-10-10.598 2.798-2.859 7.149 7.473 13.144-14.016 2.909 2.806z")
              .fill(this.iconColor)
              .offset({ x: this.iconPositionX, y: this.iconPositionY })

          }.onClick(() => {
            if (this.buttonPositionX == 5) {
              this.buttonPositionX = 26
              this.buttonColor1 = "rgb(255,255,255)"
              this.buttonColor2 = "rgba(103,80,164,1.0)"
              this.iconColor = "rgba(103,80,164,1.0)"
              this.iconPositionX=33
              this.shadowPosition=24
              this.borderColor = "rgba(103,80,164,1.0)"
            }
            else {
              this.buttonPositionX = 5
              this.buttonColor1 = "rgba(73,69,79,1.0)"
              this.buttonColor2 = "rgb(231,224,236)"
              this.iconColor="rgb(255,255,255)"
              this.iconPositionX=12
              this.shadowPosition=2
              this.borderColor = "rgba(73,69,79,1.0)"
            }
          }).padding(5)
        }
  }
}

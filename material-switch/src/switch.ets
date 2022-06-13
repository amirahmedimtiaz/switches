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
        .backgroundColor(this.model.getButtonColor2())
        .borderColor(this.model.getIsSelected() ? this.model.getBorderColor() : this.model.getButtonColor1())
        .borderWidth(2)
        .borderRadius(2)
      if (this.model.getIsSelected()) {
        Circle()
          .width(38).height(38).fill("rgba(0,0,0,0.3)")
          .offset({ x: this.model.getIsChecked() ? 17 : -3.5, y: -3 })
      }
      Circle()
        .width(this.model.getIsSelected() ? 28 : this.model.getButtonSize())
        .height(this.model.getIsSelected() ? 28 : this.model.getButtonSize())
        .offset({
          x: this.model.getIsSelected() ?
            (this.model.getIsChecked() ? 20 : 2)
                                   :
            (this.model.getIsChecked() ? 23 : 5),
          y: this.model.getIsSelected() ? 2 : (16 - (this.model.getButtonSize()) / 2)
        })
        .fill(this.model.getButtonColor1())
      if (this.model.getWithIcon()) {
        Path()
          .commands("M9 22l-10-10.598 2.798-2.859 7.149 7.473 13.144-14.016 2.909 2.806z")
          .fill(this.model.getIconColor())
          .offset({ x: this.model.getIsChecked() ? 32 : 9, y: 13 })
      }
    }.onClick(() => {
      this.model.setIsSelected(true)
      this.model.setButtonColor1("rgba(117,126,118,1.0)")
      if (this.onSelect != null) {
        this.onSelect(this.model.getSwitchId());
      }
      animateTo({
        duration: 100,
        onFinish: () => {
          if (this.model.getIsChecked() == false) {
            this.model.setButtonSize(16)
            this.model.setButtonColor1("rgba(117,126,118,1.0)")
          }
          else {
            this.model.setButtonSize(24)
            this.model.setButtonColor1("rgb(255,255,255)")
            this.model.setButtonColor2(this.model.getButtonColor())
          }
          this.model.setIsSelected(false)
        }
      }, () => {
        if (this.model.getIsChecked() == false) {
          this.model.setIsChecked(true)
          if (this.model.getWithIcon()) {
            this.model.setIconColor(this.model.getButtonColor())
          }
        }
        else {
          this.model.setIsChecked(false)
          this.model.setButtonColor2("rgba(216,216,216,1.0)")
          if (this.model.getWithIcon()) {
            this.model.setIconColor("rgba(255,255,255,1.0)")
          }
        }
      })
    }).padding(5)
  }
}

export { switchModel } from "./switchModel";
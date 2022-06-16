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
  private onSelect: ((id: number, isOn: boolean) => void) = null

  private onClick() {
    if (this.onSelect != null) {
      this.onSelect(this.model.getSwitchId(),!this.model.getIsOn());
    }
    if (this.model.getDisabled() == false) {
      this.model.setShowAnimation(true)
      animateTo({
        duration: 100,
        onFinish: () => {
          if (this.model.getIsOn() == false) {
            this.model.setSwitchSize(16)
          }
          else {
            this.model.setSwitchSize(24)
          }
          this.model.setShowAnimation(false)
        }
      }, () => {
        if (this.model.getIsOn() == false) {
          this.model.setIsOn(true)
        }
        else {
          this.model.setIsOn(false)
        }
      })
    }

  }

  build() {
    Shape() {
      Button()
        .width(52)
        .height(32)
        .backgroundColor(this.model.getIsOn() ? this.model.getOnBackgroundColor() : this.model.getOffBackgroundColor())
        .borderColor(this.model.getIsOn() ? this.model.getOnBorderColor() : this.model.getOffBorderColor())
        .borderWidth(2)
        .borderRadius(2)

      if (this.model.getShowAnimation()) {
        Circle()
          .width(38).height(38).fill("rgba(0,0,0,0.3)")
          .offset({ x: this.model.getIsOn() ? 17 : -3.5, y: -3 })
      }
      Circle()
        .width(this.model.getShowAnimation() ? 28 : this.model.getSwitchSize())
        .height(this.model.getShowAnimation() ? 28 : this.model.getSwitchSize())
        .offset({
          x: this.model.getShowAnimation() ?
            (this.model.getIsOn() ? 20 : 2)
                                        :
            (this.model.getIsOn() ? 23 : 5),
          y: this.model.getShowAnimation() ? 2 : (16 - (this.model.getSwitchSize()) / 2)
        })
        .fill(this.model.getIsOn() ? this.model.getOnCircleColor() : this.model.getOffCircleColor())
      if (this.model.getWithIcon()) {
        Image(this.model.getIcon())
          .width('10')
          .height('10')
          .offset({ x: this.model.getIsOn() ? 30 : 8, y: 11 })
      }
    }.onClick(() => this.onClick()).padding(5).opacity(this.model.getDisabled() ? 0.5 : 1)
  }
}

export { switchModel } from "./switchModel";

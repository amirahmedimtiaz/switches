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

import prompt from '@system.prompt';
import { Switch, switchModel }  from "@ohos/material-switch"

@Entry
@Component
struct Index {
  private switchModel1: switchModel.Model = new switchModel.Model();
  private switchModel2: switchModel.Model = new switchModel.Model();
  private switchModel3: switchModel.Model = new switchModel.Model();
  private switchModel4: switchModel.Model = new switchModel.Model();
  private switchModel5: switchModel.Model = new switchModel.Model();
  private switchModel6: switchModel.Model = new switchModel.Model();

  public aboutToAppear(): void {
    this.updateModelForFirst()
    this.updateModelForSecond()
    this.updateModelForThird()
    this.updateModelForFourth()
    this.updateModelForFifth()
    this.updateModelForSixth()
  }

  updateModelForFirst() {
    this.switchModel1.reset()
    this.switchModel1.setSwitchId(1)
  }
  updateModelForSecond(){
    this.switchModel2.reset()
    this.switchModel2.setSwitchId(2)
    this.switchModel2.setIsOn(true)
  }
  updateModelForThird(){
    this.switchModel3.reset()
    this.switchModel3.setSwitchId(3)
    this.switchModel3.setWithIcon(true)
  }
  updateModelForFourth(){
    this.switchModel4.reset()
    this.switchModel4.setSwitchId(4)
    this.switchModel4.setIsOn(true)
    this.switchModel4.setWithIcon(true)
  }
  updateModelForFifth(){
    this.switchModel5.reset()
    this.switchModel5.setSwitchId(5)
    this.switchModel5.setDisabled(true)
  }
  updateModelForSixth(){
    this.switchModel6.reset()
    this.switchModel6.setSwitchId(6)
    this.switchModel6.setIsOn(true)
    this.switchModel6.setDisabled(true)
  }

  build() {
      Column() {
        Text("Default Switches")
                .fontSize('24vp')
                .margin({ bottom: '24vp' })
        Switch({
          model: this.switchModel1,
          onSelect: (id, isOn) => {
            prompt.showToast({
              message: id.toString()
            })
          }
        })

        Switch({
          model: this.switchModel2,
          onSelect: (id, isOn) => {
            prompt.showToast({
              message: id.toString()
            })
          }
        })

        Text("Switches with Icons")
          .fontSize('24vp')
          .margin({ top: '24vp', bottom: '24vp' })

        Switch({
          model: this.switchModel3,
          onSelect: (id, isOn) => {
            prompt.showToast({
              message: id.toString()
            })
          }
        })

        Switch({
          model: this.switchModel4,
          onSelect: (id, isOn) => {
            prompt.showToast({
              message: id.toString()
            })
          }
        })

        Text("Disabled Switches")
          .fontSize('24vp')
          .margin({ top: '24vp', bottom: '24vp' })

        Switch({
          model: this.switchModel5,
          onSelect: (id, isOn) => {
            prompt.showToast({
              message: id.toString()
            })
          }
        })

        Switch({
          model: this.switchModel6,
          onSelect: (id, isOn) => {
            prompt.showToast({
              message: id.toString()
            })
          }
        })

      }
      .width('100%')
      .padding('24vp')
      .alignItems(HorizontalAlign.Center)
  }
}
import prompt from '@system.prompt';
import { Switch, switchModel }  from "@ohos/material-switch"

@Entry
@Component
struct Index {
  private model: switchModel.Model = new switchModel.Model();

  public aboutToAppear(): void {
    this.updateModelForFirst()
  }

  updateModelForFirst() {
    this.model.reset()
    this.model.setSwitchId(1)
    this.model.setOnBackgroundColor(Color.Red)
    this.model.setOnBorderColor(Color.Red)
    this.model.setWithIcon(true)
    this.model.setIsOn(true)
    this.model.setIcon($r('app.media.tick'))
    this.model.setDisabled(false)
  }

  build() {
    Row() {
      Column() {
        Switch({
          model: this.model,
          onSelect: (id, isOn) => {
            prompt.showToast({
              message: id.toString()
            })
          }
        })
      }.width('100%')
    }.height('100%')
  }
}
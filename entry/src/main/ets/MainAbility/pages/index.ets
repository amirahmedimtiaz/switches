import prompt from '@system.prompt';
import { Switch, switchModel, IconImageType }  from "@ohos/material-switch"

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
    this.model.setButtonColor(null)
    this.model.setWithIcon(true)
    this.model.setIsOn(true)
    this.model.setIconImageType(IconImageType.Resource)
    this.model.setIcon($r('app.media.icon'))
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
import prompt from '@system.prompt';
import { Switch ,switchModel }  from "@ohos/material-switch"

@Entry
@Component
struct Index {
  model: switchModel.Model = new switchModel.Model();
  public aboutToAppear(): void {
    this.updateModelForFirst()
  }
  updateModelForFirst() {
    this.model.reset()
    this.model.setSwitchId(1)
    this.model.setButtonColor(null)
    this.model.setWithIcon(true)
    this.model.setIsChecked(false)
  }
  build() {
    Row() {
      Column() {
        Switch({
          model: this.model,
          onSelect: (id) => {
            prompt.showToast({
              message: id.toString()
            })
          }
        })
      }.width('100%')
    }.height('100%')
  }
}
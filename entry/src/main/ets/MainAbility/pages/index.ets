import prompt from '@system.prompt';
import { Switch }  from "@ohos/material-switch"

@Entry
@Component
struct Index {
  build() {
    Row() {
      Column() {
        Switch({
          switchId:1,
          buttonColor1:  "rgba(117,126,118,1.0)",
          buttonColor2: "rgba(216,216,216,1.0)",
          withIcon: true,
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
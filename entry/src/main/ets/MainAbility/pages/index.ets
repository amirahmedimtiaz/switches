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
          buttonColor1:  "rgba(121,116,126,1.0)",
          buttonColor2: "rgb(231,224,236)",
          withIcon: false,
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
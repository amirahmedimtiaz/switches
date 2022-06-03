import { Switch }  from "@ohos/material-switch"

@Entry
@Component
struct Index {
  build() {
    Row() {
      Column() {
        Switch({
          buttonColor1: "rgba(121,116,126,1.0)",
          buttonColor2: "rgb(231,224,236)",
          SwitchType: "withIcon"
        })
        Divider().padding(20)
        Switch({
          buttonColor1: "rgba(121,116,126,1.0)",
          buttonColor2: "rgb(231,224,236)",
          SwitchType: "withoutIcon"
        })

        Divider().padding(20)
        Switch({
          buttonColor1: "rgba(73,69,79,1.0)",
          buttonColor2: "rgb(231,224,236)",
          SwitchType: "pressedWithoutIcon"
        })
        Divider().padding(20)
        Switch({
          buttonColor1: "rgba(73,69,79,1.0)",
          buttonColor2: "rgb(231,224,236)",
          SwitchType: "pressedWithIcon"
        })

      }.width('100%')
    }.height('100%')
  }
}
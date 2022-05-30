//import { switchesWithoutIcons } from '@ohos/libswitches'

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'
  @State buttonPositionX: number = 5
  @State buttonSize: number= 24
  @State buttonColor1: string = "rgba(121,116,126,1.0)"
  @State buttonColor2: string = "rgb(231,224,236)"
  @State iconColor:string = "rgb(255,255,255)"
  @State iconPositionX:number = 12
  @State iconPositionY:number = 13
  build() {
    Row(){
      Column(){
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
        }).padding(20)


      }.width('100%')
    }.height('100%')

  }

}
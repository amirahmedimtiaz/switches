@Component
export struct switchesWithoutIcons {
  @State message: string = 'Hello World'
  @State buttonPositionX: number = 5
  @State buttonSize: number= 16
  @State buttonColor1: string = "rgba(121,116,126,1.0)"
  @State buttonColor2: string = "rgb(231,224,236)"
  build() {
    Shape() {
      Button()
        .width(52)
        .height(32)
        .backgroundColor(this.buttonColor2)
        .borderColor(this.buttonColor1)
        .borderWidth(2)
        .borderRadius(2)
      Circle().width(this.buttonSize).height(this.buttonSize)
        .offset({ x: this.buttonPositionX, y: (16 - (this.buttonSize) / 2) })
        .fill(this.buttonColor1)
    }.onClick(() => {
      if (this.buttonPositionX == 5) {
        this.buttonPositionX = 23
        this.buttonSize = 24
        this.buttonColor1 = "rgb(255,255,255)"
        this.buttonColor2 = "rgba(103,80,164,1.0)"
      }
      else {
        this.buttonPositionX = 5
        this.buttonSize = 16
        this.buttonColor1 = "rgba(121,116,126,1.0)"
        this.buttonColor2 = "rgb(231,224,236)"
      }
    })

  }
}
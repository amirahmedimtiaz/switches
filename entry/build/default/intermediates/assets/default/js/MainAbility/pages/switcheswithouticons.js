/******/ (() => { // webpackBootstrap
var __webpack_exports__ = {};
/*!**********************************************************************************************************************************!*\
  !*** ../../../../../../../DevEcoStudioProjects/SwitchesAmir/entry/src/main/ets/MainAbility/pages/switcheswithouticons.ets?entry ***!
  \**********************************************************************************************************************************/
class Index extends View {
    constructor(compilerAssignedUniqueChildId, parent, params) {
        super(compilerAssignedUniqueChildId, parent);
        this.__message = new ObservedPropertySimple('Hello World', this, "message");
        this.__buttonPositionX = new ObservedPropertySimple(5, this, "buttonPositionX");
        this.__buttonSize = new ObservedPropertySimple(18, this, "buttonSize");
        this.__buttonColor1 = new ObservedPropertySimple("rgba(121,116,126,1.0)", this, "buttonColor1");
        this.__buttonColor2 = new ObservedPropertySimple("rgb(231,224,236)", this, "buttonColor2");
        this.updateWithValueParams(params);
    }
    updateWithValueParams(params) {
        if (params.message !== undefined) {
            this.message = params.message;
        }
        if (params.buttonPositionX !== undefined) {
            this.buttonPositionX = params.buttonPositionX;
        }
        if (params.buttonSize !== undefined) {
            this.buttonSize = params.buttonSize;
        }
        if (params.buttonColor1 !== undefined) {
            this.buttonColor1 = params.buttonColor1;
        }
        if (params.buttonColor2 !== undefined) {
            this.buttonColor2 = params.buttonColor2;
        }
    }
    aboutToBeDeleted() {
        this.__message.aboutToBeDeleted();
        this.__buttonPositionX.aboutToBeDeleted();
        this.__buttonSize.aboutToBeDeleted();
        this.__buttonColor1.aboutToBeDeleted();
        this.__buttonColor2.aboutToBeDeleted();
        SubscriberManager.Get().delete(this.id());
    }
    get message() {
        return this.__message.get();
    }
    set message(newValue) {
        this.__message.set(newValue);
    }
    get buttonPositionX() {
        return this.__buttonPositionX.get();
    }
    set buttonPositionX(newValue) {
        this.__buttonPositionX.set(newValue);
    }
    get buttonSize() {
        return this.__buttonSize.get();
    }
    set buttonSize(newValue) {
        this.__buttonSize.set(newValue);
    }
    get buttonColor1() {
        return this.__buttonColor1.get();
    }
    set buttonColor1(newValue) {
        this.__buttonColor1.set(newValue);
    }
    get buttonColor2() {
        return this.__buttonColor2.get();
    }
    set buttonColor2(newValue) {
        this.__buttonColor2.set(newValue);
    }
    render() {
        Row.create();
        Row.height('100%');
        Column.create();
        Column.width('100%');
        Shape.create();
        Shape.onClick(() => {
            if (this.buttonPositionX == 5) {
                this.buttonPositionX = 25;
                this.buttonSize = 24;
                this.buttonColor1 = "rgb(255,255,255)";
                this.buttonColor2 = "rgba(103,80,164,1.0)";
            }
            else {
                this.buttonPositionX = 5;
                this.buttonSize = 18;
                this.buttonColor1 = "rgba(121,116,126,1.0)";
                this.buttonColor2 = "rgb(231,224,236)";
            }
        });
        Shape.padding(20);
        Button.createWithLabel();
        Button.width(54);
        Button.height(34);
        Button.backgroundColor(this.buttonColor2);
        Button.borderColor(this.buttonColor1);
        Button.borderWidth(2);
        Button.borderRadius(2);
        Button.pop();
        Circle.create();
        Circle.width(this.buttonSize);
        Circle.height(this.buttonSize);
        Circle.offset({ x: this.buttonPositionX, y: (17 - (this.buttonSize) / 2) });
        Circle.fill(this.buttonColor1);
        Shape.pop();
        Column.pop();
        Row.pop();
    }
}
loadDocument(new Index("1", undefined, {}));

/******/ })()
;
//# sourceMappingURL=switcheswithouticons.js.map
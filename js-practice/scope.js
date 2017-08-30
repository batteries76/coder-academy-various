class Apple {

  constructor(){
    this.hello = "ahh"
  }

  run() {
//    this.hello = 'hi'
    var x = {
      hello: 'Hello',
      item: () => {
          return this.hello
        }
      }
    console.log(x.hello)
  }
}

const apple = new Apple

//this.hello = 'hello'

apple.run()

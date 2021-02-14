@bs.module("../helpers/calculator.js") external sum: (int, int) => int = "sum"
@bs.module("../helpers/calculator.js") external mult: (int, int) => int = "mult"

@react.component
let make = () => {
  let sumResult = 3
    -> sum(4)
    -> Belt.Int.toString

  let multResult = 4
    -> mult(5)
    -> Belt.Int.toString

  <section>
    <header>
      <h2>
        { React.string("External") } 
      </h2> 
    </header>
    <p>{ React.string("Importing ") }<b>{ React.string("calculator.js") }</b>{ React.string("module through external binding ") }</p>
    <pre>
      <code>
        { React.string(`
// calculator.js

function sum(a, b) { return a + b; }
function mult(a, b) { return a * b; }

// External.res

@bs.module("../helpers/calculator.js") external sum: (int, int) => int = "sum"
@bs.module("../helpers/calculator.js") external mult: (int, int) => int = "mult"
        `)}
      </code>
    </pre>
    <span>{ React.string(`3 plus 4 equals ${sumResult} and 4 multiplied by 5 equals ${multResult}`) }</span>
  </section>
}
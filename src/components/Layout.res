%%raw(`require("./Layout.css")`)

@react.component
let make = (~children: React.element) => {
  <div className="wrapper">
    <header className="header">
      <h1> {React.string("Exploring ReactScript")} </h1>
    </header>
    <aside className="sidebar">
      <Menu />
    </aside>
    <main className="content">
      children
    </main>
  </div>
}

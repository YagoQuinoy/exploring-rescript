%%raw(`require("./Menu.css")`)

module MenuItem = {
  @react.component
  let make = (~url: string, ~children: React.element) => {
    let handleClick = (evt) => {
      ReactEvent.Mouse.preventDefault(evt)
      RescriptReactRouter.push(url)
    }

    <li> 
      <a href={url} onClick={handleClick}>
        children 
      </a>
    </li>
  }
}

type menuItem = {
  url: string,
  text: string
}

let menuItems = [
  { url: "/", text: "Home" },
  { url: "/form", text: "Form" },
  { url: "/external", text: "External" }
]

@react.component
let make = () => {
  let items = Array.map(({ url, text}) => {
      <MenuItem key={url} url={url}> 
        {React.string(text)} 
      </MenuItem>
    }, menuItems)

  <ul className="menu">
    { React.array(items) }
  </ul> 
}

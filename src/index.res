// Dom access can actually fail. ResScript is really explicit about handling edge cases!
switch(ReactDOM.querySelector("#root")){
  | Some(root) => ReactDOM.render(<App />, root)
  | None => () // do nothing
}
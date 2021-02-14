type formStatus =
  | Pending
  | Fulfilled
  | Sending
  | Sent

@react.component
let make = () => {
  let ( text, setText ) = React.useState(_ => "")
  let ( select, setSelect ) = React.useState(_ => "")
  let ( state, setState ) = React.useState(_ => Pending)

  React.useEffect2(() => {
    let fulfilled = text != "" && select != "" && state == Pending
    setState(prev => fulfilled == true ? Fulfilled : prev)
    None
  }, (text, select))

  let handleTextOnChange = (evt) => {
    ReactEvent.Form.preventDefault(evt)
    let value = ReactEvent.Form.target(evt)["value"]
    setText(_ => value)
  }

  let handleSelectOnChange = (evt) => {
    ReactEvent.Form.preventDefault(evt)
    let value = ReactEvent.Form.target(evt)["value"]
    setSelect(_ => value)
  }

  let handleSubmit = (evt) => {
    ReactEvent.Form.preventDefault(evt)
    setState(_ => Sending)
    setText(_ => "")
    setSelect(_ => "")

    let _timeoutId = Js.Global.setTimeout(() => {
      setState(_ => Sent)
    }, 2000)
  }

  <section>
    <header>
      <h2>{ React.string("Form") }</h2>
    </header>
    <form onSubmit=handleSubmit>
      <div>
        <label>{ React.string("Name") }</label>
        <input name="name" type_="text" value=text onChange=handleTextOnChange />
      </div>
      <div>
        <label>{ React.string("Tortilla. Choose")}</label>
        <select name="tortilla" value=select onChange=handleSelectOnChange>
          <option value ="" disabled=true>{ React.string("Choose what?") }</option>
          <option value="With onion">{ React.string("With onion") }</option>
          <option value="Without onion">{ React.string("Without onion") }</option>
        </select>
      </div>
      <button type_="submit" disabled={state != Fulfilled}>{ React.string("Send") }</button>
    </form>
    { state == Sending ? <p>{ React.string("Sending data...")}</p> : React.null}
    { state == Sent ? <p><b>{ React.string("Brace yourself. Tortilla Police is going to visit you soon.")}</b></p>: React.null}
  </section>
}
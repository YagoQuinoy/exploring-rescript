%%raw(`require("./App.css")`)

@react.component
let make = () => {
  let url = RescriptReactRouter.useUrl()

  let length = url.path -> List.length

  let page = length > 0 ? List.hd(url.path) : "home";

  <Layout>
      {
        switch page {
        | "home" => <Home />
        | "form" => <Form />
        | "external" => <External />
        | _ => React.string("NotFound")
        }
      }
  </Layout>
}

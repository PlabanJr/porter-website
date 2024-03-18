@react.component
let make = (~data: AboutUsData.joinPorterSection) => {
  let onJoinPorterClick = () => {
    Js.log("Redirect to Career Page")
  }

  <div className="flex flex-col py-8  ">
    <img src={data.image} height="420" className="w-full" />
    <div className="flex flex-col justify-center items-center py-10">
      <h2 className="text-3xl font-bold"> {data.title->React.string} </h2>
      <p className="mt-4 mb-8"> {data.subTitle->React.string} </p>
      <Button label={data.buttonLabel} onClick={onJoinPorterClick} classOverride="px-6 py-4" />
    </div>
  </div>
}

let default = make

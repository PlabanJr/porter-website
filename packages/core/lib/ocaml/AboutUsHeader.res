@react.component
let make = (~title: string) => {
  <div className="bg-black text-white text-center flex w-full py-11">
    <p className="m-auto uppercase text-4xl font-bold"> {title->React.string} </p>
  </div>
}

let default = make

type navItem = {label: string, redirectTo: string}

@react.component
let make = (~logo: React.element=React.null) => {
  <footer className="flex py-12 px-28 justify-between items-center bg-black text-white">
    <div className="flex flex-col gap-y-6">
      logo <p className=""> {"Send anything, anywhere, anytime"->React.string} </p>
    </div>
  </footer>
}

let default = make

type navItem = {label: string, redirectTo: string}

@react.component
let make = (
  ~logo: React.element=React.null,
  ~navItems: array<navItem>,
  ~rightNavItems: array<navItem>,
) => {
  <header className="flex justify-between items-center px-48 h-16 sticky top-0 bg-white">
    logo
    <nav>
      <ul className="flex gap-x-6">
        {navItems
        |> Array.map((nav: navItem) => {
          let {label, redirectTo} = nav

          <li key={label} className="hover:underline decoration-primary underline-offset-4 ">
            <a href={redirectTo} className="font-semibold"> {label->React.string} </a>
          </li>
        })
        |> React.array}
      </ul>
    </nav>
    <nav>
      <ul className="flex gap-x-6">
        {rightNavItems
        |> Array.map((nav: navItem) => {
          let {label, redirectTo} = nav

          <li className="hover:underline decoration-primary underline-offset-4 ">
            <a href={redirectTo} className="font-semibold"> {label->React.string} </a>
          </li>
        })
        |> React.array}
      </ul>
    </nav>
  </header>
}

let default = make

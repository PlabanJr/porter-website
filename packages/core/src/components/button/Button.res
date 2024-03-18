type buttonVariants = PRIMARY | SECONDARY | TERTIARY

@react.component
let make = (
  ~label: string,
  ~onClick: _ => unit=_ => (),
  ~variant: buttonVariants=PRIMARY,
  ~classOverride: string="",
) => {
  let buttonClasses = switch variant {
  | PRIMARY => "bg-primary"
  | SECONDARY => "bg-white border border-gray-300 text-black hover:border-primary"
  | TERTIARY => "bg-transparent p-0 m-0 text-black hover:text-primary"
  }

  <button
    className={`px-4 py-2 rounded text-white ${buttonClasses} ${classOverride}`} onClick={onClick}>
    {label->React.string}
  </button>
}

let default = make

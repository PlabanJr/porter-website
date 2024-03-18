@react.component
let make = (~rows: array<AboutUsData.row>) => {
  <div className="bg-white flex w-full py-8 xl:px-28 px-24">
    <div className="flex flex-col gap-y-10">
      {rows
      |> Array.mapi((index: int, row: AboutUsData.row) => {
        let reverseRow = mod(index, 2) == 0
        <div
          key={index->Belt.Int.toString}
          className={`flex ${!reverseRow
              ? "flex-row-reverse"
              : "flex-row"} justify-between items-center`}>
          <p className="w-1/2"> {row.description->React.string} </p>
          <img src={row.image} height={"300"} width={"500"} className="object-cover" />
        </div>
      })
      |> React.array}
    </div>
  </div>
}

let default = make

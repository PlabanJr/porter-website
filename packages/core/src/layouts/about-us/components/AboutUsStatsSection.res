@react.component
let make = (~statsData: AboutUsData.stats) => {
  <div className="flex flex-col py-8 px-24 justify-center items-center">
    <p className="text-2xl"> {statsData.title->React.string} </p>
    <div className="w-7 h-1 bg-primary mt-7 mb-5 rounded" />
    <div className="flex gap-x-20">
      {statsData.statItems
      |> Array.map((statItem: AboutUsData.statItem) => {
        <div key={statItem.label} className="flex flex-col items-center">
          <h1 className="text-4xl font-bold"> {statItem.count->React.string} </h1>
          <p className="font-semibold"> {statItem.label->React.string} </p>
        </div>
      })
      |> React.array}
    </div>
  </div>
}

let default = make

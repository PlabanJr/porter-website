@react.component
let make = (~data: AboutUsData.t) => {
  <div className="flex flex-col w-full xl:mx-20 lg:mx-0">
    <AboutUsHeader title="About Us" />
    <AboutUsHeroSection rows={data.rows} />
    <AboutUsStatsSection statsData={data.stats} />
    <JoinPorterSection data={data.joinPorterSection} />
  </div>
}

let default = make

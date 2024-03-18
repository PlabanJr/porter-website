open PorterCore

let aboutUsData: AboutUsData.t = {
  rows: [
    {
      description: "Porter started off as a platform to address inefficiencies in the last mile logistics sector and transform the way goods are transported around cities, enabling lakhs of businesses move anything on-demand. We've grown manyfold since then, positively impacting the productivity of businesses, creating tremendous value for our partner-drivers and delivering happiness to a growing list of five cities.",
      image: "https://d5vf43lru2cqe.cloudfront.net/frontend_website/c0032ec9897326b9e65eeb216209d2d8.png",
    },
    {
      description: "Porter started off as a platform to address inefficiencies in the last mile logistics sector and transform the way goods are transported around cities, enabling lakhs of businesses move anything on-demand. We've grown manyfold since then, positively impacting the productivity of businesses, creating tremendous value for our partner-drivers and delivering happiness to a growing list of five cities.",
      image: "https://d5vf43lru2cqe.cloudfront.net/frontend_website/c0032ec9897326b9e65eeb216209d2d8.png",
    },
  ],
  stats: {
    title: "Now in Dubai, India's largest marketplace for intracity logistics",
    statItems: [
      {count: "2014", label: "YEAR FOUNDED"},
      {count: "8 Million+", label: "CUSTOMERS"},
      {count: "1200+", label: "STRONG TEAM"},
    ],
  },
  joinPorterSection: {
    image: "https://d5vf43lru2cqe.cloudfront.net/frontend_website/2cbbc6cbcaffa3bc4b7f1f8f923e4218.webp",
    title: "JOIN PORTER",
    subTitle: "Help us build the smartest transport logistics platform in the world.",
    buttonLabel: "SEE OPEN POSITIONS",
    buttonUrl: "https://porter.darwinbox.in/ms/candidate/careers",
  },
}

@react.component
let make = () => {
  <div className="flex w-full"> <AboutUsLayout data={aboutUsData} /> </div>
}

let default = make

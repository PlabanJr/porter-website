type row = {
  description: string,
  image: string,
}

type statItem = {count: string, label: string}

type stats = {title: string, statItems: array<statItem>}

type joinPorterSection = {
  image: string,
  title: string,
  subTitle: string,
  buttonLabel: string,
  buttonUrl: string,
}

type t = {rows: array<row>, stats: stats, joinPorterSection: joinPorterSection}

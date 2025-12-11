#import "@preview/touying:0.6.1": *
#import "stargazer.typ": *
#import "mydef.typ": *

#import "@preview/numbly:0.1.0": numbly
#set text(lang: "zh")
#show: stargazer-theme.with(
  aspect-ratio: "16-9",
  config-info(
    title: [Stargazer in Touying: Customize Your Slide Title Here],
    subtitle: [Customize Your Slide Subtitle Here],
    author: [Authors],
    date: datetime.today(),
    institution: [Institution],
    logo: image("njulogo.pdf"),
  ),
  // 通过 config-store 覆盖导航（stargazer-theme 会把 with(...) 的参数透传给 touying-slides.with）
  config-store(
    // 保留单行导航，改为 4 列布局：logo.png | 导航 | njuname.png | header-right
    navigation: self => block(
      fill: self.colors.primary,
      width: 100%,
      height: 1.8em,
      inset: (y: 0em, x: 0.4em),
      radius: 0em,
      grid(
        // 在第3、4列之间插入一个固定宽度的空列以加大间距
        columns: (0.6em, auto, 1fr, auto, 1em, auto, 0.2em),
        column-gutter: 0.4em,
        // 第1列：固定 logo.png
        box(), image("logo.png", height: 1.6em),
        // 第2列：仿 simple 样式的导航（浅色字，透明背景）
        components.simple-navigation(
          self: self,
          primary: self.colors.neutral-lightest,
          secondary: self.colors.neutral-lightest.transparentize(45%),
          background: none,
          logo: none,
        ),
        // 第3列：njuname.png
        image("njuname.png", height: 1.6em),
        // 空列：用于拉开第3、4列的距离
        box(),
        // 第4列：默认 header-right（来自 config-info 的 logo）
        utils.call-or-display(self, self.store.header-right), box(),
      ),
    ),
  ),
)

#show: touying-set-config.with(config-colors(
  primary: rgb("#6a005f"),
  primary-dark: rgb("#004078"),
  secondary: rgb("#ffffff"),
  tertiary: rgb("#005bac"),
  neutral-lightest: rgb("#ffffff"),
  neutral-darkest: rgb("#000000"),
))


#set heading(numbering: numbly("{1}.", default: "1.1"))

#title-slide()

//#outline-slide()

= 梦想开始的地方

#slide[ndjsfk]

#mi("x^2")

#mitex(`x^222`)

= 鞋袜是

#focus-slide[1]

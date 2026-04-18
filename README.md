# MyBlog - 用Stake主题的Hugo博客

这是一个使用Hugo静态网站生成器和Stake主题创建的个人博客网站。

## 项目结构

```
MyBlog/
├── config.toml          # Hugo配置文件
├── content/             # 网站内容目录
│   ├── posts/          # 博客文章
│   └── about.md        # 关于页面
├── themes/
│   └── stake/          # Stake主题
│       ├── layouts/    # 主题模板
│       ├── static/     # 主题静态文件
│       └── theme.toml  # 主题信息
├── static/             # 静态资源
├── archetypes/         # 内容模板
└── public/             # 生成的网站（构建后产生）
```

## 安装和使用

### 1. 安装Hugo

**Windows (使用Chocolatey):**
```bash
choco install hugo -confirm
```

**或者直接下载:**
访问 https://github.com/gohugoio/hugo/releases 下载最新版本

### 2. 在本地预览

```bash
cd MyBlog
hugo server -D
```

然后打开浏览器访问 `http://localhost:1313`

### 3. 创建新文章

```bash
hugo new posts/my-new-article.md
```

### 4. 构建网站

```bash
hugo
```

生成的静态文件将保存在 `public/` 目录中。

## 自定义配置

编辑 `config.toml` 文件来自定义：

- 网站标题和描述
- 语言设置
- 菜单项
- 作者信息

## 主题自定义

Stake主题的文件位于 `themes/stake/` 目录：

- **layouts/**: 页面模板文件
- **static/css/**: 样式表
- **static/js/**: JavaScript文件

## 部署

### GitHub Pages

1. 构建网站: `hugo`
2. 将 `public/` 目录推送到GitHub Pages仓库
3. 配置仓库的GitHub Pages设置

### Netlify

1. 连接你的GitHub仓库
2. 配置构建命令: `hugo`
3. 配置发布目录: `public`

## 许可证

MIT License

## 支持

如有问题，请提交Issue或查看Hugo官方文档：
https://gohugo.io/documentation/

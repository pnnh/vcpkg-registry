

需要正确设置portfile.cmake文件中的SHA512
可以先给quark仓库打上指定名称的tag，然后下载.tar.gz文件后，通过vcpkg hash quark-0.1.0.tar.gz文件来获取到

quark.json文件中的git-tree需要先把SHA512更新之后，先git commit一次
然后再通过git rev-parse HEAD:ports/quark获取到git-tree

更新之后需要再git commit一次，然后再git push
这样其它项目才能正确拉取并编译


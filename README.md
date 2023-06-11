# pandoc docker image, almost native with a few features

You can find this docker image at [fmlorg/pandoc](https://hub.docker.com/r/fmlorg/pandoc) in the docker hub.


## Lisence

BSD 2-clause Lisense. See [LICENSE](LICENSE) for more details.


## Overview

You can convert README.md to README.docx in the following way.
```
    docker run --rm					\
       --volume "$(pwd):/workdir" 			\
       --user $(id -u):$(id -g) 			\
       fmlorg/pandoc pandoc -f markdown -t docx --filter=pandoc-docx-pagebreakpy README.md -o README.docx
```
- `k4zuki/pandocker-base:20.04` based + `newpage` support
- Usages
    - build a docker image
      ```
      sh build.sh
      ```
    - convert a markdown file to the corresponding Word file.
      ```
      sh md2docx.sh README.md  
      ```


## 概要

コンテナはdocker hub の[fmlorg/pandoc](https://hub.docker.com/r/fmlorg/pandoc)で公開しています.
次のように実行すればmarkdownからWordファイルが生成されます
```
    docker run --rm					\
       --volume "$(pwd):/workdir" 			\
       --user $(id -u):$(id -g) 			\
       fmlorg/pandoc pandoc -f markdown -t docx --filter=pandoc-docx-pagebreakpy README.md -o README.docx
```
- docker hub にあるpandocイメージ`k4zuki/pandocker-base:20.04`を元に改造しています
    - 改page命令`\newpage`くらいはサポートしたい:-)
    - そこ以外は頑張っていませんけど
- 使い方の例は`md2docx.sh`を参照
    - docker イメージを作る
      ```
      sh build.sh
      ```
    - markdownをWordファイルに変換する
      ```
      sh md2docx.sh README.md  
      ```
      README.docxが生成されます

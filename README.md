## 事前準備 (省略可)
```sh
docker-compose build
```

## 圧縮
### 流れ
1. 圧縮元のファイルを unzipped ディレクトリ内に配置
1. コマンド実行 (オプションは必要な場合のみ指定)
1. zipped ディレクトリに圧縮ファイルが生成される

### 複数の(1つでも良い)ファイルをそれぞれ圧縮する場合
```sh
docker-compose run --rm rar scripts/internal/zip_each.sh [オプション]
```
もしくは
```sh
./scripts/zip_each.sh
```

### 複数のファイルを圧縮してアーカイブする(1つの all.rar ファイルにまとめる)場合
```sh
docker-compose run --rm rar scripts/internal/zip_and_archive.sh [オプション]
```
もしくは
```sh
./scripts/zip_and_archive.sh
```

### オプション例
* `-p` パスワードをかける
* `-v<サイズ>` 分割して圧縮する(例: 100MBずつに分割する場合は `-v100m`)

### 他のオプションを見る場合はヘルプを参照
```sh
docker-compose run --rm rar rar help
```

## 解凍
### 流れ
1. 圧縮ファイルを zipped ディレクトリ内に配置
1. コマンド実行 (オプションはある場合は指定できるようにしてあるが、基本的にはない想定)
1. zipped ディレクトリに圧縮ファイルが生成される
### 準備

### 分割されていないファイルを解凍する場合
```sh
docker-compose run --rm rar scripts/internal/unzip.sh [オプション]
```
もしくは
```sh
./scripts/unzip.sh
```

### 分割されているファイルを解凍する場合
```sh
docker-compose run --rm rar scripts/internal/unzip_merge.sh [オプション]
```
もしくは
```sh
./scripts/unzip_merge.sh
```

### 他のオプションを見る場合はヘルプを参照
```sh
docker-compose run --rm rar unrar help
```

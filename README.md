## 準備 (省略可)
```sh
docker-compose build
```

## 圧縮
### 基本
```sh
docker-compose run --rm rar rar a [オプション] shread/<アーカイブファイル名> shread/<圧縮させるファイル名>
```
#### 例 (ファイル1つ)
```sh
docker-compose run --rm rar rar a shread/test.txt.rar shread/test.txt
```
#### 例 (ファイル複数)
```sh
docker-compose run --rm rar rar a shread/test.rar shread/test1.txt shread/test2.txt
```

### 分割して圧縮
```sh
docker-compose run --rm rar rar a v<サイズ指定> shread/<アーカイブファイル名> shread/<圧縮させるファイル名>
```
#### 例 (100MBずつに分割)
```sh
docker-compose run --rm rar rar a -v100m shread/sample.rar shread/sample.mp4
```
`sample.part1.rar`, `sample.part2.rar`, ... と出力される  
(解凍する場合は `***.part1.rar`(`sample.part1.rar`) を指定する)

### パスワードをかけて圧縮
```sh
docker-compose run --rm rar rar a -p shread/<アーカイブファイル名> shread/<圧縮させるファイル名>
```

### ヘルプを表示
```sh
docker-compose run --rm rar rar help
```

## 解凍
### 基本
```sh
docker-compose run --rm rar unrar e [オプション] shread/<アーカイブファイル名>
```

### ヘルプを表示
```sh
docker-compose run --rm rar unrar help
```

## rootになった所有権をユーザに戻す
```sh
docker-compose run --rm rar chown 1000:1000 -R /app_root/shared
```
もしくは
```sh
scripts/fixown.sh
```

## 準備 (省略可)
```sh
docker-compose build
```

## 圧縮
### 基本
```sh
docker-compose run --rm rar rar a [オプション] <アーカイブファイル名> <圧縮させるファイル名>
```
#### 例 (ファイル1つ)
```sh
docker-compose run --rm rar rar a test.txt.rar test.txt
```
#### 例 (ファイル複数)
```sh
docker-compose run --rm rar rar a test.rar test1.txt test2.txt
```

### 分割して圧縮
```sh
docker-compose run --rm rar rar a v<サイズ指定> <アーカイブファイル名> <圧縮させるファイル名>
```
#### 例 (100MBずつに分割)
```sh
docker-compose run --rm rar rar a -v100m sample.rar sample.mp4
```
`sample.part1.rar`, `sample.part2.rar`, ... と出力される  
(解凍する場合は `***.part1.rar`(`sample.part1.rar`) を指定する)

### パスワードをかけて圧縮
```sh
docker-compose run --rm rar rar a -p <アーカイブファイル名> <圧縮させるファイル名>
```

### ヘルプを表示
```sh
docker-compose run --rm rar rar help
```

## 解凍
### 基本
```sh
docker-compose run --rm rar unrar e [オプション] <アーカイブファイル名>
```

### ヘルプを表示
```sh
docker-compose run --rm rar unrar help
```

## rootになった所有権をユーザに戻す
```sh
docker-compose run --rm rar chown 1000:1000 -R /app_root/shared
```

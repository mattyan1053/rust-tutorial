# rust-tutorial
Rust 勉強用リポジトリ

The Rust Programming Language をやってみています。

## Usage

1. クローンしてコンテナを起動する

```sh
git clone https://github.com/mattyan1053/rust-tutorial.git
podman-compose up -d
```

コンテナ内にて必要なコマンドが実行可能になっています。

2. VS CodeのDev Containerから接続

必要な拡張などもインストールされます。

`.gitconfig`など一部のファイルはコピーされます。

3. GitHub認証をしておく

```sh
gh auth login
```

4. (任意) dotfilesをいれておく

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply mattyan1053
```

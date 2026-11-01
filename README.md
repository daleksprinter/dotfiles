# Dotfiles

## Requirement
  - macOS Montery
  - make

## Usage
  - `make all`で環境構築
  - `make dump`で環境のバックアップ(定期的にやろう)

## 秘密情報の検査
  - clone したら `git config core.hooksPath .githooks` を実行する（要 `brew install gitleaks`）
  - コミット前に `.githooks/pre-commit` がステージ内容を gitleaks で検査し、見つかればコミットを止める

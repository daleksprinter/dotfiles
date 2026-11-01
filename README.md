# Dotfiles

## Requirement
  - macOS Montery
  - make

## Usage
  - `make all`で環境構築（各設定を symlink し、秘密情報検査のフックを有効にする）

## 秘密情報の検査
  - `make all` で有効になる（要 `brew install gitleaks`）
  - コミット前に `.githooks/pre-commit` がステージ内容を gitleaks で検査し、見つかればコミットを止める

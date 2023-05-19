#!/bin/bash

# イメージをビルド
docker-compose build --no-cache

# frontend で依存関係を解決
docker-compose run --rm frontend yarn install

# backend でdatabaseをクリエイト
docker-compose run --rm backend rails db:create

# ビルド
docker-compose build

# 立ち上げ
docker-compose up -d

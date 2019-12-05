nuxt + storybook 環境構築 example

## コンセプト
- nuxtとstorybookをきれいに共存させるのは面倒(ってか無理)だから別パッケージにしよう
- npm-registyに上げるのは面倒だからyarn-link(npm-link)で済ませよう
- yarn-link(npm-link)をいちいちやるのは面倒だからDockerで環境を作ってしまおう

## 動かし方

```console
$ git clone {this_repository}
$ cd {this_reposiroty}
$ docker-compose build
$ docker-compose run --service-ports app bash
```

```console:nuxtの開発
$ [container:/app] $ cd nuxt-project
$ [container:/app] $ npx nuxt -H 0.0.0.0 #=> HostOSからみて localhost:3000 でサーバーが立ちます
```

```console:storybook
$ [container:/app] $ cd storybook-project
$ [container:/app] $ npx start-storybook -p 8000 #=> HostOSからみて localhost:8000 でサーバーが立ちます
```
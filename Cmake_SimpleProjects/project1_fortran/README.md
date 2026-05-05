 ## 要求
 **gcc-fortran,gcc-c++,git,cmake,makeのインストール(Cygwin)**


## Cmakeなしの実行する方法
```sh
gfortran -c moudles/my_module.F90
gfortran -c main.F90
gfortran -o main main.o my_module.o
./main
```

## Cmakeを使用する方法
```sh
# cmake -S . -B build は、CMake を使ってプロジェクトを構成するコマンドです。
# -S . はソースディレクトリとして現在のディレクトリを指定し、
# -B build はビルドファイルを生成するビルドディレクトリを指定します。
# CMake は CMakeLists.txt を読み取り、build ディレクトリ内にビルドシステム用のファイルを生成します。
# ソースコード自体を build ディレクトリに配置するわけではありません。
cmake -S . -B build

# cmake --build build は、CMake を使ってプロジェクトをビルドするコマンドです。
# --build build は、ビルドディレクトリを指定します。
# このコマンドは、前のステップで生成されたビルドシステムのファイルを使用して、プロジェクトをコンパイルし、実行可能なファイルを生成します。
cmake --build build

# ビルドが成功した後、生成された実行可能ファイルを実行するためのコマンドです。
# ここで,hello_world は、CMakeLists.txt で指定された実行可能ファイルの名前です。
# CMakeLists.txtのなかでadd_executable(hello_world main.f90)からきています。
./build/hello_world
```

## Cmake利用した後の生成ファイルについて
1. 全ての生成ファイルは、build ディレクトリ内に配置されます。
2. build/modules/の中で、libmy_module.a という静的ライブラリファイルが生成されます
> これは、modulesフォルダ内のCMakeLists.txtで定義された my_modules ライブラリから生成されます。
```cmake
add_library(my_modules
    STATIC
    my_module.F90
)
```
3. build/の中で、hello_world という実行可能ファイルが生成されます。
> これは、CMakeLists.txtのなかで`add_executable(hello_world main.f90)`からきています。

## Visual Studio の設定について
1. KyotoUniversity_Lab-Taisui_Documents/Cmake_SimpleProjects/imagesの中で、Visual Studio の設定方法の画像を確認できます。(1.png)
2. 設定後Visual StudioのSolution Explorerで、二つのプロジェクトが表示されるはずです。(2.png)
3. 利用するとき目標プロジェクトを右クリックして、reconfigure を選択して、構成を更新する。(3.png : cppプロジェクト ;5.png : fortranプロジェクト)
4. 目標実行ファイルを選択する。(4.png : cppプロジェクト ;6.png : fortranプロジェクト)


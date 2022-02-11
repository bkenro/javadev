# javadev

[シナジークエスト](https://synergyquest.jp/)の Java 研修を Windows 環境で行うときに使用するスクリプトを収めたフォルダです。

必要に応じて下記ソフトウェアを所定の名前のフォルダにインストールして使用します。  
（$JAVADEV はこのプロジェクトをローカルに展開した場所です）

|ソフトウェア|展開先サブフォルダ／コピー先|
|---|---|
|[JDK](https://adoptium.net/releases.html?variant=openjdk17&jvmVariant=hotspot)|$JAVADEV\\**jdk**|
|[Pleiades](https://mergedoc.osdn.jp/)|$JAVADEV\\**pleiades**|
|[MariaDB](https://mariadb.org/download/)|$JAVADEV\\**mariadb**|
|[MariaDB Connector/J](https://mariadb.com/downloads/connectors/connectors-data-access/java8-connector)（Type4 JDBC ドライバ）|$JAVADEV\\**mariadb-java-client-2.x.x.jar**|
|[Graphviz](https://graphviz.org/download/)|$JAVADEV\\**Graphviz**|
|[Git for Windows Portable](https://git-scm.com/download/win)|$JAVADEV\\**PortableGit**|
|[Tomcat](https://tomcat.apache.org/)|$JAVADEV\\**tomcat**|


## 初期設定

このプロジェクトをローカルの適当な場所にクローンするか .zip ファイルをダウンロードして展開します。
たとえば、C:\\javadev として展開し、JDK と Pleiades をインストールした場合のフォルダ階層は次のようになります。

```
C:\javadev
├─jdk
│  ├─bin
│  │ ～
│
├─pleiades
│  └─eclipse
└─scripts
```

その後、setup.ps1 ファイルを右クリックして [PowerShell で実行] を順にクリックします。展開した場所に合わせてショートカットやスクリプトが生成されます。

## 使い方

java_cmd というショートカットを実行すると、上記の場所にインストールしたソフトウェアのパスが設定されたコマンドプロンプトが表示されます。
JDK であれば java、javac、jshell などのコマンドが実行できます。

"eclipse" ショートカットが作成されます。
このショートカットで pleiades\\eclipse\\eclipse.exe を起動できます。

# actix-web on Cloud Run

actix-web を GitHub への push をトリガーに、GCP上でビルド -> Cloud Run にデプロイする。

## 備考
何も考えずにやると、timeout error でビルドが失敗する。Cloud Build はデフォルトでは10分でビルドが止まる。

それを回避するために `cloudbuild.yaml` に設定を記述し、GCPコンソールからこれを読み込んで使うように構成を変更する必要がある。

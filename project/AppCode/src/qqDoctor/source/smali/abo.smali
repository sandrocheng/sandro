.class public final Labo;
.super Lcom/tencent/tmsecure/module/qscanner/QScanListener;


# instance fields
.field private synthetic a:Lcom/tencent/qqpimsecure/service/TMSLiteService$d;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/service/TMSLiteService$d;)V
    .locals 0

    iput-object p1, p0, Labo;->a:Lcom/tencent/qqpimsecure/service/TMSLiteService$d;

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;-><init>()V

    return-void
.end method

.method private static a(Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)Lbzo;
    .locals 3

    :try_start_0
    new-instance v0, Lbzo;

    invoke-direct {v0}, Lbzo;-><init>()V

    const-string v1, "PackageName"

    iget-object v2, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbzo;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "AppName"

    iget-object v2, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbzo;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "Version"

    iget-object v2, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbzo;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ApkType"

    iget v2, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->apkType:I

    invoke-virtual {v0, v1, v2}, Lbzo;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "AppPath"

    iget-object v2, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->path:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbzo;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "VirusType"

    iget v2, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    invoke-virtual {v0, v1, v2}, Lbzo;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "VirusAdvise"

    iget v2, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->advice:I

    invoke-virtual {v0, v1, v2}, Lbzo;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "VirusId"

    iget v2, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->malwareid:I

    invoke-virtual {v0, v1, v2}, Lbzo;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "VirusName"

    iget-object v2, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbzo;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "VirusLabel"

    iget-object v2, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbzo;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "VirusDescribe"

    iget-object v2, p0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->discription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lbzo;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final onCloudScan()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Labo;->a:Lcom/tencent/qqpimsecure/service/TMSLiteService$d;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService$d;)Lbzu;

    move-result-object v0

    invoke-interface {v0}, Lbzu;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onCloudScanError(I)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Labo;->a:Lcom/tencent/qqpimsecure/service/TMSLiteService$d;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService$d;)Lbzu;

    move-result-object v0

    invoke-interface {v0, p1}, Lbzu;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onPackageScanProgress(ILcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Labo;->a:Lcom/tencent/qqpimsecure/service/TMSLiteService$d;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService$d;)Lbzu;

    move-result-object v0

    invoke-static {p2}, Labo;->a(Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)Lbzo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lbzu;->a(ILbzo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onScanCanceled()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Labo;->a:Lcom/tencent/qqpimsecure/service/TMSLiteService$d;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService$d;)Lbzu;

    move-result-object v0

    invoke-interface {v0}, Lbzu;->e()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onScanContinue()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Labo;->a:Lcom/tencent/qqpimsecure/service/TMSLiteService$d;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService$d;)Lbzu;

    move-result-object v0

    invoke-interface {v0}, Lbzu;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onScanFinished(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    invoke-static {v0}, Labo;->a(Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)Lbzo;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Labo;->a:Lcom/tencent/qqpimsecure/service/TMSLiteService$d;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService$d;)Lbzu;

    move-result-object v0

    invoke-interface {v0, v1}, Lbzu;->a(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final onScanPaused()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Labo;->a:Lcom/tencent/qqpimsecure/service/TMSLiteService$d;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService$d;)Lbzu;

    move-result-object v0

    invoke-interface {v0}, Lbzu;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onScanStarted()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Labo;->a:Lcom/tencent/qqpimsecure/service/TMSLiteService$d;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService$d;)Lbzu;

    move-result-object v0

    invoke-interface {v0}, Lbzu;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public final onSdcardScanProgress(ILcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Labo;->a:Lcom/tencent/qqpimsecure/service/TMSLiteService$d;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/service/TMSLiteService$d;->a(Lcom/tencent/qqpimsecure/service/TMSLiteService$d;)Lbzu;

    move-result-object v0

    invoke-static {p2}, Labo;->a(Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)Lbzo;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lbzu;->b(ILbzo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

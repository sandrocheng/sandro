.class public final Lcom/tencent/feedback/common/strategy/a$a;
.super Ljava/lang/Object;
.source "StrategyHolder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/feedback/common/strategy/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private synthetic b:Lcom/tencent/feedback/common/strategy/a;


# direct methods
.method public constructor <init>(Lcom/tencent/feedback/common/strategy/a;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/tencent/feedback/common/strategy/a$a;->b:Lcom/tencent/feedback/common/strategy/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p2, p0, Lcom/tencent/feedback/common/strategy/a$a;->a:Landroid/content/Context;

    .line 66
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 70
    const-string v0, "empty query start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/tencent/feedback/common/CommonInfo;->getCommonInfo()Lcom/tencent/feedback/common/CommonInfo;

    move-result-object v2

    .line 73
    if-nez v2, :cond_0

    .line 75
    const-string v0, "CommonInfo ,have not been Created!pls check!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 144
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {v2}, Lcom/tencent/feedback/common/CommonInfo;->getUUId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lcom/tencent/feedback/common/CommonInfo;->getUUId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_4

    .line 80
    :cond_1
    const-string v0, "appid have not been setted , set uid"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a$a;->b:Lcom/tencent/feedback/common/strategy/a;

    iget-object v3, p0, Lcom/tencent/feedback/common/strategy/a$a;->a:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/common/strategy/a;->c(Landroid/content/Context;)Lcom/tencent/feedback/common/strategy/UploadStrategyBean;

    move-result-object v3

    .line 82
    if-eqz v3, :cond_4

    .line 84
    invoke-virtual {v3}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->getApkUID()Ljava/lang/String;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_3

    .line 87
    :cond_2
    const-string v0, "go to caculate the apk uid!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/AppInfo;->getUidFromAPKFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {v3, v0}, Lcom/tencent/feedback/common/strategy/UploadStrategyBean;->setApkUID(Ljava/lang/String;)V

    .line 90
    iget-object v4, p0, Lcom/tencent/feedback/common/strategy/a$a;->b:Lcom/tencent/feedback/common/strategy/a;

    iget-object v5, p0, Lcom/tencent/feedback/common/strategy/a$a;->a:Landroid/content/Context;

    invoke-virtual {v4, v5, v3}, Lcom/tencent/feedback/common/strategy/a;->a(Landroid/content/Context;Lcom/tencent/feedback/common/strategy/UploadStrategyBean;)V

    .line 92
    :cond_3
    const-string v3, "set rqd uid to common info"

    invoke-static {v3}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v2, v0}, Lcom/tencent/feedback/common/CommonInfo;->setUUId(Ljava/lang/String;)V

    .line 97
    :cond_4
    invoke-static {}, Lcom/tencent/feedback/common/strategy/a;->b()Lcom/tencent/feedback/upload/UploadHandler;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_5

    .line 100
    const-string v3, "do empty query"

    invoke-static {v3}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 104
    :try_start_0
    new-instance v3, Lcom/tencent/feedback/upload/a;

    invoke-direct {v3}, Lcom/tencent/feedback/upload/a;-><init>()V

    .line 105
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v0, v3, v4, v5}, Lcom/tencent/feedback/upload/UploadHandler;->doUpload(Lcom/tencent/feedback/upload/AbstractUploadDatas;Lcom/tencent/feedback/upload/OnUploadFinshed;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a$a;->b:Lcom/tencent/feedback/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/feedback/common/strategy/a;->d()Z

    move-result v0

    if-nez v0, :cond_7

    .line 116
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a$a;->b:Lcom/tencent/feedback/common/strategy/a;

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/strategy/a;->b(Z)V

    .line 118
    const-string v0, "verify local version"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 120
    const-string v0, "app first launched , check version changed"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/feedback/common/CommonInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/tencent/feedback/common/CommonInfo;->getUUId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/tencent/feedback/common/CommonInfo;->getSdkVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/tencent/feedback/common/CommonInfo;->getAPPId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a$a;->b:Lcom/tencent/feedback/common/strategy/a;

    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a$a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/common/strategy/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 124
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a$a;->b:Lcom/tencent/feedback/common/strategy/a;

    invoke-virtual {v0, v2}, Lcom/tencent/feedback/common/strategy/a;->b(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a$a;->b:Lcom/tencent/feedback/common/strategy/a;

    invoke-virtual {v0, v3}, Lcom/tencent/feedback/common/strategy/a;->a(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a$a;->b:Lcom/tencent/feedback/common/strategy/a;

    iget-object v4, p0, Lcom/tencent/feedback/common/strategy/a$a;->b:Lcom/tencent/feedback/common/strategy/a;

    invoke-static {v4}, Lcom/tencent/feedback/common/strategy/a;->a(Lcom/tencent/feedback/common/strategy/a;)Z

    move-result v4

    invoke-virtual {v0, v4}, Lcom/tencent/feedback/common/strategy/a;->a(Z)V

    .line 127
    const/4 v0, 0x0

    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 132
    const-string v0, "version change,notify and update"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a$a;->b:Lcom/tencent/feedback/common/strategy/a;

    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a$a;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/tencent/feedback/common/strategy/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    .line 135
    :cond_6
    iget-object v1, p0, Lcom/tencent/feedback/common/strategy/a$a;->b:Lcom/tencent/feedback/common/strategy/a;

    invoke-virtual {v1, v0}, Lcom/tencent/feedback/common/strategy/a;->a(Z)V

    .line 138
    const-string v0, "first empty query ,do init notify!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 140
    const-string v0, "start notify"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/tencent/feedback/common/strategy/a$a;->b:Lcom/tencent/feedback/common/strategy/a;

    invoke-virtual {v0}, Lcom/tencent/feedback/common/strategy/a;->a()V

    .line 143
    :cond_7
    const-string v0, "empty query end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 109
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1
.end method

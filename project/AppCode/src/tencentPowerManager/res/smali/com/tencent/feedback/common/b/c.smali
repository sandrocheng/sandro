.class final Lcom/tencent/feedback/common/b/c;
.super Ljava/lang/Thread;
.source "ProGuard"


# instance fields
.field private synthetic a:Lcom/tencent/feedback/common/b/b;


# direct methods
.method constructor <init>(Lcom/tencent/feedback/common/b/b;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/tencent/feedback/common/b/c;->a:Lcom/tencent/feedback/common/b/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 62
    const-string v0, "empty query start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/tencent/feedback/common/b/b;->a()Lcom/tencent/feedback/upload/UploadHandler;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 67
    const-string v1, "do empty query"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 71
    :try_start_0
    new-instance v1, Lcom/tencent/feedback/upload/a;

    invoke-direct {v1}, Lcom/tencent/feedback/upload/a;-><init>()V

    .line 72
    invoke-interface {v0, v1}, Lcom/tencent/feedback/upload/UploadHandler;->doUpload(Lcom/tencent/feedback/upload/AbstractUploadDatas;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_0
    const-string v0, "empty query end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 81
    const-string v0, "start notify"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 85
    :try_start_1
    iget-object v0, p0, Lcom/tencent/feedback/common/b/c;->a:Lcom/tencent/feedback/common/b/b;

    invoke-virtual {v0}, Lcom/tencent/feedback/common/b/b;->b()[Lcom/tencent/feedback/common/b/e;

    move-result-object v1

    .line 86
    iget-object v0, p0, Lcom/tencent/feedback/common/b/c;->a:Lcom/tencent/feedback/common/b/b;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/tencent/feedback/common/b/b;->a(Z)V

    .line 88
    if-eqz v1, :cond_1

    array-length v0, v1

    if-lez v0, :cond_1

    .line 90
    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 92
    aget-object v2, v1, v0

    invoke-interface {v2}, Lcom/tencent/feedback/common/b/e;->onInitByQuery()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 74
    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 96
    :catch_1
    move-exception v0

    .line 98
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    :cond_1
    return-void
.end method

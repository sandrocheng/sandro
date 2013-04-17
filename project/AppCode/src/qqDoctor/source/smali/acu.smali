.class final Lacu;
.super Lcom/tencent/tmsecure/module/qscanner/QScanListener;


# instance fields
.field private a:Z

.field private synthetic b:Lacr;


# direct methods
.method constructor <init>(Lacr;)V
    .locals 1

    iput-object p1, p0, Lacu;->b:Lacr;

    invoke-direct {p0}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lacu;->a:Z

    return-void
.end method


# virtual methods
.method public final onCloudScan()V
    .locals 4

    const/16 v0, 0x50

    iget-object v1, p0, Lacu;->b:Lacr;

    invoke-static {v1}, Lacr;->b(Lacr;)Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->aB()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lacu;->b:Lacr;

    invoke-static {v0}, Lacr;->c(Lacr;)Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->pauseScan()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lacu;->b:Lacr;

    invoke-static {v1}, Lacr;->d(Lacr;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lacu;->b:Lacr;

    invoke-static {v0}, Lacr;->d(Lacr;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lacu;->b:Lacr;

    invoke-static {v1}, Lacr;->e(Lacr;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lacu;->b:Lacr;

    invoke-static {v1}, Lacr;->e(Lacr;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    :cond_1
    iget-object v1, p0, Lacu;->b:Lacr;

    iget-object v2, p0, Lacu;->b:Lacr;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lacr;->b(Lacr;I)Ljava/util/Timer;

    move-result-object v2

    invoke-static {v1, v2}, Lacr;->a(Lacr;Ljava/util/Timer;)Ljava/util/Timer;

    iget-object v1, p0, Lacu;->b:Lacr;

    iget-object v2, p0, Lacu;->b:Lacr;

    invoke-static {v2}, Lacr;->f(Lacr;)I

    move-result v2

    if-le v2, v0, :cond_2

    iget-object v0, p0, Lacu;->b:Lacr;

    invoke-static {v0}, Lacr;->f(Lacr;)I

    move-result v0

    :cond_2
    invoke-static {v1, v0}, Lacr;->c(Lacr;I)I

    iget-object v0, p0, Lacu;->b:Lacr;

    iget-object v1, p0, Lacu;->b:Lacr;

    invoke-static {v1}, Lacr;->f(Lacr;)I

    move-result v1

    invoke-static {v0, v1}, Lacr;->d(Lacr;I)V

    iget-object v0, p0, Lacu;->b:Lacr;

    sget-object v1, Lacr$b;->h:Lacr$b;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lacr;->a(Lacr;Lacr$b;I)V

    goto :goto_0
.end method

.method public final onCloudScanError(I)V
    .locals 3

    iget-object v0, p0, Lacu;->b:Lacr;

    invoke-static {v0}, Lacr;->b(Lacr;)Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->aD()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lacu;->b:Lacr;

    invoke-static {v0}, Lacr;->d(Lacr;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lacu;->b:Lacr;

    invoke-static {v1}, Lacr;->d(Lacr;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    iget-object v0, p0, Lacu;->b:Lacr;

    invoke-static {v0}, Lacr;->g(Lacr;)Lacr$d;

    move-result-object v0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    const/16 v2, 0x663e

    invoke-virtual {v1, v2, p1}, Lnd;->a(II)V

    iget-object v0, v0, Lacr$d;->a:Lbrp;

    invoke-static {v0}, Lbrp;->F(Lbrp;)Z

    return-void
.end method

.method public final onPackageScanProgress(ILcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)V
    .locals 4

    iget-object v0, p0, Lacu;->b:Lacr;

    invoke-static {v0}, Lacr;->h(Lacr;)Lmu;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lacu;->b:Lacr;

    invoke-static {v0}, Lacr;->i(Lacr;)I

    int-to-double v0, p1

    const-wide v2, 0x3fe999999999999aL

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lacu;->b:Lacr;

    iget-object v2, p0, Lacu;->b:Lacr;

    invoke-static {v2}, Lacr;->f(Lacr;)I

    move-result v2

    if-le v2, v0, :cond_1

    iget-object v0, p0, Lacu;->b:Lacr;

    invoke-static {v0}, Lacr;->f(Lacr;)I

    move-result v0

    :cond_1
    invoke-static {v1, v0}, Lacr;->c(Lacr;I)I

    iget-object v0, p0, Lacu;->b:Lacr;

    iget-object v1, p0, Lacu;->b:Lacr;

    invoke-static {v1}, Lacr;->f(Lacr;)I

    move-result v1

    invoke-static {v0, v1}, Lacr;->d(Lacr;I)V

    iget v0, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    sparse-switch v0, :sswitch_data_0

    :goto_1
    iget-object v0, p0, Lacu;->b:Lacr;

    sget v1, Lacr;->a:I

    iget-object v2, p0, Lacu;->b:Lacr;

    invoke-static {v2}, Lacr;->j(Lacr;)I

    iget-object v2, p0, Lacu;->b:Lacr;

    invoke-static {v2}, Lacr;->h(Lacr;)Lmu;

    move-result-object v2

    iget v2, v2, Lmu;->d:I

    iget-object v3, p0, Lacu;->b:Lacr;

    invoke-static {v3}, Lacr;->h(Lacr;)Lmu;

    move-result-object v3

    iget v3, v3, Lmu;->g:I

    invoke-static {v0, v1, v2, v3, p2}, Lacr;->a(Lacr;IIILcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)V

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lacu;->b:Lacr;

    invoke-static {v0}, Lacr;->h(Lacr;)Lmu;

    move-result-object v0

    iget v1, v0, Lmu;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lmu;->d:I

    iget-object v0, p0, Lacu;->b:Lacr;

    invoke-static {v0}, Lacr;->h(Lacr;)Lmu;

    move-result-object v0

    iget v1, v0, Lmu;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lmu;->f:I

    goto :goto_1

    :sswitch_1
    iget-object v0, p0, Lacu;->b:Lacr;

    invoke-static {v0}, Lacr;->h(Lacr;)Lmu;

    move-result-object v0

    iget v1, v0, Lmu;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lmu;->g:I

    iget-object v0, p0, Lacu;->b:Lacr;

    invoke-static {v0}, Lacr;->h(Lacr;)Lmu;

    move-result-object v0

    iget v1, v0, Lmu;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lmu;->f:I

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public final onScanCanceled()V
    .locals 2

    iget-object v0, p0, Lacu;->b:Lacr;

    sget-object v1, Lacr$c;->c:Lacr$c;

    invoke-virtual {v0, v1}, Lacr;->a(Lacr$c;)V

    return-void
.end method

.method public final onScanContinue()V
    .locals 0

    return-void
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

    invoke-super {p0, p1}, Lcom/tencent/tmsecure/module/qscanner/QScanListener;->onScanFinished(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lacu;->b:Lacr;

    invoke-virtual {v0}, Lacr;->a()V

    iget-object v0, p0, Lacu;->b:Lacr;

    invoke-static {v0, p1}, Lacr;->a(Lacr;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lacu;->b:Lacr;

    invoke-virtual {v0}, Lacr;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lacu;->b:Lacr;

    sget-object v1, Lacr$b;->k:Lacr$b;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lacr;->a(Lacr;Lacr$b;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lacu;->b:Lacr;

    invoke-virtual {v0}, Lacr;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lacu;->b:Lacr;

    sget-object v1, Lacr$c;->e:Lacr$c;

    invoke-virtual {v0, v1}, Lacr;->a(Lacr$c;)V

    iget-object v0, p0, Lacu;->b:Lacr;

    sget-object v1, Lacr$b;->k:Lacr$b;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lacr;->a(Lacr;Lacr$b;I)V

    goto :goto_0
.end method

.method public final onScanPaused()V
    .locals 2

    iget-object v0, p0, Lacu;->b:Lacr;

    sget-object v1, Lacr$c;->d:Lacr$c;

    invoke-virtual {v0, v1}, Lacr;->a(Lacr$c;)V

    return-void
.end method

.method public final onScanStarted()V
    .locals 4

    const/4 v0, 0x5

    const/4 v3, 0x0

    iget-object v1, p0, Lacu;->b:Lacr;

    invoke-static {v1}, Lacr;->e(Lacr;)Ljava/util/Timer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lacu;->b:Lacr;

    invoke-static {v1}, Lacr;->e(Lacr;)Ljava/util/Timer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    :cond_0
    iget-object v1, p0, Lacu;->b:Lacr;

    iget-object v2, p0, Lacu;->b:Lacr;

    invoke-static {v2}, Lacr;->f(Lacr;)I

    move-result v2

    if-le v2, v0, :cond_1

    iget-object v0, p0, Lacu;->b:Lacr;

    invoke-static {v0}, Lacr;->f(Lacr;)I

    move-result v0

    :cond_1
    invoke-static {v1, v0}, Lacr;->c(Lacr;I)I

    iput-boolean v3, p0, Lacu;->a:Z

    iget-object v0, p0, Lacu;->b:Lacr;

    iget-object v1, p0, Lacu;->b:Lacr;

    invoke-static {v1}, Lacr;->f(Lacr;)I

    move-result v1

    invoke-static {v0, v1}, Lacr;->d(Lacr;I)V

    iget-object v0, p0, Lacu;->b:Lacr;

    sget-object v1, Lacr$b;->d:Lacr$b;

    invoke-static {v0, v1, v3}, Lacr;->a(Lacr;Lacr$b;I)V

    return-void
.end method

.method public final onSdcardScanProgress(ILcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)V
    .locals 4

    iget-boolean v0, p0, Lacu;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lacu;->b:Lacr;

    sget-object v1, Lacr$b;->f:Lacr$b;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lacr;->a(Lacr;Lacr$b;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lacu;->a:Z

    :cond_0
    iget-object v0, p0, Lacu;->b:Lacr;

    invoke-static {v0}, Lacr;->i(Lacr;)I

    int-to-double v0, p1

    const-wide v2, 0x3fe999999999999aL

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x5

    iget-object v1, p0, Lacu;->b:Lacr;

    iget-object v2, p0, Lacu;->b:Lacr;

    invoke-static {v2}, Lacr;->f(Lacr;)I

    move-result v2

    if-le v2, v0, :cond_1

    iget-object v0, p0, Lacu;->b:Lacr;

    invoke-static {v0}, Lacr;->f(Lacr;)I

    move-result v0

    :cond_1
    invoke-static {v1, v0}, Lacr;->c(Lacr;I)I

    iget-object v0, p0, Lacu;->b:Lacr;

    iget-object v1, p0, Lacu;->b:Lacr;

    invoke-static {v1}, Lacr;->f(Lacr;)I

    move-result v1

    invoke-static {v0, v1}, Lacr;->d(Lacr;I)V

    iget v0, p2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    iget-object v0, p0, Lacu;->b:Lacr;

    sget v1, Lacr;->b:I

    iget-object v2, p0, Lacu;->b:Lacr;

    invoke-static {v2}, Lacr;->j(Lacr;)I

    iget-object v2, p0, Lacu;->b:Lacr;

    invoke-static {v2}, Lacr;->h(Lacr;)Lmu;

    move-result-object v2

    iget v2, v2, Lmu;->d:I

    iget-object v3, p0, Lacu;->b:Lacr;

    invoke-static {v3}, Lacr;->h(Lacr;)Lmu;

    move-result-object v3

    iget v3, v3, Lmu;->g:I

    invoke-static {v0, v1, v2, v3, p2}, Lacr;->a(Lacr;IIILcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)V

    return-void

    :sswitch_0
    iget-object v0, p0, Lacu;->b:Lacr;

    invoke-static {v0}, Lacr;->h(Lacr;)Lmu;

    move-result-object v0

    iget v1, v0, Lmu;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lmu;->d:I

    iget-object v0, p0, Lacu;->b:Lacr;

    invoke-static {v0}, Lacr;->h(Lacr;)Lmu;

    move-result-object v0

    iget v1, v0, Lmu;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lmu;->f:I

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lacu;->b:Lacr;

    invoke-static {v0}, Lacr;->h(Lacr;)Lmu;

    move-result-object v0

    iget v1, v0, Lmu;->g:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lmu;->g:I

    iget-object v0, p0, Lacu;->b:Lacr;

    invoke-static {v0}, Lacr;->h(Lacr;)Lmu;

    move-result-object v0

    iget v1, v0, Lmu;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lmu;->f:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.class public abstract Lcom/tencent/tmsecure/module/qscanner/QScanListener;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloudScan()V
    .locals 0

    return-void
.end method

.method public onCloudScanError(I)V
    .locals 0

    return-void
.end method

.method public onPackageScanProgress(ILcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)V
    .locals 0

    return-void
.end method

.method public onScanCanceled()V
    .locals 0

    return-void
.end method

.method public onScanContinue()V
    .locals 0

    return-void
.end method

.method public onScanFinished(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onScanPaused()V
    .locals 0

    return-void
.end method

.method public onScanStarted()V
    .locals 0

    return-void
.end method

.method public onSdcardScanProgress(ILcom/tencent/tmsecure/module/qscanner/QScanResultEntity;)V
    .locals 0

    return-void
.end method

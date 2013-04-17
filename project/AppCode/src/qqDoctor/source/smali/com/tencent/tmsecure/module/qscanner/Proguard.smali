.class public final Lcom/tencent/tmsecure/module/qscanner/Proguard;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final callAllMethods()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-class v0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->scanInstalledPackages(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->scanSdcardApks(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->scanGlobal(Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v1, v2}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->scanPackages(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v1, v2}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->scanApks(Ljava/util/List;Lcom/tencent/tmsecure/module/qscanner/QScanListener;Z)Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->cancelScan()V

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->continueScan()V

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->pauseScan()V

    return-void
.end method

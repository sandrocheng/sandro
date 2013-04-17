.class public Lcom/tencent/tmsecure/module/qscanner/AmScanner;
.super Ljava/lang/Object;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "virus_scan_libname"

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSApplication;->getStrFromEnvMap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lk;->a(Landroid/content/Context;Ljava/lang/String;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tmsecure/module/qscanner/AmScanner;->a:I

    invoke-static {p1, p2}, Lcom/tencent/tmsecure/module/qscanner/AmScanner;->newObject(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/qscanner/AmScanner;->a:I

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/AmScanner;->a:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/OutOfMemoryError;

    invoke-direct {v0}, Ljava/lang/OutOfMemoryError;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/AmScanner;->a:I

    invoke-static {v0}, Lcom/tencent/tmsecure/module/qscanner/AmScanner;->initScanner(I)I

    return-void
.end method

.method private static native deleteObject(I)V
.end method

.method private static native initScanner(I)I
.end method

.method public static loadAmfHeader(Landroid/content/Context;Ljava/lang/String;)LQQPIM/VirusClientInfo;
    .locals 3

    if-eqz p1, :cond_0

    new-instance v1, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v1}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    const-string v0, "UTF-8"

    invoke-virtual {v1, v0}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/qq/jce/wup/UniAttribute;->useVersion3()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/tencent/tmsecure/module/qscanner/AmScanner;->nativeLoadAmfHeaderBytes(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    const-string v0, "vci"

    new-instance v2, LQQPIM/VirusClientInfo;

    invoke-direct {v2}, LQQPIM/VirusClientInfo;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/VirusClientInfo;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static native nativeLoadAmfHeaderBytes(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;)I"
        }
    .end annotation
.end method

.method private static native nativeUpdateMalwareInfoBytes(Landroid/content/Context;Ljava/lang/String;[B[B)I
.end method

.method private static native newObject(Landroid/content/Context;Ljava/lang/String;)I
.end method

.method private static native scanApkBytes(I[BLjava/util/concurrent/atomic/AtomicReference;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<[B>;)I"
        }
    .end annotation
.end method

.method public static updateBase(Landroid/content/Context;Ljava/lang/String;LQQPIM/VirusServerInfo;Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "LQQPIM/VirusServerInfo;",
            "Ljava/util/List",
            "<",
            "LQQPIM/VirusInfo;",
            ">;)I"
        }
    .end annotation

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v0, -0x6

    :goto_0
    return v0

    :cond_1
    new-instance v0, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v0}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/qq/jce/wup/UniAttribute;->useVersion3()V

    const-string v1, "vsi"

    invoke-virtual {v0, v1, p2}, Lcom/qq/jce/wup/UniAttribute;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/qq/jce/wup/UniAttribute;->encode()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/qq/jce/wup/UniAttribute;->clearCacheData()V

    const-string v2, "vil"

    invoke-virtual {v0, v2, p3}, Lcom/qq/jce/wup/UniAttribute;->put(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/qq/jce/wup/UniAttribute;->encode()[B

    move-result-object v0

    invoke-static {p0, p1, v1, v0}, Lcom/tencent/tmsecure/module/qscanner/AmScanner;->nativeUpdateMalwareInfoBytes(Landroid/content/Context;Ljava/lang/String;[B[B)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public finalize()V
    .locals 1

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/AmScanner;->a:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/AmScanner;->a:I

    invoke-static {v0}, Lcom/tencent/tmsecure/module/qscanner/AmScanner;->deleteObject(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tmsecure/module/qscanner/AmScanner;->a:I

    :cond_0
    return-void
.end method

.method public scanApk(Lcom/tencent/tmsecure/module/qscanner/ApkKey;)Lcom/tencent/tmsecure/module/qscanner/QScanResult;
    .locals 4

    if-eqz p1, :cond_0

    new-instance v1, Lcom/qq/jce/wup/UniAttribute;

    invoke-direct {v1}, Lcom/qq/jce/wup/UniAttribute;-><init>()V

    const-string v0, "UTF-8"

    invoke-virtual {v1, v0}, Lcom/qq/jce/wup/UniAttribute;->setEncodeName(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/qq/jce/wup/UniAttribute;->useVersion3()V

    const-string v0, "ak"

    invoke-virtual {v1, v0, p1}, Lcom/qq/jce/wup/UniAttribute;->put(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iget v2, p0, Lcom/tencent/tmsecure/module/qscanner/AmScanner;->a:I

    invoke-virtual {v1}, Lcom/qq/jce/wup/UniAttribute;->encode()[B

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/tencent/tmsecure/module/qscanner/AmScanner;->scanApkBytes(I[BLjava/util/concurrent/atomic/AtomicReference;)I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/qq/jce/wup/UniAttribute;->clearCacheData()V

    invoke-virtual {v1, v0}, Lcom/qq/jce/wup/UniAttribute;->decode([B)V

    const-string v0, "qsr"

    new-instance v2, Lcom/tencent/tmsecure/module/qscanner/QScanResult;

    invoke-direct {v2}, Lcom/tencent/tmsecure/module/qscanner/QScanResult;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcom/qq/jce/wup/UniAttribute;->getByClass(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/QScanResult;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

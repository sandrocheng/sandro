.class public Lcom/tencent/tmsecure/module/qscanner/CertChecker;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/tmsecure/module/qscanner/ApkKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/tmsecure/module/qscanner/CertChecker;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/CertChecker;->a:Landroid/content/Context;

    const-string v1, "trustcerts.dat"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lbtd;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/CertChecker;->a:Landroid/content/Context;

    const-string v1, "label_tc"

    const-string v2, "trustcerts.dat"

    invoke-static {v0, v1, v2}, Lbtd;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/CertChecker;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/CertChecker;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/CertChecker;->b:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public checkCert(Lcom/tencent/tmsecure/module/qscanner/QScanResult;)Lcom/tencent/tmsecure/module/qscanner/QScanResult;
    .locals 5

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/CertChecker;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->apkkey:Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    iget-object v3, v2, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->pkgName:Ljava/lang/String;

    iget-object v4, v0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->type:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/16 v0, 0x8

    iput v0, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->type:I

    const/4 v0, 0x1

    iput v0, p1, Lcom/tencent/tmsecure/module/qscanner/QScanResult;->advice:I

    goto :goto_0
.end method

.method public getApkClass(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/CertChecker;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    iget-object v0, v0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

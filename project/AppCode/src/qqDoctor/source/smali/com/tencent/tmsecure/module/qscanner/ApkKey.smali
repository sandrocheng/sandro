.class public final Lcom/tencent/tmsecure/module/qscanner/ApkKey;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static synthetic a:Z


# instance fields
.field public apkType:I

.field public certMd5:Ljava/lang/String;

.field public path:Ljava/lang/String;

.field public pkgName:Ljava/lang/String;

.field public size:I

.field public softName:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->pkgName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->softName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->version:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->versionCode:I

    iput v1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->size:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->path:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->apkType:I

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->pkgName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->setPkgName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->softName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->setSoftName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->setCertMd5(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->version:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->setVersion(Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->versionCode:I

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->setVersionCode(I)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->size:I

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->setSize(I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->path:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->setPath(Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->apkType:I

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->setApkType(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->pkgName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->softName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->version:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->versionCode:I

    iput v1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->size:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->path:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->apkType:I

    invoke-virtual {p0, p1}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->setPkgName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->setSoftName(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->setCertMd5(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->setVersion(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->setVersionCode(I)V

    invoke-virtual {p0, p6}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->setSize(I)V

    invoke-virtual {p0, p7}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->setPath(Ljava/lang/String;)V

    invoke-virtual {p0, p8}, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->setApkType(I)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.ApkKey"

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v1, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->a:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->pkgName:Ljava/lang/String;

    const-string v2, "pkgName"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->softName:Ljava/lang/String;

    const-string v2, "softName"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    const-string v2, "certMd5"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->version:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->versionCode:I

    const-string v2, "versionCode"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->size:I

    const-string v2, "size"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->path:Ljava/lang/String;

    const-string v2, "path"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->apkType:I

    const-string v2, "apkType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/tencent/tmsecure/module/qscanner/ApkKey;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->pkgName:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->pkgName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->softName:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->softName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->version:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->version:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->versionCode:I

    iget v2, p1, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->versionCode:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->size:I

    iget v2, p1, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->size:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->path:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->path:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->apkType:I

    iget v2, p1, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->apkType:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.ApkKey"

    return-object v0
.end method

.method public final getApkType()I
    .locals 1

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->apkType:I

    return v0
.end method

.method public final getCertMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->path:Ljava/lang/String;

    return-object v0
.end method

.method public final getPkgName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->pkgName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()I
    .locals 1

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->size:I

    return v0
.end method

.method public final getSoftName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->softName:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->versionCode:I

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->softName:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->version:Ljava/lang/String;

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->versionCode:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->versionCode:I

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->size:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->size:I

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->path:Ljava/lang/String;

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->apkType:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->apkType:I

    return-void
.end method

.method public final setApkType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->apkType:I

    return-void
.end method

.method public final setCertMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    return-void
.end method

.method public final setPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->path:Ljava/lang/String;

    return-void
.end method

.method public final setPkgName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->pkgName:Ljava/lang/String;

    return-void
.end method

.method public final setSize(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->size:I

    return-void
.end method

.method public final setSoftName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->softName:Ljava/lang/String;

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->version:Ljava/lang/String;

    return-void
.end method

.method public final setVersionCode(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->versionCode:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->pkgName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->softName:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->certMd5:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->version:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->versionCode:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->size:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->path:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->path:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget v0, p0, Lcom/tencent/tmsecure/module/qscanner/ApkKey;->apkType:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method

.class public final LQQPIM/DetailCloudFeature;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public certMd5:Ljava/lang/String;

.field public fileSize:I

.field public isRom:Z

.field public packName:Ljava/lang/String;

.field public softName:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public versionCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/DetailCloudFeature;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/DetailCloudFeature;->$assertionsDisabled:Z

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

    iput-object v0, p0, LQQPIM/DetailCloudFeature;->packName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DetailCloudFeature;->certMd5:Ljava/lang/String;

    iput v1, p0, LQQPIM/DetailCloudFeature;->fileSize:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DetailCloudFeature;->version:Ljava/lang/String;

    iput v1, p0, LQQPIM/DetailCloudFeature;->versionCode:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DetailCloudFeature;->softName:Ljava/lang/String;

    iput-boolean v1, p0, LQQPIM/DetailCloudFeature;->isRom:Z

    iget-object v0, p0, LQQPIM/DetailCloudFeature;->packName:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/DetailCloudFeature;->setPackName(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/DetailCloudFeature;->certMd5:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/DetailCloudFeature;->setCertMd5(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/DetailCloudFeature;->fileSize:I

    invoke-virtual {p0, v0}, LQQPIM/DetailCloudFeature;->setFileSize(I)V

    iget-object v0, p0, LQQPIM/DetailCloudFeature;->version:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/DetailCloudFeature;->setVersion(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/DetailCloudFeature;->versionCode:I

    invoke-virtual {p0, v0}, LQQPIM/DetailCloudFeature;->setVersionCode(I)V

    iget-object v0, p0, LQQPIM/DetailCloudFeature;->softName:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/DetailCloudFeature;->setSoftName(Ljava/lang/String;)V

    iget-boolean v0, p0, LQQPIM/DetailCloudFeature;->isRom:Z

    invoke-virtual {p0, v0}, LQQPIM/DetailCloudFeature;->setIsRom(Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Z)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DetailCloudFeature;->packName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DetailCloudFeature;->certMd5:Ljava/lang/String;

    iput v1, p0, LQQPIM/DetailCloudFeature;->fileSize:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DetailCloudFeature;->version:Ljava/lang/String;

    iput v1, p0, LQQPIM/DetailCloudFeature;->versionCode:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DetailCloudFeature;->softName:Ljava/lang/String;

    iput-boolean v1, p0, LQQPIM/DetailCloudFeature;->isRom:Z

    invoke-virtual {p0, p1}, LQQPIM/DetailCloudFeature;->setPackName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, LQQPIM/DetailCloudFeature;->setCertMd5(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LQQPIM/DetailCloudFeature;->setFileSize(I)V

    invoke-virtual {p0, p4}, LQQPIM/DetailCloudFeature;->setVersion(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, LQQPIM/DetailCloudFeature;->setVersionCode(I)V

    invoke-virtual {p0, p6}, LQQPIM/DetailCloudFeature;->setSoftName(Ljava/lang/String;)V

    invoke-virtual {p0, p7}, LQQPIM/DetailCloudFeature;->setIsRom(Z)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.DetailCloudFeature"

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

    sget-boolean v1, LQQPIM/DetailCloudFeature;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/DetailCloudFeature;->packName:Ljava/lang/String;

    const-string v2, "packName"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/DetailCloudFeature;->certMd5:Ljava/lang/String;

    const-string v2, "certMd5"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/DetailCloudFeature;->fileSize:I

    const-string v2, "fileSize"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/DetailCloudFeature;->version:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/DetailCloudFeature;->versionCode:I

    const-string v2, "versionCode"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/DetailCloudFeature;->softName:Ljava/lang/String;

    const-string v2, "softName"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-boolean v1, p0, LQQPIM/DetailCloudFeature;->isRom:Z

    const-string v2, "isRom"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ZLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, LQQPIM/DetailCloudFeature;

    iget-object v1, p0, LQQPIM/DetailCloudFeature;->packName:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/DetailCloudFeature;->packName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/DetailCloudFeature;->certMd5:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/DetailCloudFeature;->certMd5:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/DetailCloudFeature;->fileSize:I

    iget v2, p1, LQQPIM/DetailCloudFeature;->fileSize:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/DetailCloudFeature;->version:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/DetailCloudFeature;->version:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/DetailCloudFeature;->versionCode:I

    iget v2, p1, LQQPIM/DetailCloudFeature;->versionCode:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/DetailCloudFeature;->softName:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/DetailCloudFeature;->softName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, LQQPIM/DetailCloudFeature;->isRom:Z

    iget-boolean v2, p1, LQQPIM/DetailCloudFeature;->isRom:Z

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.DetailCloudFeature"

    return-object v0
.end method

.method public final getCertMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/DetailCloudFeature;->certMd5:Ljava/lang/String;

    return-object v0
.end method

.method public final getFileSize()I
    .locals 1

    iget v0, p0, LQQPIM/DetailCloudFeature;->fileSize:I

    return v0
.end method

.method public final getIsRom()Z
    .locals 1

    iget-boolean v0, p0, LQQPIM/DetailCloudFeature;->isRom:Z

    return v0
.end method

.method public final getPackName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/DetailCloudFeature;->packName:Ljava/lang/String;

    return-object v0
.end method

.method public final getSoftName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/DetailCloudFeature;->softName:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/DetailCloudFeature;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersionCode()I
    .locals 1

    iget v0, p0, LQQPIM/DetailCloudFeature;->versionCode:I

    return v0
.end method

.method public final hashCode()I
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/DetailCloudFeature;->packName:Ljava/lang/String;

    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/DetailCloudFeature;->certMd5:Ljava/lang/String;

    iget v0, p0, LQQPIM/DetailCloudFeature;->fileSize:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DetailCloudFeature;->fileSize:I

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/DetailCloudFeature;->version:Ljava/lang/String;

    iget v0, p0, LQQPIM/DetailCloudFeature;->versionCode:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DetailCloudFeature;->versionCode:I

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/DetailCloudFeature;->softName:Ljava/lang/String;

    iget-boolean v0, p0, LQQPIM/DetailCloudFeature;->isRom:Z

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, LQQPIM/DetailCloudFeature;->isRom:Z

    return-void
.end method

.method public final setCertMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/DetailCloudFeature;->certMd5:Ljava/lang/String;

    return-void
.end method

.method public final setFileSize(I)V
    .locals 0

    iput p1, p0, LQQPIM/DetailCloudFeature;->fileSize:I

    return-void
.end method

.method public final setIsRom(Z)V
    .locals 0

    iput-boolean p1, p0, LQQPIM/DetailCloudFeature;->isRom:Z

    return-void
.end method

.method public final setPackName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/DetailCloudFeature;->packName:Ljava/lang/String;

    return-void
.end method

.method public final setSoftName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/DetailCloudFeature;->softName:Ljava/lang/String;

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/DetailCloudFeature;->version:Ljava/lang/String;

    return-void
.end method

.method public final setVersionCode(I)V
    .locals 0

    iput p1, p0, LQQPIM/DetailCloudFeature;->versionCode:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/DetailCloudFeature;->packName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/DetailCloudFeature;->certMd5:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LQQPIM/DetailCloudFeature;->fileSize:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/DetailCloudFeature;->version:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LQQPIM/DetailCloudFeature;->versionCode:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/DetailCloudFeature;->softName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/DetailCloudFeature;->softName:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget-boolean v0, p0, LQQPIM/DetailCloudFeature;->isRom:Z

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    return-void
.end method

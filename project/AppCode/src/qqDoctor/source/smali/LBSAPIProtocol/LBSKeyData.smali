.class public final LLBSAPIProtocol/LBSKeyData;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_vAuthName:[B

.field static cache_vEncryptData:[B


# instance fields
.field public vAuthName:[B

.field public vEncryptData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LLBSAPIProtocol/LBSKeyData;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LLBSAPIProtocol/LBSKeyData;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, LLBSAPIProtocol/LBSKeyData;->vAuthName:[B

    iput-object v0, p0, LLBSAPIProtocol/LBSKeyData;->vEncryptData:[B

    iget-object v0, p0, LLBSAPIProtocol/LBSKeyData;->vAuthName:[B

    invoke-virtual {p0, v0}, LLBSAPIProtocol/LBSKeyData;->setVAuthName([B)V

    iget-object v0, p0, LLBSAPIProtocol/LBSKeyData;->vEncryptData:[B

    invoke-virtual {p0, v0}, LLBSAPIProtocol/LBSKeyData;->setVEncryptData([B)V

    return-void
.end method

.method public constructor <init>([B[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, LLBSAPIProtocol/LBSKeyData;->vAuthName:[B

    iput-object v0, p0, LLBSAPIProtocol/LBSKeyData;->vEncryptData:[B

    invoke-virtual {p0, p1}, LLBSAPIProtocol/LBSKeyData;->setVAuthName([B)V

    invoke-virtual {p0, p2}, LLBSAPIProtocol/LBSKeyData;->setVEncryptData([B)V

    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    const-string v0, "LBSAPIProtocol.LBSKeyData"

    return-object v0
.end method

.method public clone()Ljava/lang/Object;
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

    sget-boolean v1, LLBSAPIProtocol/LBSKeyData;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LLBSAPIProtocol/LBSKeyData;->vAuthName:[B

    const-string v2, "vAuthName"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display([BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/LBSKeyData;->vEncryptData:[B

    const-string v2, "vEncryptData"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display([BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LLBSAPIProtocol/LBSKeyData;

    iget-object v0, p0, LLBSAPIProtocol/LBSKeyData;->vAuthName:[B

    iget-object v1, p1, LLBSAPIProtocol/LBSKeyData;->vAuthName:[B

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/LBSKeyData;->vEncryptData:[B

    iget-object v1, p1, LLBSAPIProtocol/LBSKeyData;->vEncryptData:[B

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVAuthName()[B
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/LBSKeyData;->vAuthName:[B

    return-object v0
.end method

.method public getVEncryptData()[B
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/LBSKeyData;->vEncryptData:[B

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, LLBSAPIProtocol/LBSKeyData;->cache_vAuthName:[B

    if-nez v0, :cond_0

    new-array v0, v2, [B

    check-cast v0, [B

    sput-object v0, LLBSAPIProtocol/LBSKeyData;->cache_vAuthName:[B

    sget-object v0, LLBSAPIProtocol/LBSKeyData;->cache_vAuthName:[B

    check-cast v0, [B

    aput-byte v1, v0, v1

    :cond_0
    sget-object v0, LLBSAPIProtocol/LBSKeyData;->cache_vAuthName:[B

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p0, v0}, LLBSAPIProtocol/LBSKeyData;->setVAuthName([B)V

    sget-object v0, LLBSAPIProtocol/LBSKeyData;->cache_vEncryptData:[B

    if-nez v0, :cond_1

    new-array v0, v2, [B

    check-cast v0, [B

    sput-object v0, LLBSAPIProtocol/LBSKeyData;->cache_vEncryptData:[B

    sget-object v0, LLBSAPIProtocol/LBSKeyData;->cache_vEncryptData:[B

    check-cast v0, [B

    aput-byte v1, v0, v1

    :cond_1
    sget-object v0, LLBSAPIProtocol/LBSKeyData;->cache_vEncryptData:[B

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    check-cast v0, [B

    invoke-virtual {p0, v0}, LLBSAPIProtocol/LBSKeyData;->setVEncryptData([B)V

    return-void
.end method

.method public setVAuthName([B)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/LBSKeyData;->vAuthName:[B

    return-void
.end method

.method public setVEncryptData([B)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/LBSKeyData;->vEncryptData:[B

    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LLBSAPIProtocol/LBSKeyData;->vAuthName:[B

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    iget-object v0, p0, LLBSAPIProtocol/LBSKeyData;->vEncryptData:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    return-void
.end method

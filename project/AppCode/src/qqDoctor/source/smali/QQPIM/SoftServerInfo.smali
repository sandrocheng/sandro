.class public final LQQPIM/SoftServerInfo;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_expand:[B


# instance fields
.field public expand:[B

.field public status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/SoftServerInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/SoftServerInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/SoftServerInfo;->status:I

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/SoftServerInfo;->expand:[B

    iget v0, p0, LQQPIM/SoftServerInfo;->status:I

    invoke-virtual {p0, v0}, LQQPIM/SoftServerInfo;->setStatus(I)V

    iget-object v0, p0, LQQPIM/SoftServerInfo;->expand:[B

    invoke-virtual {p0, v0}, LQQPIM/SoftServerInfo;->setExpand([B)V

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/SoftServerInfo;->status:I

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/SoftServerInfo;->expand:[B

    invoke-virtual {p0, p1}, LQQPIM/SoftServerInfo;->setStatus(I)V

    invoke-virtual {p0, p2}, LQQPIM/SoftServerInfo;->setExpand([B)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.SoftServerInfo"

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

    sget-boolean v1, LQQPIM/SoftServerInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LQQPIM/SoftServerInfo;->status:I

    const-string v2, "status"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftServerInfo;->expand:[B

    const-string v2, "expand"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display([BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

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
    check-cast p1, LQQPIM/SoftServerInfo;

    iget v1, p0, LQQPIM/SoftServerInfo;->status:I

    iget v2, p1, LQQPIM/SoftServerInfo;->status:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftServerInfo;->expand:[B

    iget-object v2, p1, LQQPIM/SoftServerInfo;->expand:[B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.SoftServerInfo"

    return-object v0
.end method

.method public final getExpand()[B
    .locals 1

    iget-object v0, p0, LQQPIM/SoftServerInfo;->expand:[B

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    iget v0, p0, LQQPIM/SoftServerInfo;->status:I

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
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, LQQPIM/SoftServerInfo;->status:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftServerInfo;->status:I

    sget-object v0, LQQPIM/SoftServerInfo;->cache_expand:[B

    if-nez v0, :cond_0

    new-array v0, v2, [B

    sput-object v0, LQQPIM/SoftServerInfo;->cache_expand:[B

    aput-byte v1, v0, v1

    :cond_0
    sget-object v0, LQQPIM/SoftServerInfo;->cache_expand:[B

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftServerInfo;->expand:[B

    return-void
.end method

.method public final setExpand([B)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftServerInfo;->expand:[B

    return-void
.end method

.method public final setStatus(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftServerInfo;->status:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LQQPIM/SoftServerInfo;->status:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/SoftServerInfo;->expand:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftServerInfo;->expand:[B

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    :cond_0
    return-void
.end method

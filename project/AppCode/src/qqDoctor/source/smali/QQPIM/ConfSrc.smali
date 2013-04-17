.class public final LQQPIM/ConfSrc;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_data:[B


# instance fields
.field public checksum:Ljava/lang/String;

.field public data:[B

.field public filename:Ljava/lang/String;

.field public isincreupdate:I

.field public iuchecksum:Ljava/lang/String;

.field public rnum:I

.field public size:I

.field public timestamp:I

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/ConfSrc;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/ConfSrc;->$assertionsDisabled:Z

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

    iput-object v0, p0, LQQPIM/ConfSrc;->filename:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ConfSrc;->checksum:Ljava/lang/String;

    iput v1, p0, LQQPIM/ConfSrc;->timestamp:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ConfSrc;->url:Ljava/lang/String;

    iput v1, p0, LQQPIM/ConfSrc;->isincreupdate:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ConfSrc;->iuchecksum:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/ConfSrc;->data:[B

    iput v1, p0, LQQPIM/ConfSrc;->rnum:I

    iput v1, p0, LQQPIM/ConfSrc;->size:I

    iget-object v0, p0, LQQPIM/ConfSrc;->filename:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/ConfSrc;->setFilename(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/ConfSrc;->checksum:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/ConfSrc;->setChecksum(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/ConfSrc;->timestamp:I

    invoke-virtual {p0, v0}, LQQPIM/ConfSrc;->setTimestamp(I)V

    iget-object v0, p0, LQQPIM/ConfSrc;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/ConfSrc;->setUrl(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/ConfSrc;->isincreupdate:I

    invoke-virtual {p0, v0}, LQQPIM/ConfSrc;->setIsincreupdate(I)V

    iget-object v0, p0, LQQPIM/ConfSrc;->iuchecksum:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/ConfSrc;->setIuchecksum(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/ConfSrc;->data:[B

    invoke-virtual {p0, v0}, LQQPIM/ConfSrc;->setData([B)V

    iget v0, p0, LQQPIM/ConfSrc;->rnum:I

    invoke-virtual {p0, v0}, LQQPIM/ConfSrc;->setRnum(I)V

    iget v0, p0, LQQPIM/ConfSrc;->size:I

    invoke-virtual {p0, v0}, LQQPIM/ConfSrc;->setSize(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;[BII)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ConfSrc;->filename:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ConfSrc;->checksum:Ljava/lang/String;

    iput v1, p0, LQQPIM/ConfSrc;->timestamp:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ConfSrc;->url:Ljava/lang/String;

    iput v1, p0, LQQPIM/ConfSrc;->isincreupdate:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ConfSrc;->iuchecksum:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/ConfSrc;->data:[B

    iput v1, p0, LQQPIM/ConfSrc;->rnum:I

    iput v1, p0, LQQPIM/ConfSrc;->size:I

    invoke-virtual {p0, p1}, LQQPIM/ConfSrc;->setFilename(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, LQQPIM/ConfSrc;->setChecksum(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LQQPIM/ConfSrc;->setTimestamp(I)V

    invoke-virtual {p0, p4}, LQQPIM/ConfSrc;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, LQQPIM/ConfSrc;->setIsincreupdate(I)V

    invoke-virtual {p0, p6}, LQQPIM/ConfSrc;->setIuchecksum(Ljava/lang/String;)V

    invoke-virtual {p0, p7}, LQQPIM/ConfSrc;->setData([B)V

    invoke-virtual {p0, p8}, LQQPIM/ConfSrc;->setRnum(I)V

    invoke-virtual {p0, p9}, LQQPIM/ConfSrc;->setSize(I)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.ConfSrc"

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

    sget-boolean v1, LQQPIM/ConfSrc;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/ConfSrc;->filename:Ljava/lang/String;

    const-string v2, "filename"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/ConfSrc;->checksum:Ljava/lang/String;

    const-string v2, "checksum"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/ConfSrc;->timestamp:I

    const-string v2, "timestamp"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/ConfSrc;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/ConfSrc;->isincreupdate:I

    const-string v2, "isincreupdate"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/ConfSrc;->iuchecksum:Ljava/lang/String;

    const-string v2, "iuchecksum"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/ConfSrc;->data:[B

    const-string v2, "data"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display([BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/ConfSrc;->rnum:I

    const-string v2, "rnum"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/ConfSrc;->size:I

    const-string v2, "size"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

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
    check-cast p1, LQQPIM/ConfSrc;

    iget-object v1, p0, LQQPIM/ConfSrc;->filename:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/ConfSrc;->filename:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/ConfSrc;->checksum:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/ConfSrc;->checksum:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/ConfSrc;->timestamp:I

    iget v2, p1, LQQPIM/ConfSrc;->timestamp:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/ConfSrc;->url:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/ConfSrc;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/ConfSrc;->isincreupdate:I

    iget v2, p1, LQQPIM/ConfSrc;->isincreupdate:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/ConfSrc;->iuchecksum:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/ConfSrc;->iuchecksum:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/ConfSrc;->data:[B

    iget-object v2, p1, LQQPIM/ConfSrc;->data:[B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/ConfSrc;->rnum:I

    iget v2, p1, LQQPIM/ConfSrc;->rnum:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/ConfSrc;->size:I

    iget v2, p1, LQQPIM/ConfSrc;->size:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.ConfSrc"

    return-object v0
.end method

.method public final getChecksum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/ConfSrc;->checksum:Ljava/lang/String;

    return-object v0
.end method

.method public final getData()[B
    .locals 1

    iget-object v0, p0, LQQPIM/ConfSrc;->data:[B

    return-object v0
.end method

.method public final getFilename()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/ConfSrc;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsincreupdate()I
    .locals 1

    iget v0, p0, LQQPIM/ConfSrc;->isincreupdate:I

    return v0
.end method

.method public final getIuchecksum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/ConfSrc;->iuchecksum:Ljava/lang/String;

    return-object v0
.end method

.method public final getRnum()I
    .locals 1

    iget v0, p0, LQQPIM/ConfSrc;->rnum:I

    return v0
.end method

.method public final getSize()I
    .locals 1

    iget v0, p0, LQQPIM/ConfSrc;->size:I

    return v0
.end method

.method public final getTimestamp()I
    .locals 1

    iget v0, p0, LQQPIM/ConfSrc;->timestamp:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/ConfSrc;->url:Ljava/lang/String;

    return-object v0
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

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/ConfSrc;->filename:Ljava/lang/String;

    invoke-virtual {p1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/ConfSrc;->checksum:Ljava/lang/String;

    iget v0, p0, LQQPIM/ConfSrc;->timestamp:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/ConfSrc;->timestamp:I

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/ConfSrc;->url:Ljava/lang/String;

    iget v0, p0, LQQPIM/ConfSrc;->isincreupdate:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/ConfSrc;->isincreupdate:I

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/ConfSrc;->iuchecksum:Ljava/lang/String;

    sget-object v0, LQQPIM/ConfSrc;->cache_data:[B

    if-nez v0, :cond_0

    new-array v0, v3, [B

    sput-object v0, LQQPIM/ConfSrc;->cache_data:[B

    aput-byte v2, v0, v2

    :cond_0
    sget-object v0, LQQPIM/ConfSrc;->cache_data:[B

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, LQQPIM/ConfSrc;->data:[B

    iget v0, p0, LQQPIM/ConfSrc;->rnum:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/ConfSrc;->rnum:I

    iget v0, p0, LQQPIM/ConfSrc;->size:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/ConfSrc;->size:I

    return-void
.end method

.method public final setChecksum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/ConfSrc;->checksum:Ljava/lang/String;

    return-void
.end method

.method public final setData([B)V
    .locals 0

    iput-object p1, p0, LQQPIM/ConfSrc;->data:[B

    return-void
.end method

.method public final setFilename(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/ConfSrc;->filename:Ljava/lang/String;

    return-void
.end method

.method public final setIsincreupdate(I)V
    .locals 0

    iput p1, p0, LQQPIM/ConfSrc;->isincreupdate:I

    return-void
.end method

.method public final setIuchecksum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/ConfSrc;->iuchecksum:Ljava/lang/String;

    return-void
.end method

.method public final setRnum(I)V
    .locals 0

    iput p1, p0, LQQPIM/ConfSrc;->rnum:I

    return-void
.end method

.method public final setSize(I)V
    .locals 0

    iput p1, p0, LQQPIM/ConfSrc;->size:I

    return-void
.end method

.method public final setTimestamp(I)V
    .locals 0

    iput p1, p0, LQQPIM/ConfSrc;->timestamp:I

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/ConfSrc;->url:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/ConfSrc;->filename:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/ConfSrc;->checksum:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LQQPIM/ConfSrc;->timestamp:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/ConfSrc;->url:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LQQPIM/ConfSrc;->isincreupdate:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/ConfSrc;->iuchecksum:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/ConfSrc;->iuchecksum:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, LQQPIM/ConfSrc;->data:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/ConfSrc;->data:[B

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    :cond_1
    iget v0, p0, LQQPIM/ConfSrc;->rnum:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/ConfSrc;->size:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method

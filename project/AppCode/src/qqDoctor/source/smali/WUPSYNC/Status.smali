.class public final LWUPSYNC/Status;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_extmsg:[B


# instance fields
.field public aid:S

.field public extmsg:[B

.field public result:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LWUPSYNC/Status;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LWUPSYNC/Status;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-short v0, p0, LWUPSYNC/Status;->aid:S

    iput-short v0, p0, LWUPSYNC/Status;->result:S

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/Status;->extmsg:[B

    iget-short v0, p0, LWUPSYNC/Status;->aid:S

    invoke-virtual {p0, v0}, LWUPSYNC/Status;->setAid(S)V

    iget-short v0, p0, LWUPSYNC/Status;->result:S

    invoke-virtual {p0, v0}, LWUPSYNC/Status;->setResult(S)V

    iget-object v0, p0, LWUPSYNC/Status;->extmsg:[B

    invoke-virtual {p0, v0}, LWUPSYNC/Status;->setExtmsg([B)V

    return-void
.end method

.method public constructor <init>(SS[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-short v0, p0, LWUPSYNC/Status;->aid:S

    iput-short v0, p0, LWUPSYNC/Status;->result:S

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/Status;->extmsg:[B

    invoke-virtual {p0, p1}, LWUPSYNC/Status;->setAid(S)V

    invoke-virtual {p0, p2}, LWUPSYNC/Status;->setResult(S)V

    invoke-virtual {p0, p3}, LWUPSYNC/Status;->setExtmsg([B)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "WUPSYNC.Status"

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

    sget-boolean v1, LWUPSYNC/Status;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-short v1, p0, LWUPSYNC/Status;->aid:S

    const-string v2, "aid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-short v1, p0, LWUPSYNC/Status;->result:S

    const-string v2, "result"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LWUPSYNC/Status;->extmsg:[B

    const-string v2, "extmsg"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display([BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LWUPSYNC/Status;

    iget-short v0, p0, LWUPSYNC/Status;->aid:S

    iget-short v1, p1, LWUPSYNC/Status;->aid:S

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-short v0, p0, LWUPSYNC/Status;->result:S

    iget-short v1, p1, LWUPSYNC/Status;->result:S

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/Status;->extmsg:[B

    iget-object v1, p1, LWUPSYNC/Status;->extmsg:[B

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

.method public final getAid()S
    .locals 1

    iget-short v0, p0, LWUPSYNC/Status;->aid:S

    return v0
.end method

.method public final getExtmsg()[B
    .locals 1

    iget-object v0, p0, LWUPSYNC/Status;->extmsg:[B

    return-object v0
.end method

.method public final getResult()S
    .locals 1

    iget-short v0, p0, LWUPSYNC/Status;->result:S

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-short v0, p0, LWUPSYNC/Status;->aid:S

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/Status;->aid:S

    iget-short v0, p0, LWUPSYNC/Status;->result:S

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/Status;->result:S

    sget-object v0, LWUPSYNC/Status;->cache_extmsg:[B

    if-nez v0, :cond_0

    new-array v0, v1, [B

    sput-object v0, LWUPSYNC/Status;->cache_extmsg:[B

    aput-byte v2, v0, v2

    :cond_0
    sget-object v0, LWUPSYNC/Status;->cache_extmsg:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/Status;->extmsg:[B

    return-void
.end method

.method public final setAid(S)V
    .locals 0

    iput-short p1, p0, LWUPSYNC/Status;->aid:S

    return-void
.end method

.method public final setExtmsg([B)V
    .locals 0

    iput-object p1, p0, LWUPSYNC/Status;->extmsg:[B

    return-void
.end method

.method public final setResult(S)V
    .locals 0

    iput-short p1, p0, LWUPSYNC/Status;->result:S

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-short v0, p0, LWUPSYNC/Status;->aid:S

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-short v0, p0, LWUPSYNC/Status;->result:S

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-object v0, p0, LWUPSYNC/Status;->extmsg:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/Status;->extmsg:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    :cond_0
    return-void
.end method

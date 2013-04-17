.class public final LWUPSYNC/InitResp;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_result:I

.field static cache_syncType:I


# instance fields
.field public maxCount:S

.field public maxSize:I

.field public result:I

.field public resyncPhoto:B

.field public sid:Ljava/lang/String;

.field public syncType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LWUPSYNC/InitResp;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LWUPSYNC/InitResp;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LWUPSYNC/InitResp;->result:I

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/InitResp;->sid:Ljava/lang/String;

    iput v1, p0, LWUPSYNC/InitResp;->syncType:I

    iput v1, p0, LWUPSYNC/InitResp;->maxSize:I

    iput-short v1, p0, LWUPSYNC/InitResp;->maxCount:S

    iput-byte v1, p0, LWUPSYNC/InitResp;->resyncPhoto:B

    iget v0, p0, LWUPSYNC/InitResp;->result:I

    invoke-virtual {p0, v0}, LWUPSYNC/InitResp;->setResult(I)V

    iget-object v0, p0, LWUPSYNC/InitResp;->sid:Ljava/lang/String;

    invoke-virtual {p0, v0}, LWUPSYNC/InitResp;->setSid(Ljava/lang/String;)V

    iget v0, p0, LWUPSYNC/InitResp;->syncType:I

    invoke-virtual {p0, v0}, LWUPSYNC/InitResp;->setSyncType(I)V

    iget v0, p0, LWUPSYNC/InitResp;->maxSize:I

    invoke-virtual {p0, v0}, LWUPSYNC/InitResp;->setMaxSize(I)V

    iget-short v0, p0, LWUPSYNC/InitResp;->maxCount:S

    invoke-virtual {p0, v0}, LWUPSYNC/InitResp;->setMaxCount(S)V

    iget-byte v0, p0, LWUPSYNC/InitResp;->resyncPhoto:B

    invoke-virtual {p0, v0}, LWUPSYNC/InitResp;->setResyncPhoto(B)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IISB)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LWUPSYNC/InitResp;->result:I

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/InitResp;->sid:Ljava/lang/String;

    iput v1, p0, LWUPSYNC/InitResp;->syncType:I

    iput v1, p0, LWUPSYNC/InitResp;->maxSize:I

    iput-short v1, p0, LWUPSYNC/InitResp;->maxCount:S

    iput-byte v1, p0, LWUPSYNC/InitResp;->resyncPhoto:B

    invoke-virtual {p0, p1}, LWUPSYNC/InitResp;->setResult(I)V

    invoke-virtual {p0, p2}, LWUPSYNC/InitResp;->setSid(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LWUPSYNC/InitResp;->setSyncType(I)V

    invoke-virtual {p0, p4}, LWUPSYNC/InitResp;->setMaxSize(I)V

    invoke-virtual {p0, p5}, LWUPSYNC/InitResp;->setMaxCount(S)V

    invoke-virtual {p0, p6}, LWUPSYNC/InitResp;->setResyncPhoto(B)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "WUPSYNC.InitResp"

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

    sget-boolean v1, LWUPSYNC/InitResp;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LWUPSYNC/InitResp;->result:I

    const-string v2, "result"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LWUPSYNC/InitResp;->sid:Ljava/lang/String;

    const-string v2, "sid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LWUPSYNC/InitResp;->syncType:I

    const-string v2, "syncType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LWUPSYNC/InitResp;->maxSize:I

    const-string v2, "maxSize"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-short v1, p0, LWUPSYNC/InitResp;->maxCount:S

    const-string v2, "maxCount"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-byte v1, p0, LWUPSYNC/InitResp;->resyncPhoto:B

    const-string v2, "resyncPhoto"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LWUPSYNC/InitResp;

    iget v0, p0, LWUPSYNC/InitResp;->result:I

    iget v1, p1, LWUPSYNC/InitResp;->result:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/InitResp;->sid:Ljava/lang/String;

    iget-object v1, p1, LWUPSYNC/InitResp;->sid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LWUPSYNC/InitResp;->syncType:I

    iget v1, p1, LWUPSYNC/InitResp;->syncType:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LWUPSYNC/InitResp;->maxSize:I

    iget v1, p1, LWUPSYNC/InitResp;->maxSize:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-short v0, p0, LWUPSYNC/InitResp;->maxCount:S

    iget-short v1, p1, LWUPSYNC/InitResp;->maxCount:S

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p0, LWUPSYNC/InitResp;->resyncPhoto:B

    iget-byte v1, p1, LWUPSYNC/InitResp;->resyncPhoto:B

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(BB)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getMaxCount()S
    .locals 1

    iget-short v0, p0, LWUPSYNC/InitResp;->maxCount:S

    return v0
.end method

.method public final getMaxSize()I
    .locals 1

    iget v0, p0, LWUPSYNC/InitResp;->maxSize:I

    return v0
.end method

.method public final getResult()I
    .locals 1

    iget v0, p0, LWUPSYNC/InitResp;->result:I

    return v0
.end method

.method public final getResyncPhoto()B
    .locals 1

    iget-byte v0, p0, LWUPSYNC/InitResp;->resyncPhoto:B

    return v0
.end method

.method public final getSid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LWUPSYNC/InitResp;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public final getSyncType()I
    .locals 1

    iget v0, p0, LWUPSYNC/InitResp;->syncType:I

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, LWUPSYNC/InitResp;->result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/InitResp;->result:I

    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/InitResp;->sid:Ljava/lang/String;

    iget v0, p0, LWUPSYNC/InitResp;->syncType:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/InitResp;->syncType:I

    iget v0, p0, LWUPSYNC/InitResp;->maxSize:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/InitResp;->maxSize:I

    iget-short v0, p0, LWUPSYNC/InitResp;->maxCount:S

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/InitResp;->maxCount:S

    iget-byte v0, p0, LWUPSYNC/InitResp;->resyncPhoto:B

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, LWUPSYNC/InitResp;->resyncPhoto:B

    return-void
.end method

.method public final setMaxCount(S)V
    .locals 0

    iput-short p1, p0, LWUPSYNC/InitResp;->maxCount:S

    return-void
.end method

.method public final setMaxSize(I)V
    .locals 0

    iput p1, p0, LWUPSYNC/InitResp;->maxSize:I

    return-void
.end method

.method public final setResult(I)V
    .locals 0

    iput p1, p0, LWUPSYNC/InitResp;->result:I

    return-void
.end method

.method public final setResyncPhoto(B)V
    .locals 0

    iput-byte p1, p0, LWUPSYNC/InitResp;->resyncPhoto:B

    return-void
.end method

.method public final setSid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LWUPSYNC/InitResp;->sid:Ljava/lang/String;

    return-void
.end method

.method public final setSyncType(I)V
    .locals 0

    iput p1, p0, LWUPSYNC/InitResp;->syncType:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LWUPSYNC/InitResp;->result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LWUPSYNC/InitResp;->sid:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LWUPSYNC/InitResp;->syncType:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LWUPSYNC/InitResp;->maxSize:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-short v0, p0, LWUPSYNC/InitResp;->maxCount:S

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-byte v0, p0, LWUPSYNC/InitResp;->resyncPhoto:B

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    return-void
.end method

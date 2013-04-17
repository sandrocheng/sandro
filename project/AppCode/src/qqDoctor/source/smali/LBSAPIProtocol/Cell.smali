.class public final LLBSAPIProtocol/Cell;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public iCellId:I

.field public iLac:I

.field public shMcc:S

.field public shMnc:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LLBSAPIProtocol/Cell;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LLBSAPIProtocol/Cell;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-short v0, p0, LLBSAPIProtocol/Cell;->shMcc:S

    iput-short v0, p0, LLBSAPIProtocol/Cell;->shMnc:S

    iput v0, p0, LLBSAPIProtocol/Cell;->iLac:I

    iput v0, p0, LLBSAPIProtocol/Cell;->iCellId:I

    iget-short v0, p0, LLBSAPIProtocol/Cell;->shMcc:S

    invoke-virtual {p0, v0}, LLBSAPIProtocol/Cell;->setShMcc(S)V

    iget-short v0, p0, LLBSAPIProtocol/Cell;->shMnc:S

    invoke-virtual {p0, v0}, LLBSAPIProtocol/Cell;->setShMnc(S)V

    iget v0, p0, LLBSAPIProtocol/Cell;->iLac:I

    invoke-virtual {p0, v0}, LLBSAPIProtocol/Cell;->setILac(I)V

    iget v0, p0, LLBSAPIProtocol/Cell;->iCellId:I

    invoke-virtual {p0, v0}, LLBSAPIProtocol/Cell;->setICellId(I)V

    return-void
.end method

.method public constructor <init>(SSII)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-short v0, p0, LLBSAPIProtocol/Cell;->shMcc:S

    iput-short v0, p0, LLBSAPIProtocol/Cell;->shMnc:S

    iput v0, p0, LLBSAPIProtocol/Cell;->iLac:I

    iput v0, p0, LLBSAPIProtocol/Cell;->iCellId:I

    invoke-virtual {p0, p1}, LLBSAPIProtocol/Cell;->setShMcc(S)V

    invoke-virtual {p0, p2}, LLBSAPIProtocol/Cell;->setShMnc(S)V

    invoke-virtual {p0, p3}, LLBSAPIProtocol/Cell;->setILac(I)V

    invoke-virtual {p0, p4}, LLBSAPIProtocol/Cell;->setICellId(I)V

    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    const-string v0, "LBSAPIProtocol.Cell"

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

    sget-boolean v1, LLBSAPIProtocol/Cell;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-short v1, p0, LLBSAPIProtocol/Cell;->shMcc:S

    const-string v2, "shMcc"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-short v1, p0, LLBSAPIProtocol/Cell;->shMnc:S

    const-string v2, "shMnc"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LLBSAPIProtocol/Cell;->iLac:I

    const-string v2, "iLac"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LLBSAPIProtocol/Cell;->iCellId:I

    const-string v2, "iCellId"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LLBSAPIProtocol/Cell;

    iget-short v0, p0, LLBSAPIProtocol/Cell;->shMcc:S

    iget-short v1, p1, LLBSAPIProtocol/Cell;->shMcc:S

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-short v0, p0, LLBSAPIProtocol/Cell;->shMnc:S

    iget-short v1, p1, LLBSAPIProtocol/Cell;->shMnc:S

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LLBSAPIProtocol/Cell;->iLac:I

    iget v1, p1, LLBSAPIProtocol/Cell;->iLac:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LLBSAPIProtocol/Cell;->iCellId:I

    iget v1, p1, LLBSAPIProtocol/Cell;->iCellId:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getICellId()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/Cell;->iCellId:I

    return v0
.end method

.method public getILac()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/Cell;->iLac:I

    return v0
.end method

.method public getShMcc()S
    .locals 1

    iget-short v0, p0, LLBSAPIProtocol/Cell;->shMcc:S

    return v0
.end method

.method public getShMnc()S
    .locals 1

    iget-short v0, p0, LLBSAPIProtocol/Cell;->shMnc:S

    return v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    iget-short v0, p0, LLBSAPIProtocol/Cell;->shMcc:S

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/Cell;->setShMcc(S)V

    iget-short v0, p0, LLBSAPIProtocol/Cell;->shMnc:S

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/Cell;->setShMnc(S)V

    iget v0, p0, LLBSAPIProtocol/Cell;->iLac:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/Cell;->setILac(I)V

    iget v0, p0, LLBSAPIProtocol/Cell;->iCellId:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/Cell;->setICellId(I)V

    return-void
.end method

.method public setICellId(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/Cell;->iCellId:I

    return-void
.end method

.method public setILac(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/Cell;->iLac:I

    return-void
.end method

.method public setShMcc(S)V
    .locals 0

    iput-short p1, p0, LLBSAPIProtocol/Cell;->shMcc:S

    return-void
.end method

.method public setShMnc(S)V
    .locals 0

    iput-short p1, p0, LLBSAPIProtocol/Cell;->shMnc:S

    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-short v0, p0, LLBSAPIProtocol/Cell;->shMcc:S

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-short v0, p0, LLBSAPIProtocol/Cell;->shMnc:S

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget v0, p0, LLBSAPIProtocol/Cell;->iLac:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LLBSAPIProtocol/Cell;->iCellId:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method

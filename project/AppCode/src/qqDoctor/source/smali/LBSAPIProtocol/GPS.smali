.class public final LLBSAPIProtocol/GPS;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_eType:I


# instance fields
.field public eType:I

.field public iAlt:I

.field public iLat:I

.field public iLon:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LLBSAPIProtocol/GPS;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LLBSAPIProtocol/GPS;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const v0, 0x35a4e900

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v0, p0, LLBSAPIProtocol/GPS;->iLat:I

    iput v0, p0, LLBSAPIProtocol/GPS;->iLon:I

    const/4 v0, -0x1

    iput v0, p0, LLBSAPIProtocol/GPS;->iAlt:I

    const/4 v0, 0x0

    iput v0, p0, LLBSAPIProtocol/GPS;->eType:I

    iget v0, p0, LLBSAPIProtocol/GPS;->iLat:I

    invoke-virtual {p0, v0}, LLBSAPIProtocol/GPS;->setILat(I)V

    iget v0, p0, LLBSAPIProtocol/GPS;->iLon:I

    invoke-virtual {p0, v0}, LLBSAPIProtocol/GPS;->setILon(I)V

    iget v0, p0, LLBSAPIProtocol/GPS;->iAlt:I

    invoke-virtual {p0, v0}, LLBSAPIProtocol/GPS;->setIAlt(I)V

    iget v0, p0, LLBSAPIProtocol/GPS;->eType:I

    invoke-virtual {p0, v0}, LLBSAPIProtocol/GPS;->setEType(I)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 1

    const v0, 0x35a4e900

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v0, p0, LLBSAPIProtocol/GPS;->iLat:I

    iput v0, p0, LLBSAPIProtocol/GPS;->iLon:I

    const/4 v0, -0x1

    iput v0, p0, LLBSAPIProtocol/GPS;->iAlt:I

    const/4 v0, 0x0

    iput v0, p0, LLBSAPIProtocol/GPS;->eType:I

    invoke-virtual {p0, p1}, LLBSAPIProtocol/GPS;->setILat(I)V

    invoke-virtual {p0, p2}, LLBSAPIProtocol/GPS;->setILon(I)V

    invoke-virtual {p0, p3}, LLBSAPIProtocol/GPS;->setIAlt(I)V

    invoke-virtual {p0, p4}, LLBSAPIProtocol/GPS;->setEType(I)V

    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    const-string v0, "LBSAPIProtocol.GPS"

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

    sget-boolean v1, LLBSAPIProtocol/GPS;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LLBSAPIProtocol/GPS;->iLat:I

    const-string v2, "iLat"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LLBSAPIProtocol/GPS;->iLon:I

    const-string v2, "iLon"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LLBSAPIProtocol/GPS;->iAlt:I

    const-string v2, "iAlt"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LLBSAPIProtocol/GPS;->eType:I

    const-string v2, "eType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LLBSAPIProtocol/GPS;

    iget v0, p0, LLBSAPIProtocol/GPS;->iLat:I

    iget v1, p1, LLBSAPIProtocol/GPS;->iLat:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LLBSAPIProtocol/GPS;->iLon:I

    iget v1, p1, LLBSAPIProtocol/GPS;->iLon:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LLBSAPIProtocol/GPS;->iAlt:I

    iget v1, p1, LLBSAPIProtocol/GPS;->iAlt:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LLBSAPIProtocol/GPS;->eType:I

    iget v1, p1, LLBSAPIProtocol/GPS;->eType:I

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

.method public getEType()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/GPS;->eType:I

    return v0
.end method

.method public getIAlt()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/GPS;->iAlt:I

    return v0
.end method

.method public getILat()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/GPS;->iLat:I

    return v0
.end method

.method public getILon()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/GPS;->iLon:I

    return v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, LLBSAPIProtocol/GPS;->iLat:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/GPS;->setILat(I)V

    iget v0, p0, LLBSAPIProtocol/GPS;->iLon:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/GPS;->setILon(I)V

    iget v0, p0, LLBSAPIProtocol/GPS;->iAlt:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/GPS;->setIAlt(I)V

    iget v0, p0, LLBSAPIProtocol/GPS;->eType:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/GPS;->setEType(I)V

    return-void
.end method

.method public setEType(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/GPS;->eType:I

    return-void
.end method

.method public setIAlt(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/GPS;->iAlt:I

    return-void
.end method

.method public setILat(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/GPS;->iLat:I

    return-void
.end method

.method public setILon(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/GPS;->iLon:I

    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LLBSAPIProtocol/GPS;->iLat:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LLBSAPIProtocol/GPS;->iLon:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LLBSAPIProtocol/GPS;->iAlt:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LLBSAPIProtocol/GPS;->eType:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method

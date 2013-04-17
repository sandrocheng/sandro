.class public final LLBSAPIProtocol/ReqHeader;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_eDeviceType:I

.field static cache_eUinType:I


# instance fields
.field public eDeviceType:I

.field public eUinType:I

.field public shVersion:S

.field public strAuthName:Ljava/lang/String;

.field public strAuthPassword:Ljava/lang/String;

.field public strUin:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LLBSAPIProtocol/ReqHeader;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LLBSAPIProtocol/ReqHeader;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x1

    iput-short v0, p0, LLBSAPIProtocol/ReqHeader;->shVersion:S

    iput v1, p0, LLBSAPIProtocol/ReqHeader;->eUinType:I

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/ReqHeader;->strUin:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/ReqHeader;->strAuthName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/ReqHeader;->strAuthPassword:Ljava/lang/String;

    iput v1, p0, LLBSAPIProtocol/ReqHeader;->eDeviceType:I

    iget-short v0, p0, LLBSAPIProtocol/ReqHeader;->shVersion:S

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqHeader;->setShVersion(S)V

    iget v0, p0, LLBSAPIProtocol/ReqHeader;->eUinType:I

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqHeader;->setEUinType(I)V

    iget-object v0, p0, LLBSAPIProtocol/ReqHeader;->strUin:Ljava/lang/String;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqHeader;->setStrUin(Ljava/lang/String;)V

    iget-object v0, p0, LLBSAPIProtocol/ReqHeader;->strAuthName:Ljava/lang/String;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqHeader;->setStrAuthName(Ljava/lang/String;)V

    iget-object v0, p0, LLBSAPIProtocol/ReqHeader;->strAuthPassword:Ljava/lang/String;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqHeader;->setStrAuthPassword(Ljava/lang/String;)V

    iget v0, p0, LLBSAPIProtocol/ReqHeader;->eDeviceType:I

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqHeader;->setEDeviceType(I)V

    return-void
.end method

.method public constructor <init>(SILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x1

    iput-short v0, p0, LLBSAPIProtocol/ReqHeader;->shVersion:S

    iput v1, p0, LLBSAPIProtocol/ReqHeader;->eUinType:I

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/ReqHeader;->strUin:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/ReqHeader;->strAuthName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/ReqHeader;->strAuthPassword:Ljava/lang/String;

    iput v1, p0, LLBSAPIProtocol/ReqHeader;->eDeviceType:I

    invoke-virtual {p0, p1}, LLBSAPIProtocol/ReqHeader;->setShVersion(S)V

    invoke-virtual {p0, p2}, LLBSAPIProtocol/ReqHeader;->setEUinType(I)V

    invoke-virtual {p0, p3}, LLBSAPIProtocol/ReqHeader;->setStrUin(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LLBSAPIProtocol/ReqHeader;->setStrAuthName(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, LLBSAPIProtocol/ReqHeader;->setStrAuthPassword(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, LLBSAPIProtocol/ReqHeader;->setEDeviceType(I)V

    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    const-string v0, "LBSAPIProtocol.ReqHeader"

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

    sget-boolean v1, LLBSAPIProtocol/ReqHeader;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-short v1, p0, LLBSAPIProtocol/ReqHeader;->shVersion:S

    const-string v2, "shVersion"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LLBSAPIProtocol/ReqHeader;->eUinType:I

    const-string v2, "eUinType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/ReqHeader;->strUin:Ljava/lang/String;

    const-string v2, "strUin"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/ReqHeader;->strAuthName:Ljava/lang/String;

    const-string v2, "strAuthName"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/ReqHeader;->strAuthPassword:Ljava/lang/String;

    const-string v2, "strAuthPassword"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LLBSAPIProtocol/ReqHeader;->eDeviceType:I

    const-string v2, "eDeviceType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LLBSAPIProtocol/ReqHeader;

    iget-short v0, p0, LLBSAPIProtocol/ReqHeader;->shVersion:S

    iget-short v1, p1, LLBSAPIProtocol/ReqHeader;->shVersion:S

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LLBSAPIProtocol/ReqHeader;->eUinType:I

    iget v1, p1, LLBSAPIProtocol/ReqHeader;->eUinType:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/ReqHeader;->strUin:Ljava/lang/String;

    iget-object v1, p1, LLBSAPIProtocol/ReqHeader;->strUin:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/ReqHeader;->strAuthName:Ljava/lang/String;

    iget-object v1, p1, LLBSAPIProtocol/ReqHeader;->strAuthName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/ReqHeader;->strAuthPassword:Ljava/lang/String;

    iget-object v1, p1, LLBSAPIProtocol/ReqHeader;->strAuthPassword:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LLBSAPIProtocol/ReqHeader;->eDeviceType:I

    iget v1, p1, LLBSAPIProtocol/ReqHeader;->eDeviceType:I

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

.method public getEDeviceType()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/ReqHeader;->eDeviceType:I

    return v0
.end method

.method public getEUinType()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/ReqHeader;->eUinType:I

    return v0
.end method

.method public getShVersion()S
    .locals 1

    iget-short v0, p0, LLBSAPIProtocol/ReqHeader;->shVersion:S

    return v0
.end method

.method public getStrAuthName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/ReqHeader;->strAuthName:Ljava/lang/String;

    return-object v0
.end method

.method public getStrAuthPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/ReqHeader;->strAuthPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getStrUin()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/ReqHeader;->strUin:Ljava/lang/String;

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-short v0, p0, LLBSAPIProtocol/ReqHeader;->shVersion:S

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqHeader;->setShVersion(S)V

    iget v0, p0, LLBSAPIProtocol/ReqHeader;->eUinType:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqHeader;->setEUinType(I)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqHeader;->setStrUin(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqHeader;->setStrAuthName(Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqHeader;->setStrAuthPassword(Ljava/lang/String;)V

    iget v0, p0, LLBSAPIProtocol/ReqHeader;->eDeviceType:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqHeader;->setEDeviceType(I)V

    return-void
.end method

.method public setEDeviceType(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/ReqHeader;->eDeviceType:I

    return-void
.end method

.method public setEUinType(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/ReqHeader;->eUinType:I

    return-void
.end method

.method public setShVersion(S)V
    .locals 0

    iput-short p1, p0, LLBSAPIProtocol/ReqHeader;->shVersion:S

    return-void
.end method

.method public setStrAuthName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/ReqHeader;->strAuthName:Ljava/lang/String;

    return-void
.end method

.method public setStrAuthPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/ReqHeader;->strAuthPassword:Ljava/lang/String;

    return-void
.end method

.method public setStrUin(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/ReqHeader;->strUin:Ljava/lang/String;

    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-short v0, p0, LLBSAPIProtocol/ReqHeader;->shVersion:S

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget v0, p0, LLBSAPIProtocol/ReqHeader;->eUinType:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LLBSAPIProtocol/ReqHeader;->strUin:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LLBSAPIProtocol/ReqHeader;->strAuthName:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LLBSAPIProtocol/ReqHeader;->strAuthPassword:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LLBSAPIProtocol/ReqHeader;->eDeviceType:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method

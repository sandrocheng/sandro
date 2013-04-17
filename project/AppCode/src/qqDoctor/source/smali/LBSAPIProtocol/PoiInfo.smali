.class public final LLBSAPIProtocol/PoiInfo;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public iDistance:I

.field public iDistrictCode:I

.field public iHotValue:I

.field public iLat:I

.field public iLon:I

.field public iType:I

.field public lId:J

.field public strAddress:Ljava/lang/String;

.field public strName:Ljava/lang/String;

.field public strTypeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LLBSAPIProtocol/PoiInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LLBSAPIProtocol/PoiInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 4

    const v3, 0x35a4e900

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/PoiInfo;->strName:Ljava/lang/String;

    iput v2, p0, LLBSAPIProtocol/PoiInfo;->iType:I

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/PoiInfo;->strTypeName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/PoiInfo;->strAddress:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LLBSAPIProtocol/PoiInfo;->lId:J

    iput v2, p0, LLBSAPIProtocol/PoiInfo;->iDistrictCode:I

    iput v3, p0, LLBSAPIProtocol/PoiInfo;->iLat:I

    iput v3, p0, LLBSAPIProtocol/PoiInfo;->iLon:I

    iput v2, p0, LLBSAPIProtocol/PoiInfo;->iDistance:I

    iput v2, p0, LLBSAPIProtocol/PoiInfo;->iHotValue:I

    iget-object v0, p0, LLBSAPIProtocol/PoiInfo;->strName:Ljava/lang/String;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/PoiInfo;->setStrName(Ljava/lang/String;)V

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iType:I

    invoke-virtual {p0, v0}, LLBSAPIProtocol/PoiInfo;->setIType(I)V

    iget-object v0, p0, LLBSAPIProtocol/PoiInfo;->strTypeName:Ljava/lang/String;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/PoiInfo;->setStrTypeName(Ljava/lang/String;)V

    iget-object v0, p0, LLBSAPIProtocol/PoiInfo;->strAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/PoiInfo;->setStrAddress(Ljava/lang/String;)V

    iget-wide v0, p0, LLBSAPIProtocol/PoiInfo;->lId:J

    invoke-virtual {p0, v0, v1}, LLBSAPIProtocol/PoiInfo;->setLId(J)V

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iDistrictCode:I

    invoke-virtual {p0, v0}, LLBSAPIProtocol/PoiInfo;->setIDistrictCode(I)V

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iLat:I

    invoke-virtual {p0, v0}, LLBSAPIProtocol/PoiInfo;->setILat(I)V

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iLon:I

    invoke-virtual {p0, v0}, LLBSAPIProtocol/PoiInfo;->setILon(I)V

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iDistance:I

    invoke-virtual {p0, v0}, LLBSAPIProtocol/PoiInfo;->setIDistance(I)V

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iHotValue:I

    invoke-virtual {p0, v0}, LLBSAPIProtocol/PoiInfo;->setIHotValue(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JIIIII)V
    .locals 4

    const v3, 0x35a4e900

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/PoiInfo;->strName:Ljava/lang/String;

    iput v2, p0, LLBSAPIProtocol/PoiInfo;->iType:I

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/PoiInfo;->strTypeName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/PoiInfo;->strAddress:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LLBSAPIProtocol/PoiInfo;->lId:J

    iput v2, p0, LLBSAPIProtocol/PoiInfo;->iDistrictCode:I

    iput v3, p0, LLBSAPIProtocol/PoiInfo;->iLat:I

    iput v3, p0, LLBSAPIProtocol/PoiInfo;->iLon:I

    iput v2, p0, LLBSAPIProtocol/PoiInfo;->iDistance:I

    iput v2, p0, LLBSAPIProtocol/PoiInfo;->iHotValue:I

    invoke-virtual {p0, p1}, LLBSAPIProtocol/PoiInfo;->setStrName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, LLBSAPIProtocol/PoiInfo;->setIType(I)V

    invoke-virtual {p0, p3}, LLBSAPIProtocol/PoiInfo;->setStrTypeName(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LLBSAPIProtocol/PoiInfo;->setStrAddress(Ljava/lang/String;)V

    invoke-virtual {p0, p5, p6}, LLBSAPIProtocol/PoiInfo;->setLId(J)V

    invoke-virtual {p0, p7}, LLBSAPIProtocol/PoiInfo;->setIDistrictCode(I)V

    invoke-virtual {p0, p8}, LLBSAPIProtocol/PoiInfo;->setILat(I)V

    invoke-virtual {p0, p9}, LLBSAPIProtocol/PoiInfo;->setILon(I)V

    invoke-virtual {p0, p10}, LLBSAPIProtocol/PoiInfo;->setIDistance(I)V

    invoke-virtual {p0, p11}, LLBSAPIProtocol/PoiInfo;->setIHotValue(I)V

    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    const-string v0, "LBSAPIProtocol.PoiInfo"

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

    sget-boolean v1, LLBSAPIProtocol/PoiInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 4

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LLBSAPIProtocol/PoiInfo;->strName:Ljava/lang/String;

    const-string v2, "strName"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LLBSAPIProtocol/PoiInfo;->iType:I

    const-string v2, "iType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/PoiInfo;->strTypeName:Ljava/lang/String;

    const-string v2, "strTypeName"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/PoiInfo;->strAddress:Ljava/lang/String;

    const-string v2, "strAddress"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-wide v1, p0, LLBSAPIProtocol/PoiInfo;->lId:J

    const-string v3, "lId"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceDisplayer;->display(JLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LLBSAPIProtocol/PoiInfo;->iDistrictCode:I

    const-string v2, "iDistrictCode"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LLBSAPIProtocol/PoiInfo;->iLat:I

    const-string v2, "iLat"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LLBSAPIProtocol/PoiInfo;->iLon:I

    const-string v2, "iLon"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LLBSAPIProtocol/PoiInfo;->iDistance:I

    const-string v2, "iDistance"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LLBSAPIProtocol/PoiInfo;->iHotValue:I

    const-string v2, "iHotValue"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    check-cast p1, LLBSAPIProtocol/PoiInfo;

    iget-object v0, p0, LLBSAPIProtocol/PoiInfo;->strName:Ljava/lang/String;

    iget-object v1, p1, LLBSAPIProtocol/PoiInfo;->strName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iType:I

    iget v1, p1, LLBSAPIProtocol/PoiInfo;->iType:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/PoiInfo;->strTypeName:Ljava/lang/String;

    iget-object v1, p1, LLBSAPIProtocol/PoiInfo;->strTypeName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/PoiInfo;->strAddress:Ljava/lang/String;

    iget-object v1, p1, LLBSAPIProtocol/PoiInfo;->strAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, LLBSAPIProtocol/PoiInfo;->lId:J

    iget-wide v2, p1, LLBSAPIProtocol/PoiInfo;->lId:J

    invoke-static {v0, v1, v2, v3}, Lcom/qq/taf/jce/JceUtil;->equals(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iDistrictCode:I

    iget v1, p1, LLBSAPIProtocol/PoiInfo;->iDistrictCode:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iLat:I

    iget v1, p1, LLBSAPIProtocol/PoiInfo;->iLat:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iLon:I

    iget v1, p1, LLBSAPIProtocol/PoiInfo;->iLon:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iDistance:I

    iget v1, p1, LLBSAPIProtocol/PoiInfo;->iDistance:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iHotValue:I

    iget v1, p1, LLBSAPIProtocol/PoiInfo;->iHotValue:I

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

.method public getIDistance()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iDistance:I

    return v0
.end method

.method public getIDistrictCode()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iDistrictCode:I

    return v0
.end method

.method public getIHotValue()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iHotValue:I

    return v0
.end method

.method public getILat()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iLat:I

    return v0
.end method

.method public getILon()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iLon:I

    return v0
.end method

.method public getIType()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iType:I

    return v0
.end method

.method public getLId()J
    .locals 2

    iget-wide v0, p0, LLBSAPIProtocol/PoiInfo;->lId:J

    return-wide v0
.end method

.method public getStrAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/PoiInfo;->strAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getStrName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/PoiInfo;->strName:Ljava/lang/String;

    return-object v0
.end method

.method public getStrTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/PoiInfo;->strTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/PoiInfo;->setStrName(Ljava/lang/String;)V

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iType:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/PoiInfo;->setIType(I)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/PoiInfo;->setStrTypeName(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/PoiInfo;->setStrAddress(Ljava/lang/String;)V

    iget-wide v0, p0, LLBSAPIProtocol/PoiInfo;->lId:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(JIZ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, LLBSAPIProtocol/PoiInfo;->setLId(J)V

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iDistrictCode:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/PoiInfo;->setIDistrictCode(I)V

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iLat:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/PoiInfo;->setILat(I)V

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iLon:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/PoiInfo;->setILon(I)V

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iDistance:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/PoiInfo;->setIDistance(I)V

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iHotValue:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/PoiInfo;->setIHotValue(I)V

    return-void
.end method

.method public setIDistance(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/PoiInfo;->iDistance:I

    return-void
.end method

.method public setIDistrictCode(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/PoiInfo;->iDistrictCode:I

    return-void
.end method

.method public setIHotValue(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/PoiInfo;->iHotValue:I

    return-void
.end method

.method public setILat(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/PoiInfo;->iLat:I

    return-void
.end method

.method public setILon(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/PoiInfo;->iLon:I

    return-void
.end method

.method public setIType(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/PoiInfo;->iType:I

    return-void
.end method

.method public setLId(J)V
    .locals 0

    iput-wide p1, p0, LLBSAPIProtocol/PoiInfo;->lId:J

    return-void
.end method

.method public setStrAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/PoiInfo;->strAddress:Ljava/lang/String;

    return-void
.end method

.method public setStrName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/PoiInfo;->strName:Ljava/lang/String;

    return-void
.end method

.method public setStrTypeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/PoiInfo;->strTypeName:Ljava/lang/String;

    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 3

    iget-object v0, p0, LLBSAPIProtocol/PoiInfo;->strName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iType:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LLBSAPIProtocol/PoiInfo;->strTypeName:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LLBSAPIProtocol/PoiInfo;->strAddress:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-wide v0, p0, LLBSAPIProtocol/PoiInfo;->lId:J

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceOutputStream;->write(JI)V

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iDistrictCode:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iLat:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iLon:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iDistance:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LLBSAPIProtocol/PoiInfo;->iHotValue:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method

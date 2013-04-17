.class public final LLBSAPIProtocol/ReqGetPoiList;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_eSortMethod:I

.field static cache_stGps:LLBSAPIProtocol/GPS;

.field static cache_vCells:Ljava/util/ArrayList;

.field static cache_vMacs:Ljava/util/ArrayList;

.field static cache_vMeasures:Ljava/util/ArrayList;

.field static cache_vTypes:Ljava/util/ArrayList;


# instance fields
.field public eSortMethod:I

.field public iBeginPos:I

.field public iRadius:I

.field public iReqNum:I

.field public stGps:LLBSAPIProtocol/GPS;

.field public strAppUA:Ljava/lang/String;

.field public strImei:Ljava/lang/String;

.field public vCells:Ljava/util/ArrayList;

.field public vMacs:Ljava/util/ArrayList;

.field public vMeasures:Ljava/util/ArrayList;

.field public vTypes:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LLBSAPIProtocol/ReqGetPoiList;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LLBSAPIProtocol/ReqGetPoiList;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v1, p0, LLBSAPIProtocol/ReqGetPoiList;->stGps:LLBSAPIProtocol/GPS;

    iput-object v1, p0, LLBSAPIProtocol/ReqGetPoiList;->vMacs:Ljava/util/ArrayList;

    iput-object v1, p0, LLBSAPIProtocol/ReqGetPoiList;->vCells:Ljava/util/ArrayList;

    iput-object v1, p0, LLBSAPIProtocol/ReqGetPoiList;->vTypes:Ljava/util/ArrayList;

    const/16 v0, 0x64

    iput v0, p0, LLBSAPIProtocol/ReqGetPoiList;->iRadius:I

    iput v2, p0, LLBSAPIProtocol/ReqGetPoiList;->iBeginPos:I

    const/16 v0, 0xa

    iput v0, p0, LLBSAPIProtocol/ReqGetPoiList;->iReqNum:I

    iput v2, p0, LLBSAPIProtocol/ReqGetPoiList;->eSortMethod:I

    iput-object v1, p0, LLBSAPIProtocol/ReqGetPoiList;->vMeasures:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->strAppUA:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->strImei:Ljava/lang/String;

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->stGps:LLBSAPIProtocol/GPS;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPoiList;->setStGps(LLBSAPIProtocol/GPS;)V

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->vMacs:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPoiList;->setVMacs(Ljava/util/ArrayList;)V

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->vCells:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPoiList;->setVCells(Ljava/util/ArrayList;)V

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->vTypes:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPoiList;->setVTypes(Ljava/util/ArrayList;)V

    iget v0, p0, LLBSAPIProtocol/ReqGetPoiList;->iRadius:I

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPoiList;->setIRadius(I)V

    iget v0, p0, LLBSAPIProtocol/ReqGetPoiList;->iBeginPos:I

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPoiList;->setIBeginPos(I)V

    iget v0, p0, LLBSAPIProtocol/ReqGetPoiList;->iReqNum:I

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPoiList;->setIReqNum(I)V

    iget v0, p0, LLBSAPIProtocol/ReqGetPoiList;->eSortMethod:I

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPoiList;->setESortMethod(I)V

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->vMeasures:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPoiList;->setVMeasures(Ljava/util/ArrayList;)V

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->strAppUA:Ljava/lang/String;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPoiList;->setStrAppUA(Ljava/lang/String;)V

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->strImei:Ljava/lang/String;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPoiList;->setStrImei(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(LLBSAPIProtocol/GPS;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IIIILjava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v1, p0, LLBSAPIProtocol/ReqGetPoiList;->stGps:LLBSAPIProtocol/GPS;

    iput-object v1, p0, LLBSAPIProtocol/ReqGetPoiList;->vMacs:Ljava/util/ArrayList;

    iput-object v1, p0, LLBSAPIProtocol/ReqGetPoiList;->vCells:Ljava/util/ArrayList;

    iput-object v1, p0, LLBSAPIProtocol/ReqGetPoiList;->vTypes:Ljava/util/ArrayList;

    const/16 v0, 0x64

    iput v0, p0, LLBSAPIProtocol/ReqGetPoiList;->iRadius:I

    iput v2, p0, LLBSAPIProtocol/ReqGetPoiList;->iBeginPos:I

    const/16 v0, 0xa

    iput v0, p0, LLBSAPIProtocol/ReqGetPoiList;->iReqNum:I

    iput v2, p0, LLBSAPIProtocol/ReqGetPoiList;->eSortMethod:I

    iput-object v1, p0, LLBSAPIProtocol/ReqGetPoiList;->vMeasures:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->strAppUA:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->strImei:Ljava/lang/String;

    invoke-virtual {p0, p1}, LLBSAPIProtocol/ReqGetPoiList;->setStGps(LLBSAPIProtocol/GPS;)V

    invoke-virtual {p0, p2}, LLBSAPIProtocol/ReqGetPoiList;->setVMacs(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p3}, LLBSAPIProtocol/ReqGetPoiList;->setVCells(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p4}, LLBSAPIProtocol/ReqGetPoiList;->setVTypes(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p5}, LLBSAPIProtocol/ReqGetPoiList;->setIRadius(I)V

    invoke-virtual {p0, p6}, LLBSAPIProtocol/ReqGetPoiList;->setIBeginPos(I)V

    invoke-virtual {p0, p7}, LLBSAPIProtocol/ReqGetPoiList;->setIReqNum(I)V

    invoke-virtual {p0, p8}, LLBSAPIProtocol/ReqGetPoiList;->setESortMethod(I)V

    invoke-virtual {p0, p9}, LLBSAPIProtocol/ReqGetPoiList;->setVMeasures(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p10}, LLBSAPIProtocol/ReqGetPoiList;->setStrAppUA(Ljava/lang/String;)V

    invoke-virtual {p0, p11}, LLBSAPIProtocol/ReqGetPoiList;->setStrImei(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public className()Ljava/lang/String;
    .locals 1

    const-string v0, "LBSAPIProtocol.ReqGetPoiList"

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

    sget-boolean v1, LLBSAPIProtocol/ReqGetPoiList;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LLBSAPIProtocol/ReqGetPoiList;->stGps:LLBSAPIProtocol/GPS;

    const-string v2, "stGps"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/ReqGetPoiList;->vMacs:Ljava/util/ArrayList;

    const-string v2, "vMacs"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/ReqGetPoiList;->vCells:Ljava/util/ArrayList;

    const-string v2, "vCells"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/ReqGetPoiList;->vTypes:Ljava/util/ArrayList;

    const-string v2, "vTypes"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LLBSAPIProtocol/ReqGetPoiList;->iRadius:I

    const-string v2, "iRadius"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LLBSAPIProtocol/ReqGetPoiList;->iBeginPos:I

    const-string v2, "iBeginPos"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LLBSAPIProtocol/ReqGetPoiList;->iReqNum:I

    const-string v2, "iReqNum"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LLBSAPIProtocol/ReqGetPoiList;->eSortMethod:I

    const-string v2, "eSortMethod"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/ReqGetPoiList;->vMeasures:Ljava/util/ArrayList;

    const-string v2, "vMeasures"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/ReqGetPoiList;->strAppUA:Ljava/lang/String;

    const-string v2, "strAppUA"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LLBSAPIProtocol/ReqGetPoiList;->strImei:Ljava/lang/String;

    const-string v2, "strImei"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LLBSAPIProtocol/ReqGetPoiList;

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->stGps:LLBSAPIProtocol/GPS;

    iget-object v1, p1, LLBSAPIProtocol/ReqGetPoiList;->stGps:LLBSAPIProtocol/GPS;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->vMacs:Ljava/util/ArrayList;

    iget-object v1, p1, LLBSAPIProtocol/ReqGetPoiList;->vMacs:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->vCells:Ljava/util/ArrayList;

    iget-object v1, p1, LLBSAPIProtocol/ReqGetPoiList;->vCells:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->vTypes:Ljava/util/ArrayList;

    iget-object v1, p1, LLBSAPIProtocol/ReqGetPoiList;->vTypes:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LLBSAPIProtocol/ReqGetPoiList;->iRadius:I

    iget v1, p1, LLBSAPIProtocol/ReqGetPoiList;->iRadius:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LLBSAPIProtocol/ReqGetPoiList;->iBeginPos:I

    iget v1, p1, LLBSAPIProtocol/ReqGetPoiList;->iBeginPos:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LLBSAPIProtocol/ReqGetPoiList;->iReqNum:I

    iget v1, p1, LLBSAPIProtocol/ReqGetPoiList;->iReqNum:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LLBSAPIProtocol/ReqGetPoiList;->eSortMethod:I

    iget v1, p1, LLBSAPIProtocol/ReqGetPoiList;->eSortMethod:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->vMeasures:Ljava/util/ArrayList;

    iget-object v1, p1, LLBSAPIProtocol/ReqGetPoiList;->vMeasures:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->strAppUA:Ljava/lang/String;

    iget-object v1, p1, LLBSAPIProtocol/ReqGetPoiList;->strAppUA:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->strImei:Ljava/lang/String;

    iget-object v1, p1, LLBSAPIProtocol/ReqGetPoiList;->strImei:Ljava/lang/String;

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

.method public getESortMethod()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/ReqGetPoiList;->eSortMethod:I

    return v0
.end method

.method public getIBeginPos()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/ReqGetPoiList;->iBeginPos:I

    return v0
.end method

.method public getIRadius()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/ReqGetPoiList;->iRadius:I

    return v0
.end method

.method public getIReqNum()I
    .locals 1

    iget v0, p0, LLBSAPIProtocol/ReqGetPoiList;->iReqNum:I

    return v0
.end method

.method public getStGps()LLBSAPIProtocol/GPS;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->stGps:LLBSAPIProtocol/GPS;

    return-object v0
.end method

.method public getStrAppUA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->strAppUA:Ljava/lang/String;

    return-object v0
.end method

.method public getStrImei()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->strImei:Ljava/lang/String;

    return-object v0
.end method

.method public getVCells()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->vCells:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVMacs()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->vMacs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVMeasures()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->vMeasures:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVTypes()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->vTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, LLBSAPIProtocol/ReqGetPoiList;->cache_stGps:LLBSAPIProtocol/GPS;

    if-nez v0, :cond_0

    new-instance v0, LLBSAPIProtocol/GPS;

    invoke-direct {v0}, LLBSAPIProtocol/GPS;-><init>()V

    sput-object v0, LLBSAPIProtocol/ReqGetPoiList;->cache_stGps:LLBSAPIProtocol/GPS;

    :cond_0
    sget-object v0, LLBSAPIProtocol/ReqGetPoiList;->cache_stGps:LLBSAPIProtocol/GPS;

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LLBSAPIProtocol/GPS;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPoiList;->setStGps(LLBSAPIProtocol/GPS;)V

    sget-object v0, LLBSAPIProtocol/ReqGetPoiList;->cache_vMacs:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LLBSAPIProtocol/ReqGetPoiList;->cache_vMacs:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, LLBSAPIProtocol/ReqGetPoiList;->cache_vMacs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, LLBSAPIProtocol/ReqGetPoiList;->cache_vMacs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPoiList;->setVMacs(Ljava/util/ArrayList;)V

    sget-object v0, LLBSAPIProtocol/ReqGetPoiList;->cache_vCells:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LLBSAPIProtocol/ReqGetPoiList;->cache_vCells:Ljava/util/ArrayList;

    new-instance v0, LLBSAPIProtocol/Cell;

    invoke-direct {v0}, LLBSAPIProtocol/Cell;-><init>()V

    sget-object v1, LLBSAPIProtocol/ReqGetPoiList;->cache_vCells:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    sget-object v0, LLBSAPIProtocol/ReqGetPoiList;->cache_vCells:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPoiList;->setVCells(Ljava/util/ArrayList;)V

    sget-object v0, LLBSAPIProtocol/ReqGetPoiList;->cache_vTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LLBSAPIProtocol/ReqGetPoiList;->cache_vTypes:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, LLBSAPIProtocol/ReqGetPoiList;->cache_vTypes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v0, LLBSAPIProtocol/ReqGetPoiList;->cache_vTypes:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPoiList;->setVTypes(Ljava/util/ArrayList;)V

    iget v0, p0, LLBSAPIProtocol/ReqGetPoiList;->iRadius:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPoiList;->setIRadius(I)V

    iget v0, p0, LLBSAPIProtocol/ReqGetPoiList;->iBeginPos:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPoiList;->setIBeginPos(I)V

    iget v0, p0, LLBSAPIProtocol/ReqGetPoiList;->iReqNum:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPoiList;->setIReqNum(I)V

    iget v0, p0, LLBSAPIProtocol/ReqGetPoiList;->eSortMethod:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPoiList;->setESortMethod(I)V

    sget-object v0, LLBSAPIProtocol/ReqGetPoiList;->cache_vMeasures:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LLBSAPIProtocol/ReqGetPoiList;->cache_vMeasures:Ljava/util/ArrayList;

    new-instance v0, LLBSAPIProtocol/Measure;

    invoke-direct {v0}, LLBSAPIProtocol/Measure;-><init>()V

    sget-object v1, LLBSAPIProtocol/ReqGetPoiList;->cache_vMeasures:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    sget-object v0, LLBSAPIProtocol/ReqGetPoiList;->cache_vMeasures:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPoiList;->setVMeasures(Ljava/util/ArrayList;)V

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPoiList;->setStrAppUA(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LLBSAPIProtocol/ReqGetPoiList;->setStrImei(Ljava/lang/String;)V

    return-void
.end method

.method public setESortMethod(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/ReqGetPoiList;->eSortMethod:I

    return-void
.end method

.method public setIBeginPos(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/ReqGetPoiList;->iBeginPos:I

    return-void
.end method

.method public setIRadius(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/ReqGetPoiList;->iRadius:I

    return-void
.end method

.method public setIReqNum(I)V
    .locals 0

    iput p1, p0, LLBSAPIProtocol/ReqGetPoiList;->iReqNum:I

    return-void
.end method

.method public setStGps(LLBSAPIProtocol/GPS;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/ReqGetPoiList;->stGps:LLBSAPIProtocol/GPS;

    return-void
.end method

.method public setStrAppUA(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/ReqGetPoiList;->strAppUA:Ljava/lang/String;

    return-void
.end method

.method public setStrImei(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/ReqGetPoiList;->strImei:Ljava/lang/String;

    return-void
.end method

.method public setVCells(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/ReqGetPoiList;->vCells:Ljava/util/ArrayList;

    return-void
.end method

.method public setVMacs(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/ReqGetPoiList;->vMacs:Ljava/util/ArrayList;

    return-void
.end method

.method public setVMeasures(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/ReqGetPoiList;->vMeasures:Ljava/util/ArrayList;

    return-void
.end method

.method public setVTypes(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, LLBSAPIProtocol/ReqGetPoiList;->vTypes:Ljava/util/ArrayList;

    return-void
.end method

.method public writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->stGps:LLBSAPIProtocol/GPS;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->vMacs:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->vCells:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->vTypes:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    iget v0, p0, LLBSAPIProtocol/ReqGetPoiList;->iRadius:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LLBSAPIProtocol/ReqGetPoiList;->iBeginPos:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LLBSAPIProtocol/ReqGetPoiList;->iReqNum:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LLBSAPIProtocol/ReqGetPoiList;->eSortMethod:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->vMeasures:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->vMeasures:Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_0
    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->strAppUA:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->strAppUA:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->strImei:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LLBSAPIProtocol/ReqGetPoiList;->strImei:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_2
    return-void
.end method

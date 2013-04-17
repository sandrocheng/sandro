.class public final LWUPSYNC/InitReq;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_dataType:I

.field static cache_devInfo:LWUPSYNC/DevInf;

.field static cache_photoSpec:LWUPSYNC/PhotoSpec;

.field static cache_syncType:I

.field static cache_userInfo:LWUPSYNC/AccInfo;


# instance fields
.field public addCount:S

.field public dataType:I

.field public delCount:S

.field public devInfo:LWUPSYNC/DevInf;

.field public filter:Ljava/lang/String;

.field public groupSync:B

.field public lastAnchor:I

.field public maxCount:S

.field public maxSize:I

.field public mdfCount:S

.field public needPhoto:B

.field public nextAnchor:I

.field public photoSpec:LWUPSYNC/PhotoSpec;

.field public syncType:I

.field public totalCount:I

.field public userInfo:LWUPSYNC/AccInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LWUPSYNC/InitReq;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LWUPSYNC/InitReq;->$assertionsDisabled:Z

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

    iput-object v2, p0, LWUPSYNC/InitReq;->userInfo:LWUPSYNC/AccInfo;

    iput-object v2, p0, LWUPSYNC/InitReq;->devInfo:LWUPSYNC/DevInf;

    iput v1, p0, LWUPSYNC/InitReq;->dataType:I

    iput v1, p0, LWUPSYNC/InitReq;->syncType:I

    iput v1, p0, LWUPSYNC/InitReq;->lastAnchor:I

    iput v1, p0, LWUPSYNC/InitReq;->nextAnchor:I

    iput v1, p0, LWUPSYNC/InitReq;->maxSize:I

    iput-short v1, p0, LWUPSYNC/InitReq;->maxCount:S

    iput-byte v1, p0, LWUPSYNC/InitReq;->groupSync:B

    iput-byte v1, p0, LWUPSYNC/InitReq;->needPhoto:B

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/InitReq;->filter:Ljava/lang/String;

    iput-object v2, p0, LWUPSYNC/InitReq;->photoSpec:LWUPSYNC/PhotoSpec;

    iput-short v1, p0, LWUPSYNC/InitReq;->addCount:S

    iput-short v1, p0, LWUPSYNC/InitReq;->mdfCount:S

    iput-short v1, p0, LWUPSYNC/InitReq;->delCount:S

    iput v1, p0, LWUPSYNC/InitReq;->totalCount:I

    iget-object v0, p0, LWUPSYNC/InitReq;->userInfo:LWUPSYNC/AccInfo;

    invoke-virtual {p0, v0}, LWUPSYNC/InitReq;->setUserInfo(LWUPSYNC/AccInfo;)V

    iget-object v0, p0, LWUPSYNC/InitReq;->devInfo:LWUPSYNC/DevInf;

    invoke-virtual {p0, v0}, LWUPSYNC/InitReq;->setDevInfo(LWUPSYNC/DevInf;)V

    iget v0, p0, LWUPSYNC/InitReq;->dataType:I

    invoke-virtual {p0, v0}, LWUPSYNC/InitReq;->setDataType(I)V

    iget v0, p0, LWUPSYNC/InitReq;->syncType:I

    invoke-virtual {p0, v0}, LWUPSYNC/InitReq;->setSyncType(I)V

    iget v0, p0, LWUPSYNC/InitReq;->lastAnchor:I

    invoke-virtual {p0, v0}, LWUPSYNC/InitReq;->setLastAnchor(I)V

    iget v0, p0, LWUPSYNC/InitReq;->nextAnchor:I

    invoke-virtual {p0, v0}, LWUPSYNC/InitReq;->setNextAnchor(I)V

    iget v0, p0, LWUPSYNC/InitReq;->maxSize:I

    invoke-virtual {p0, v0}, LWUPSYNC/InitReq;->setMaxSize(I)V

    iget-short v0, p0, LWUPSYNC/InitReq;->maxCount:S

    invoke-virtual {p0, v0}, LWUPSYNC/InitReq;->setMaxCount(S)V

    iget-byte v0, p0, LWUPSYNC/InitReq;->groupSync:B

    invoke-virtual {p0, v0}, LWUPSYNC/InitReq;->setGroupSync(B)V

    iget-byte v0, p0, LWUPSYNC/InitReq;->needPhoto:B

    invoke-virtual {p0, v0}, LWUPSYNC/InitReq;->setNeedPhoto(B)V

    iget-object v0, p0, LWUPSYNC/InitReq;->filter:Ljava/lang/String;

    invoke-virtual {p0, v0}, LWUPSYNC/InitReq;->setFilter(Ljava/lang/String;)V

    iget-object v0, p0, LWUPSYNC/InitReq;->photoSpec:LWUPSYNC/PhotoSpec;

    invoke-virtual {p0, v0}, LWUPSYNC/InitReq;->setPhotoSpec(LWUPSYNC/PhotoSpec;)V

    iget-short v0, p0, LWUPSYNC/InitReq;->addCount:S

    invoke-virtual {p0, v0}, LWUPSYNC/InitReq;->setAddCount(S)V

    iget-short v0, p0, LWUPSYNC/InitReq;->mdfCount:S

    invoke-virtual {p0, v0}, LWUPSYNC/InitReq;->setMdfCount(S)V

    iget-short v0, p0, LWUPSYNC/InitReq;->delCount:S

    invoke-virtual {p0, v0}, LWUPSYNC/InitReq;->setDelCount(S)V

    iget v0, p0, LWUPSYNC/InitReq;->totalCount:I

    invoke-virtual {p0, v0}, LWUPSYNC/InitReq;->setTotalCount(I)V

    return-void
.end method

.method public constructor <init>(LWUPSYNC/AccInfo;LWUPSYNC/DevInf;IIIIISBBLjava/lang/String;LWUPSYNC/PhotoSpec;SSSI)V
    .locals 2

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, LWUPSYNC/InitReq;->userInfo:LWUPSYNC/AccInfo;

    const/4 v1, 0x0

    iput-object v1, p0, LWUPSYNC/InitReq;->devInfo:LWUPSYNC/DevInf;

    const/4 v1, 0x0

    iput v1, p0, LWUPSYNC/InitReq;->dataType:I

    const/4 v1, 0x0

    iput v1, p0, LWUPSYNC/InitReq;->syncType:I

    const/4 v1, 0x0

    iput v1, p0, LWUPSYNC/InitReq;->lastAnchor:I

    const/4 v1, 0x0

    iput v1, p0, LWUPSYNC/InitReq;->nextAnchor:I

    const/4 v1, 0x0

    iput v1, p0, LWUPSYNC/InitReq;->maxSize:I

    const/4 v1, 0x0

    iput-short v1, p0, LWUPSYNC/InitReq;->maxCount:S

    const/4 v1, 0x0

    iput-byte v1, p0, LWUPSYNC/InitReq;->groupSync:B

    const/4 v1, 0x0

    iput-byte v1, p0, LWUPSYNC/InitReq;->needPhoto:B

    const-string v1, ""

    iput-object v1, p0, LWUPSYNC/InitReq;->filter:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, LWUPSYNC/InitReq;->photoSpec:LWUPSYNC/PhotoSpec;

    const/4 v1, 0x0

    iput-short v1, p0, LWUPSYNC/InitReq;->addCount:S

    const/4 v1, 0x0

    iput-short v1, p0, LWUPSYNC/InitReq;->mdfCount:S

    const/4 v1, 0x0

    iput-short v1, p0, LWUPSYNC/InitReq;->delCount:S

    const/4 v1, 0x0

    iput v1, p0, LWUPSYNC/InitReq;->totalCount:I

    invoke-virtual {p0, p1}, LWUPSYNC/InitReq;->setUserInfo(LWUPSYNC/AccInfo;)V

    invoke-virtual {p0, p2}, LWUPSYNC/InitReq;->setDevInfo(LWUPSYNC/DevInf;)V

    invoke-virtual {p0, p3}, LWUPSYNC/InitReq;->setDataType(I)V

    invoke-virtual {p0, p4}, LWUPSYNC/InitReq;->setSyncType(I)V

    invoke-virtual {p0, p5}, LWUPSYNC/InitReq;->setLastAnchor(I)V

    invoke-virtual {p0, p6}, LWUPSYNC/InitReq;->setNextAnchor(I)V

    invoke-virtual {p0, p7}, LWUPSYNC/InitReq;->setMaxSize(I)V

    invoke-virtual {p0, p8}, LWUPSYNC/InitReq;->setMaxCount(S)V

    invoke-virtual {p0, p9}, LWUPSYNC/InitReq;->setGroupSync(B)V

    invoke-virtual {p0, p10}, LWUPSYNC/InitReq;->setNeedPhoto(B)V

    invoke-virtual {p0, p11}, LWUPSYNC/InitReq;->setFilter(Ljava/lang/String;)V

    invoke-virtual {p0, p12}, LWUPSYNC/InitReq;->setPhotoSpec(LWUPSYNC/PhotoSpec;)V

    invoke-virtual {p0, p13}, LWUPSYNC/InitReq;->setAddCount(S)V

    move/from16 v0, p14

    invoke-virtual {p0, v0}, LWUPSYNC/InitReq;->setMdfCount(S)V

    move/from16 v0, p15

    invoke-virtual {p0, v0}, LWUPSYNC/InitReq;->setDelCount(S)V

    move/from16 v0, p16

    invoke-virtual {p0, v0}, LWUPSYNC/InitReq;->setTotalCount(I)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "WUPSYNC.InitReq"

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

    sget-boolean v1, LWUPSYNC/InitReq;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LWUPSYNC/InitReq;->userInfo:LWUPSYNC/AccInfo;

    const-string v2, "userInfo"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LWUPSYNC/InitReq;->devInfo:LWUPSYNC/DevInf;

    const-string v2, "devInfo"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LWUPSYNC/InitReq;->dataType:I

    const-string v2, "dataType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LWUPSYNC/InitReq;->syncType:I

    const-string v2, "syncType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LWUPSYNC/InitReq;->lastAnchor:I

    const-string v2, "lastAnchor"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LWUPSYNC/InitReq;->nextAnchor:I

    const-string v2, "nextAnchor"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LWUPSYNC/InitReq;->maxSize:I

    const-string v2, "maxSize"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-short v1, p0, LWUPSYNC/InitReq;->maxCount:S

    const-string v2, "maxCount"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-byte v1, p0, LWUPSYNC/InitReq;->groupSync:B

    const-string v2, "groupSync"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-byte v1, p0, LWUPSYNC/InitReq;->needPhoto:B

    const-string v2, "needPhoto"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LWUPSYNC/InitReq;->filter:Ljava/lang/String;

    const-string v2, "filter"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LWUPSYNC/InitReq;->photoSpec:LWUPSYNC/PhotoSpec;

    const-string v2, "photoSpec"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-short v1, p0, LWUPSYNC/InitReq;->addCount:S

    const-string v2, "addCount"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-short v1, p0, LWUPSYNC/InitReq;->mdfCount:S

    const-string v2, "mdfCount"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-short v1, p0, LWUPSYNC/InitReq;->delCount:S

    const-string v2, "delCount"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LWUPSYNC/InitReq;->totalCount:I

    const-string v2, "totalCount"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LWUPSYNC/InitReq;

    iget-object v0, p0, LWUPSYNC/InitReq;->userInfo:LWUPSYNC/AccInfo;

    iget-object v1, p1, LWUPSYNC/InitReq;->userInfo:LWUPSYNC/AccInfo;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/InitReq;->devInfo:LWUPSYNC/DevInf;

    iget-object v1, p1, LWUPSYNC/InitReq;->devInfo:LWUPSYNC/DevInf;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LWUPSYNC/InitReq;->dataType:I

    iget v1, p1, LWUPSYNC/InitReq;->dataType:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LWUPSYNC/InitReq;->syncType:I

    iget v1, p1, LWUPSYNC/InitReq;->syncType:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LWUPSYNC/InitReq;->lastAnchor:I

    iget v1, p1, LWUPSYNC/InitReq;->lastAnchor:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LWUPSYNC/InitReq;->nextAnchor:I

    iget v1, p1, LWUPSYNC/InitReq;->nextAnchor:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LWUPSYNC/InitReq;->maxSize:I

    iget v1, p1, LWUPSYNC/InitReq;->maxSize:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-short v0, p0, LWUPSYNC/InitReq;->maxCount:S

    iget-short v1, p1, LWUPSYNC/InitReq;->maxCount:S

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p0, LWUPSYNC/InitReq;->groupSync:B

    iget-byte v1, p1, LWUPSYNC/InitReq;->groupSync:B

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(BB)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p0, LWUPSYNC/InitReq;->needPhoto:B

    iget-byte v1, p1, LWUPSYNC/InitReq;->needPhoto:B

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(BB)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/InitReq;->filter:Ljava/lang/String;

    iget-object v1, p1, LWUPSYNC/InitReq;->filter:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/InitReq;->photoSpec:LWUPSYNC/PhotoSpec;

    iget-object v1, p1, LWUPSYNC/InitReq;->photoSpec:LWUPSYNC/PhotoSpec;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-short v0, p0, LWUPSYNC/InitReq;->addCount:S

    iget-short v1, p1, LWUPSYNC/InitReq;->addCount:S

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-short v0, p0, LWUPSYNC/InitReq;->mdfCount:S

    iget-short v1, p1, LWUPSYNC/InitReq;->mdfCount:S

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-short v0, p0, LWUPSYNC/InitReq;->delCount:S

    iget-short v1, p1, LWUPSYNC/InitReq;->delCount:S

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LWUPSYNC/InitReq;->totalCount:I

    iget v1, p1, LWUPSYNC/InitReq;->totalCount:I

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

.method public final getAddCount()S
    .locals 1

    iget-short v0, p0, LWUPSYNC/InitReq;->addCount:S

    return v0
.end method

.method public final getDataType()I
    .locals 1

    iget v0, p0, LWUPSYNC/InitReq;->dataType:I

    return v0
.end method

.method public final getDelCount()S
    .locals 1

    iget-short v0, p0, LWUPSYNC/InitReq;->delCount:S

    return v0
.end method

.method public final getDevInfo()LWUPSYNC/DevInf;
    .locals 1

    iget-object v0, p0, LWUPSYNC/InitReq;->devInfo:LWUPSYNC/DevInf;

    return-object v0
.end method

.method public final getFilter()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LWUPSYNC/InitReq;->filter:Ljava/lang/String;

    return-object v0
.end method

.method public final getGroupSync()B
    .locals 1

    iget-byte v0, p0, LWUPSYNC/InitReq;->groupSync:B

    return v0
.end method

.method public final getLastAnchor()I
    .locals 1

    iget v0, p0, LWUPSYNC/InitReq;->lastAnchor:I

    return v0
.end method

.method public final getMaxCount()S
    .locals 1

    iget-short v0, p0, LWUPSYNC/InitReq;->maxCount:S

    return v0
.end method

.method public final getMaxSize()I
    .locals 1

    iget v0, p0, LWUPSYNC/InitReq;->maxSize:I

    return v0
.end method

.method public final getMdfCount()S
    .locals 1

    iget-short v0, p0, LWUPSYNC/InitReq;->mdfCount:S

    return v0
.end method

.method public final getNeedPhoto()B
    .locals 1

    iget-byte v0, p0, LWUPSYNC/InitReq;->needPhoto:B

    return v0
.end method

.method public final getNextAnchor()I
    .locals 1

    iget v0, p0, LWUPSYNC/InitReq;->nextAnchor:I

    return v0
.end method

.method public final getPhotoSpec()LWUPSYNC/PhotoSpec;
    .locals 1

    iget-object v0, p0, LWUPSYNC/InitReq;->photoSpec:LWUPSYNC/PhotoSpec;

    return-object v0
.end method

.method public final getSyncType()I
    .locals 1

    iget v0, p0, LWUPSYNC/InitReq;->syncType:I

    return v0
.end method

.method public final getTotalCount()I
    .locals 1

    iget v0, p0, LWUPSYNC/InitReq;->totalCount:I

    return v0
.end method

.method public final getUserInfo()LWUPSYNC/AccInfo;
    .locals 1

    iget-object v0, p0, LWUPSYNC/InitReq;->userInfo:LWUPSYNC/AccInfo;

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, LWUPSYNC/InitReq;->cache_userInfo:LWUPSYNC/AccInfo;

    if-nez v0, :cond_0

    new-instance v0, LWUPSYNC/AccInfo;

    invoke-direct {v0}, LWUPSYNC/AccInfo;-><init>()V

    sput-object v0, LWUPSYNC/InitReq;->cache_userInfo:LWUPSYNC/AccInfo;

    :cond_0
    sget-object v0, LWUPSYNC/InitReq;->cache_userInfo:LWUPSYNC/AccInfo;

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LWUPSYNC/AccInfo;

    iput-object v0, p0, LWUPSYNC/InitReq;->userInfo:LWUPSYNC/AccInfo;

    sget-object v0, LWUPSYNC/InitReq;->cache_devInfo:LWUPSYNC/DevInf;

    if-nez v0, :cond_1

    new-instance v0, LWUPSYNC/DevInf;

    invoke-direct {v0}, LWUPSYNC/DevInf;-><init>()V

    sput-object v0, LWUPSYNC/InitReq;->cache_devInfo:LWUPSYNC/DevInf;

    :cond_1
    sget-object v0, LWUPSYNC/InitReq;->cache_devInfo:LWUPSYNC/DevInf;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LWUPSYNC/DevInf;

    iput-object v0, p0, LWUPSYNC/InitReq;->devInfo:LWUPSYNC/DevInf;

    iget v0, p0, LWUPSYNC/InitReq;->dataType:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/InitReq;->dataType:I

    iget v0, p0, LWUPSYNC/InitReq;->syncType:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/InitReq;->syncType:I

    iget v0, p0, LWUPSYNC/InitReq;->lastAnchor:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/InitReq;->lastAnchor:I

    iget v0, p0, LWUPSYNC/InitReq;->nextAnchor:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/InitReq;->nextAnchor:I

    iget v0, p0, LWUPSYNC/InitReq;->maxSize:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/InitReq;->maxSize:I

    iget-short v0, p0, LWUPSYNC/InitReq;->maxCount:S

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/InitReq;->maxCount:S

    iget-byte v0, p0, LWUPSYNC/InitReq;->groupSync:B

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, LWUPSYNC/InitReq;->groupSync:B

    iget-byte v0, p0, LWUPSYNC/InitReq;->needPhoto:B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, LWUPSYNC/InitReq;->needPhoto:B

    const/16 v0, 0xa

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/InitReq;->filter:Ljava/lang/String;

    sget-object v0, LWUPSYNC/InitReq;->cache_photoSpec:LWUPSYNC/PhotoSpec;

    if-nez v0, :cond_2

    new-instance v0, LWUPSYNC/PhotoSpec;

    invoke-direct {v0}, LWUPSYNC/PhotoSpec;-><init>()V

    sput-object v0, LWUPSYNC/InitReq;->cache_photoSpec:LWUPSYNC/PhotoSpec;

    :cond_2
    sget-object v0, LWUPSYNC/InitReq;->cache_photoSpec:LWUPSYNC/PhotoSpec;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LWUPSYNC/PhotoSpec;

    iput-object v0, p0, LWUPSYNC/InitReq;->photoSpec:LWUPSYNC/PhotoSpec;

    iget-short v0, p0, LWUPSYNC/InitReq;->addCount:S

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/InitReq;->addCount:S

    iget-short v0, p0, LWUPSYNC/InitReq;->mdfCount:S

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/InitReq;->mdfCount:S

    iget-short v0, p0, LWUPSYNC/InitReq;->delCount:S

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/InitReq;->delCount:S

    iget v0, p0, LWUPSYNC/InitReq;->totalCount:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/InitReq;->totalCount:I

    return-void
.end method

.method public final setAddCount(S)V
    .locals 0

    iput-short p1, p0, LWUPSYNC/InitReq;->addCount:S

    return-void
.end method

.method public final setDataType(I)V
    .locals 0

    iput p1, p0, LWUPSYNC/InitReq;->dataType:I

    return-void
.end method

.method public final setDelCount(S)V
    .locals 0

    iput-short p1, p0, LWUPSYNC/InitReq;->delCount:S

    return-void
.end method

.method public final setDevInfo(LWUPSYNC/DevInf;)V
    .locals 0

    iput-object p1, p0, LWUPSYNC/InitReq;->devInfo:LWUPSYNC/DevInf;

    return-void
.end method

.method public final setFilter(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LWUPSYNC/InitReq;->filter:Ljava/lang/String;

    return-void
.end method

.method public final setGroupSync(B)V
    .locals 0

    iput-byte p1, p0, LWUPSYNC/InitReq;->groupSync:B

    return-void
.end method

.method public final setLastAnchor(I)V
    .locals 0

    iput p1, p0, LWUPSYNC/InitReq;->lastAnchor:I

    return-void
.end method

.method public final setMaxCount(S)V
    .locals 0

    iput-short p1, p0, LWUPSYNC/InitReq;->maxCount:S

    return-void
.end method

.method public final setMaxSize(I)V
    .locals 0

    iput p1, p0, LWUPSYNC/InitReq;->maxSize:I

    return-void
.end method

.method public final setMdfCount(S)V
    .locals 0

    iput-short p1, p0, LWUPSYNC/InitReq;->mdfCount:S

    return-void
.end method

.method public final setNeedPhoto(B)V
    .locals 0

    iput-byte p1, p0, LWUPSYNC/InitReq;->needPhoto:B

    return-void
.end method

.method public final setNextAnchor(I)V
    .locals 0

    iput p1, p0, LWUPSYNC/InitReq;->nextAnchor:I

    return-void
.end method

.method public final setPhotoSpec(LWUPSYNC/PhotoSpec;)V
    .locals 0

    iput-object p1, p0, LWUPSYNC/InitReq;->photoSpec:LWUPSYNC/PhotoSpec;

    return-void
.end method

.method public final setSyncType(I)V
    .locals 0

    iput p1, p0, LWUPSYNC/InitReq;->syncType:I

    return-void
.end method

.method public final setTotalCount(I)V
    .locals 0

    iput p1, p0, LWUPSYNC/InitReq;->totalCount:I

    return-void
.end method

.method public final setUserInfo(LWUPSYNC/AccInfo;)V
    .locals 0

    iput-object p1, p0, LWUPSYNC/InitReq;->userInfo:LWUPSYNC/AccInfo;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LWUPSYNC/InitReq;->userInfo:LWUPSYNC/AccInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LWUPSYNC/InitReq;->devInfo:LWUPSYNC/DevInf;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget v0, p0, LWUPSYNC/InitReq;->dataType:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LWUPSYNC/InitReq;->syncType:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LWUPSYNC/InitReq;->lastAnchor:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LWUPSYNC/InitReq;->nextAnchor:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LWUPSYNC/InitReq;->maxSize:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-short v0, p0, LWUPSYNC/InitReq;->maxCount:S

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-byte v0, p0, LWUPSYNC/InitReq;->groupSync:B

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    iget-byte v0, p0, LWUPSYNC/InitReq;->needPhoto:B

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    iget-object v0, p0, LWUPSYNC/InitReq;->filter:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/InitReq;->filter:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, LWUPSYNC/InitReq;->photoSpec:LWUPSYNC/PhotoSpec;

    if-eqz v0, :cond_1

    iget-object v0, p0, LWUPSYNC/InitReq;->photoSpec:LWUPSYNC/PhotoSpec;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    :cond_1
    iget-short v0, p0, LWUPSYNC/InitReq;->addCount:S

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-short v0, p0, LWUPSYNC/InitReq;->mdfCount:S

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-short v0, p0, LWUPSYNC/InitReq;->delCount:S

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget v0, p0, LWUPSYNC/InitReq;->totalCount:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method

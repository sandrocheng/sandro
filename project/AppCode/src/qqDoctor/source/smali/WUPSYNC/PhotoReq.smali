.class public final LWUPSYNC/PhotoReq;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_devInfo:LWUPSYNC/DevInf;

.field static cache_photoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LWUPSYNC/PhotoItem;",
            ">;"
        }
    .end annotation
.end field

.field static cache_photoSpec:LWUPSYNC/PhotoSpec;

.field static cache_syncType:I

.field static cache_userInfo:LWUPSYNC/AccInfo;


# instance fields
.field public devInfo:LWUPSYNC/DevInf;

.field public photoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LWUPSYNC/PhotoItem;",
            ">;"
        }
    .end annotation
.end field

.field public photoSpec:LWUPSYNC/PhotoSpec;

.field public syncType:I

.field public userInfo:LWUPSYNC/AccInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LWUPSYNC/PhotoReq;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LWUPSYNC/PhotoReq;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, LWUPSYNC/PhotoReq;->userInfo:LWUPSYNC/AccInfo;

    iput-object v0, p0, LWUPSYNC/PhotoReq;->devInfo:LWUPSYNC/DevInf;

    iput-object v0, p0, LWUPSYNC/PhotoReq;->photoSpec:LWUPSYNC/PhotoSpec;

    iput-object v0, p0, LWUPSYNC/PhotoReq;->photoList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/PhotoReq;->syncType:I

    iget-object v0, p0, LWUPSYNC/PhotoReq;->userInfo:LWUPSYNC/AccInfo;

    invoke-virtual {p0, v0}, LWUPSYNC/PhotoReq;->setUserInfo(LWUPSYNC/AccInfo;)V

    iget-object v0, p0, LWUPSYNC/PhotoReq;->devInfo:LWUPSYNC/DevInf;

    invoke-virtual {p0, v0}, LWUPSYNC/PhotoReq;->setDevInfo(LWUPSYNC/DevInf;)V

    iget-object v0, p0, LWUPSYNC/PhotoReq;->photoSpec:LWUPSYNC/PhotoSpec;

    invoke-virtual {p0, v0}, LWUPSYNC/PhotoReq;->setPhotoSpec(LWUPSYNC/PhotoSpec;)V

    iget-object v0, p0, LWUPSYNC/PhotoReq;->photoList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LWUPSYNC/PhotoReq;->setPhotoList(Ljava/util/ArrayList;)V

    iget v0, p0, LWUPSYNC/PhotoReq;->syncType:I

    invoke-virtual {p0, v0}, LWUPSYNC/PhotoReq;->setSyncType(I)V

    return-void
.end method

.method public constructor <init>(LWUPSYNC/AccInfo;LWUPSYNC/DevInf;LWUPSYNC/PhotoSpec;Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LWUPSYNC/AccInfo;",
            "LWUPSYNC/DevInf;",
            "LWUPSYNC/PhotoSpec;",
            "Ljava/util/ArrayList",
            "<",
            "LWUPSYNC/PhotoItem;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, LWUPSYNC/PhotoReq;->userInfo:LWUPSYNC/AccInfo;

    iput-object v0, p0, LWUPSYNC/PhotoReq;->devInfo:LWUPSYNC/DevInf;

    iput-object v0, p0, LWUPSYNC/PhotoReq;->photoSpec:LWUPSYNC/PhotoSpec;

    iput-object v0, p0, LWUPSYNC/PhotoReq;->photoList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/PhotoReq;->syncType:I

    invoke-virtual {p0, p1}, LWUPSYNC/PhotoReq;->setUserInfo(LWUPSYNC/AccInfo;)V

    invoke-virtual {p0, p2}, LWUPSYNC/PhotoReq;->setDevInfo(LWUPSYNC/DevInf;)V

    invoke-virtual {p0, p3}, LWUPSYNC/PhotoReq;->setPhotoSpec(LWUPSYNC/PhotoSpec;)V

    invoke-virtual {p0, p4}, LWUPSYNC/PhotoReq;->setPhotoList(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p5}, LWUPSYNC/PhotoReq;->setSyncType(I)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "WUPSYNC.PhotoReq"

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

    sget-boolean v1, LWUPSYNC/PhotoReq;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LWUPSYNC/PhotoReq;->userInfo:LWUPSYNC/AccInfo;

    const-string v2, "userInfo"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LWUPSYNC/PhotoReq;->devInfo:LWUPSYNC/DevInf;

    const-string v2, "devInfo"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LWUPSYNC/PhotoReq;->photoSpec:LWUPSYNC/PhotoSpec;

    const-string v2, "photoSpec"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LWUPSYNC/PhotoReq;->photoList:Ljava/util/ArrayList;

    const-string v2, "photoList"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LWUPSYNC/PhotoReq;->syncType:I

    const-string v2, "syncType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LWUPSYNC/PhotoReq;

    iget-object v0, p0, LWUPSYNC/PhotoReq;->userInfo:LWUPSYNC/AccInfo;

    iget-object v1, p1, LWUPSYNC/PhotoReq;->userInfo:LWUPSYNC/AccInfo;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/PhotoReq;->devInfo:LWUPSYNC/DevInf;

    iget-object v1, p1, LWUPSYNC/PhotoReq;->devInfo:LWUPSYNC/DevInf;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/PhotoReq;->photoSpec:LWUPSYNC/PhotoSpec;

    iget-object v1, p1, LWUPSYNC/PhotoReq;->photoSpec:LWUPSYNC/PhotoSpec;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/PhotoReq;->photoList:Ljava/util/ArrayList;

    iget-object v1, p1, LWUPSYNC/PhotoReq;->photoList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LWUPSYNC/PhotoReq;->syncType:I

    iget v1, p1, LWUPSYNC/PhotoReq;->syncType:I

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

.method public final getDevInfo()LWUPSYNC/DevInf;
    .locals 1

    iget-object v0, p0, LWUPSYNC/PhotoReq;->devInfo:LWUPSYNC/DevInf;

    return-object v0
.end method

.method public final getPhotoList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "LWUPSYNC/PhotoItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LWUPSYNC/PhotoReq;->photoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getPhotoSpec()LWUPSYNC/PhotoSpec;
    .locals 1

    iget-object v0, p0, LWUPSYNC/PhotoReq;->photoSpec:LWUPSYNC/PhotoSpec;

    return-object v0
.end method

.method public final getSyncType()I
    .locals 1

    iget v0, p0, LWUPSYNC/PhotoReq;->syncType:I

    return v0
.end method

.method public final getUserInfo()LWUPSYNC/AccInfo;
    .locals 1

    iget-object v0, p0, LWUPSYNC/PhotoReq;->userInfo:LWUPSYNC/AccInfo;

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, LWUPSYNC/PhotoReq;->cache_userInfo:LWUPSYNC/AccInfo;

    if-nez v0, :cond_0

    new-instance v0, LWUPSYNC/AccInfo;

    invoke-direct {v0}, LWUPSYNC/AccInfo;-><init>()V

    sput-object v0, LWUPSYNC/PhotoReq;->cache_userInfo:LWUPSYNC/AccInfo;

    :cond_0
    sget-object v0, LWUPSYNC/PhotoReq;->cache_userInfo:LWUPSYNC/AccInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LWUPSYNC/AccInfo;

    iput-object v0, p0, LWUPSYNC/PhotoReq;->userInfo:LWUPSYNC/AccInfo;

    sget-object v0, LWUPSYNC/PhotoReq;->cache_devInfo:LWUPSYNC/DevInf;

    if-nez v0, :cond_1

    new-instance v0, LWUPSYNC/DevInf;

    invoke-direct {v0}, LWUPSYNC/DevInf;-><init>()V

    sput-object v0, LWUPSYNC/PhotoReq;->cache_devInfo:LWUPSYNC/DevInf;

    :cond_1
    sget-object v0, LWUPSYNC/PhotoReq;->cache_devInfo:LWUPSYNC/DevInf;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LWUPSYNC/DevInf;

    iput-object v0, p0, LWUPSYNC/PhotoReq;->devInfo:LWUPSYNC/DevInf;

    sget-object v0, LWUPSYNC/PhotoReq;->cache_photoSpec:LWUPSYNC/PhotoSpec;

    if-nez v0, :cond_2

    new-instance v0, LWUPSYNC/PhotoSpec;

    invoke-direct {v0}, LWUPSYNC/PhotoSpec;-><init>()V

    sput-object v0, LWUPSYNC/PhotoReq;->cache_photoSpec:LWUPSYNC/PhotoSpec;

    :cond_2
    sget-object v0, LWUPSYNC/PhotoReq;->cache_photoSpec:LWUPSYNC/PhotoSpec;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LWUPSYNC/PhotoSpec;

    iput-object v0, p0, LWUPSYNC/PhotoReq;->photoSpec:LWUPSYNC/PhotoSpec;

    sget-object v0, LWUPSYNC/PhotoReq;->cache_photoList:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LWUPSYNC/PhotoReq;->cache_photoList:Ljava/util/ArrayList;

    new-instance v0, LWUPSYNC/PhotoItem;

    invoke-direct {v0}, LWUPSYNC/PhotoItem;-><init>()V

    sget-object v1, LWUPSYNC/PhotoReq;->cache_photoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v0, LWUPSYNC/PhotoReq;->cache_photoList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LWUPSYNC/PhotoReq;->setPhotoList(Ljava/util/ArrayList;)V

    iget v0, p0, LWUPSYNC/PhotoReq;->syncType:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LWUPSYNC/PhotoReq;->setSyncType(I)V

    return-void
.end method

.method public final setDevInfo(LWUPSYNC/DevInf;)V
    .locals 0

    iput-object p1, p0, LWUPSYNC/PhotoReq;->devInfo:LWUPSYNC/DevInf;

    return-void
.end method

.method public final setPhotoList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LWUPSYNC/PhotoItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LWUPSYNC/PhotoReq;->photoList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setPhotoSpec(LWUPSYNC/PhotoSpec;)V
    .locals 0

    iput-object p1, p0, LWUPSYNC/PhotoReq;->photoSpec:LWUPSYNC/PhotoSpec;

    return-void
.end method

.method public final setSyncType(I)V
    .locals 0

    iput p1, p0, LWUPSYNC/PhotoReq;->syncType:I

    return-void
.end method

.method public final setUserInfo(LWUPSYNC/AccInfo;)V
    .locals 0

    iput-object p1, p0, LWUPSYNC/PhotoReq;->userInfo:LWUPSYNC/AccInfo;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LWUPSYNC/PhotoReq;->userInfo:LWUPSYNC/AccInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LWUPSYNC/PhotoReq;->devInfo:LWUPSYNC/DevInf;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LWUPSYNC/PhotoReq;->photoSpec:LWUPSYNC/PhotoSpec;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LWUPSYNC/PhotoReq;->photoList:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    iget v0, p0, LWUPSYNC/PhotoReq;->syncType:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method

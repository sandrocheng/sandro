.class public final LWUPSYNC/UploadResp;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_failList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LWUPSYNC/Status;",
            ">;"
        }
    .end annotation
.end field

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

.field static cache_result:I


# instance fields
.field public addCount:S

.field public delCount:S

.field public failList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LWUPSYNC/Status;",
            ">;"
        }
    .end annotation
.end field

.field public mdfCount:S

.field public mergeCount:S

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

.field public result:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LWUPSYNC/UploadResp;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LWUPSYNC/UploadResp;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v0, p0, LWUPSYNC/UploadResp;->result:I

    iput-short v0, p0, LWUPSYNC/UploadResp;->addCount:S

    iput-short v0, p0, LWUPSYNC/UploadResp;->mdfCount:S

    iput-short v0, p0, LWUPSYNC/UploadResp;->delCount:S

    iput-short v0, p0, LWUPSYNC/UploadResp;->mergeCount:S

    iput-object v1, p0, LWUPSYNC/UploadResp;->failList:Ljava/util/ArrayList;

    iput-object v1, p0, LWUPSYNC/UploadResp;->photoList:Ljava/util/ArrayList;

    iget v0, p0, LWUPSYNC/UploadResp;->result:I

    invoke-virtual {p0, v0}, LWUPSYNC/UploadResp;->setResult(I)V

    iget-short v0, p0, LWUPSYNC/UploadResp;->addCount:S

    invoke-virtual {p0, v0}, LWUPSYNC/UploadResp;->setAddCount(S)V

    iget-short v0, p0, LWUPSYNC/UploadResp;->mdfCount:S

    invoke-virtual {p0, v0}, LWUPSYNC/UploadResp;->setMdfCount(S)V

    iget-short v0, p0, LWUPSYNC/UploadResp;->delCount:S

    invoke-virtual {p0, v0}, LWUPSYNC/UploadResp;->setDelCount(S)V

    iget-short v0, p0, LWUPSYNC/UploadResp;->mergeCount:S

    invoke-virtual {p0, v0}, LWUPSYNC/UploadResp;->setMergeCount(S)V

    iget-object v0, p0, LWUPSYNC/UploadResp;->failList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LWUPSYNC/UploadResp;->setFailList(Ljava/util/ArrayList;)V

    iget-object v0, p0, LWUPSYNC/UploadResp;->photoList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LWUPSYNC/UploadResp;->setPhotoList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(ISSSSLjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISSSS",
            "Ljava/util/ArrayList",
            "<",
            "LWUPSYNC/Status;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LWUPSYNC/PhotoItem;",
            ">;)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v0, p0, LWUPSYNC/UploadResp;->result:I

    iput-short v0, p0, LWUPSYNC/UploadResp;->addCount:S

    iput-short v0, p0, LWUPSYNC/UploadResp;->mdfCount:S

    iput-short v0, p0, LWUPSYNC/UploadResp;->delCount:S

    iput-short v0, p0, LWUPSYNC/UploadResp;->mergeCount:S

    iput-object v1, p0, LWUPSYNC/UploadResp;->failList:Ljava/util/ArrayList;

    iput-object v1, p0, LWUPSYNC/UploadResp;->photoList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, LWUPSYNC/UploadResp;->setResult(I)V

    invoke-virtual {p0, p2}, LWUPSYNC/UploadResp;->setAddCount(S)V

    invoke-virtual {p0, p3}, LWUPSYNC/UploadResp;->setMdfCount(S)V

    invoke-virtual {p0, p4}, LWUPSYNC/UploadResp;->setDelCount(S)V

    invoke-virtual {p0, p5}, LWUPSYNC/UploadResp;->setMergeCount(S)V

    invoke-virtual {p0, p6}, LWUPSYNC/UploadResp;->setFailList(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p7}, LWUPSYNC/UploadResp;->setPhotoList(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "WUPSYNC.UploadResp"

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

    sget-boolean v1, LWUPSYNC/UploadResp;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LWUPSYNC/UploadResp;->result:I

    const-string v2, "result"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-short v1, p0, LWUPSYNC/UploadResp;->addCount:S

    const-string v2, "addCount"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-short v1, p0, LWUPSYNC/UploadResp;->mdfCount:S

    const-string v2, "mdfCount"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-short v1, p0, LWUPSYNC/UploadResp;->delCount:S

    const-string v2, "delCount"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-short v1, p0, LWUPSYNC/UploadResp;->mergeCount:S

    const-string v2, "mergeCount"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LWUPSYNC/UploadResp;->failList:Ljava/util/ArrayList;

    const-string v2, "failList"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LWUPSYNC/UploadResp;->photoList:Ljava/util/ArrayList;

    const-string v2, "photoList"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LWUPSYNC/UploadResp;

    iget v0, p0, LWUPSYNC/UploadResp;->result:I

    iget v1, p1, LWUPSYNC/UploadResp;->result:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-short v0, p0, LWUPSYNC/UploadResp;->addCount:S

    iget-short v1, p1, LWUPSYNC/UploadResp;->addCount:S

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-short v0, p0, LWUPSYNC/UploadResp;->mdfCount:S

    iget-short v1, p1, LWUPSYNC/UploadResp;->mdfCount:S

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-short v0, p0, LWUPSYNC/UploadResp;->delCount:S

    iget-short v1, p1, LWUPSYNC/UploadResp;->delCount:S

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-short v0, p0, LWUPSYNC/UploadResp;->mergeCount:S

    iget-short v1, p1, LWUPSYNC/UploadResp;->mergeCount:S

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/UploadResp;->failList:Ljava/util/ArrayList;

    iget-object v1, p1, LWUPSYNC/UploadResp;->failList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/UploadResp;->photoList:Ljava/util/ArrayList;

    iget-object v1, p1, LWUPSYNC/UploadResp;->photoList:Ljava/util/ArrayList;

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

.method public final getAddCount()S
    .locals 1

    iget-short v0, p0, LWUPSYNC/UploadResp;->addCount:S

    return v0
.end method

.method public final getDelCount()S
    .locals 1

    iget-short v0, p0, LWUPSYNC/UploadResp;->delCount:S

    return v0
.end method

.method public final getFailList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "LWUPSYNC/Status;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LWUPSYNC/UploadResp;->failList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getMdfCount()S
    .locals 1

    iget-short v0, p0, LWUPSYNC/UploadResp;->mdfCount:S

    return v0
.end method

.method public final getMergeCount()S
    .locals 1

    iget-short v0, p0, LWUPSYNC/UploadResp;->mergeCount:S

    return v0
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

    iget-object v0, p0, LWUPSYNC/UploadResp;->photoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getResult()I
    .locals 1

    iget v0, p0, LWUPSYNC/UploadResp;->result:I

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget v0, p0, LWUPSYNC/UploadResp;->result:I

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/UploadResp;->result:I

    iget-short v0, p0, LWUPSYNC/UploadResp;->addCount:S

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/UploadResp;->addCount:S

    iget-short v0, p0, LWUPSYNC/UploadResp;->mdfCount:S

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/UploadResp;->mdfCount:S

    iget-short v0, p0, LWUPSYNC/UploadResp;->delCount:S

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/UploadResp;->delCount:S

    iget-short v0, p0, LWUPSYNC/UploadResp;->mergeCount:S

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/UploadResp;->mergeCount:S

    sget-object v0, LWUPSYNC/UploadResp;->cache_failList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LWUPSYNC/UploadResp;->cache_failList:Ljava/util/ArrayList;

    new-instance v0, LWUPSYNC/Status;

    invoke-direct {v0}, LWUPSYNC/Status;-><init>()V

    sget-object v1, LWUPSYNC/UploadResp;->cache_failList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, LWUPSYNC/UploadResp;->cache_failList:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LWUPSYNC/UploadResp;->setFailList(Ljava/util/ArrayList;)V

    sget-object v0, LWUPSYNC/UploadResp;->cache_photoList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LWUPSYNC/UploadResp;->cache_photoList:Ljava/util/ArrayList;

    new-instance v0, LWUPSYNC/PhotoItem;

    invoke-direct {v0}, LWUPSYNC/PhotoItem;-><init>()V

    sget-object v1, LWUPSYNC/UploadResp;->cache_photoList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, LWUPSYNC/UploadResp;->cache_photoList:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LWUPSYNC/UploadResp;->setPhotoList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final setAddCount(S)V
    .locals 0

    iput-short p1, p0, LWUPSYNC/UploadResp;->addCount:S

    return-void
.end method

.method public final setDelCount(S)V
    .locals 0

    iput-short p1, p0, LWUPSYNC/UploadResp;->delCount:S

    return-void
.end method

.method public final setFailList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LWUPSYNC/Status;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LWUPSYNC/UploadResp;->failList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setMdfCount(S)V
    .locals 0

    iput-short p1, p0, LWUPSYNC/UploadResp;->mdfCount:S

    return-void
.end method

.method public final setMergeCount(S)V
    .locals 0

    iput-short p1, p0, LWUPSYNC/UploadResp;->mergeCount:S

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

    iput-object p1, p0, LWUPSYNC/UploadResp;->photoList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setResult(I)V
    .locals 0

    iput p1, p0, LWUPSYNC/UploadResp;->result:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LWUPSYNC/UploadResp;->result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-short v0, p0, LWUPSYNC/UploadResp;->addCount:S

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-short v0, p0, LWUPSYNC/UploadResp;->mdfCount:S

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-short v0, p0, LWUPSYNC/UploadResp;->delCount:S

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-short v0, p0, LWUPSYNC/UploadResp;->mergeCount:S

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget-object v0, p0, LWUPSYNC/UploadResp;->failList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/UploadResp;->failList:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_0
    iget-object v0, p0, LWUPSYNC/UploadResp;->photoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, LWUPSYNC/UploadResp;->photoList:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_1
    return-void
.end method

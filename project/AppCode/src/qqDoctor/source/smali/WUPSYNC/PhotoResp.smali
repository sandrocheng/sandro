.class public final LWUPSYNC/PhotoResp;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_needDownload:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LWUPSYNC/PhotoItem;",
            ">;"
        }
    .end annotation
.end field

.field static cache_needUpload:Ljava/util/ArrayList;
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
.field public needDownload:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LWUPSYNC/PhotoItem;",
            ">;"
        }
    .end annotation
.end field

.field public needUpload:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LWUPSYNC/PhotoItem;",
            ">;"
        }
    .end annotation
.end field

.field public pkgSize:I

.field public result:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LWUPSYNC/PhotoResp;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LWUPSYNC/PhotoResp;->$assertionsDisabled:Z

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

    iput v0, p0, LWUPSYNC/PhotoResp;->result:I

    iput-object v1, p0, LWUPSYNC/PhotoResp;->needUpload:Ljava/util/ArrayList;

    iput-object v1, p0, LWUPSYNC/PhotoResp;->needDownload:Ljava/util/ArrayList;

    iput v0, p0, LWUPSYNC/PhotoResp;->pkgSize:I

    iget v0, p0, LWUPSYNC/PhotoResp;->result:I

    invoke-virtual {p0, v0}, LWUPSYNC/PhotoResp;->setResult(I)V

    iget-object v0, p0, LWUPSYNC/PhotoResp;->needUpload:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LWUPSYNC/PhotoResp;->setNeedUpload(Ljava/util/ArrayList;)V

    iget-object v0, p0, LWUPSYNC/PhotoResp;->needDownload:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LWUPSYNC/PhotoResp;->setNeedDownload(Ljava/util/ArrayList;)V

    iget v0, p0, LWUPSYNC/PhotoResp;->pkgSize:I

    invoke-virtual {p0, v0}, LWUPSYNC/PhotoResp;->setPkgSize(I)V

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "LWUPSYNC/PhotoItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LWUPSYNC/PhotoItem;",
            ">;I)V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v0, p0, LWUPSYNC/PhotoResp;->result:I

    iput-object v1, p0, LWUPSYNC/PhotoResp;->needUpload:Ljava/util/ArrayList;

    iput-object v1, p0, LWUPSYNC/PhotoResp;->needDownload:Ljava/util/ArrayList;

    iput v0, p0, LWUPSYNC/PhotoResp;->pkgSize:I

    invoke-virtual {p0, p1}, LWUPSYNC/PhotoResp;->setResult(I)V

    invoke-virtual {p0, p2}, LWUPSYNC/PhotoResp;->setNeedUpload(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p3}, LWUPSYNC/PhotoResp;->setNeedDownload(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p4}, LWUPSYNC/PhotoResp;->setPkgSize(I)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "WUPSYNC.PhotoResp"

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

    sget-boolean v1, LWUPSYNC/PhotoResp;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LWUPSYNC/PhotoResp;->result:I

    const-string v2, "result"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LWUPSYNC/PhotoResp;->needUpload:Ljava/util/ArrayList;

    const-string v2, "needUpload"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LWUPSYNC/PhotoResp;->needDownload:Ljava/util/ArrayList;

    const-string v2, "needDownload"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LWUPSYNC/PhotoResp;->pkgSize:I

    const-string v2, "pkgSize"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LWUPSYNC/PhotoResp;

    iget v0, p0, LWUPSYNC/PhotoResp;->result:I

    iget v1, p1, LWUPSYNC/PhotoResp;->result:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/PhotoResp;->needUpload:Ljava/util/ArrayList;

    iget-object v1, p1, LWUPSYNC/PhotoResp;->needUpload:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/PhotoResp;->needDownload:Ljava/util/ArrayList;

    iget-object v1, p1, LWUPSYNC/PhotoResp;->needDownload:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LWUPSYNC/PhotoResp;->pkgSize:I

    iget v1, p1, LWUPSYNC/PhotoResp;->pkgSize:I

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

.method public final getNeedDownload()Ljava/util/ArrayList;
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

    iget-object v0, p0, LWUPSYNC/PhotoResp;->needDownload:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getNeedUpload()Ljava/util/ArrayList;
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

    iget-object v0, p0, LWUPSYNC/PhotoResp;->needUpload:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getPkgSize()I
    .locals 1

    iget v0, p0, LWUPSYNC/PhotoResp;->pkgSize:I

    return v0
.end method

.method public final getResult()I
    .locals 1

    iget v0, p0, LWUPSYNC/PhotoResp;->result:I

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, LWUPSYNC/PhotoResp;->result:I

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/PhotoResp;->result:I

    sget-object v0, LWUPSYNC/PhotoResp;->cache_needUpload:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LWUPSYNC/PhotoResp;->cache_needUpload:Ljava/util/ArrayList;

    new-instance v0, LWUPSYNC/PhotoItem;

    invoke-direct {v0}, LWUPSYNC/PhotoItem;-><init>()V

    sget-object v1, LWUPSYNC/PhotoResp;->cache_needUpload:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, LWUPSYNC/PhotoResp;->cache_needUpload:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LWUPSYNC/PhotoResp;->setNeedUpload(Ljava/util/ArrayList;)V

    sget-object v0, LWUPSYNC/PhotoResp;->cache_needDownload:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LWUPSYNC/PhotoResp;->cache_needDownload:Ljava/util/ArrayList;

    new-instance v0, LWUPSYNC/PhotoItem;

    invoke-direct {v0}, LWUPSYNC/PhotoItem;-><init>()V

    sget-object v1, LWUPSYNC/PhotoResp;->cache_needDownload:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, LWUPSYNC/PhotoResp;->cache_needDownload:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LWUPSYNC/PhotoResp;->setNeedDownload(Ljava/util/ArrayList;)V

    iget v0, p0, LWUPSYNC/PhotoResp;->pkgSize:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LWUPSYNC/PhotoResp;->setPkgSize(I)V

    return-void
.end method

.method public final setNeedDownload(Ljava/util/ArrayList;)V
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

    iput-object p1, p0, LWUPSYNC/PhotoResp;->needDownload:Ljava/util/ArrayList;

    return-void
.end method

.method public final setNeedUpload(Ljava/util/ArrayList;)V
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

    iput-object p1, p0, LWUPSYNC/PhotoResp;->needUpload:Ljava/util/ArrayList;

    return-void
.end method

.method public final setPkgSize(I)V
    .locals 0

    iput p1, p0, LWUPSYNC/PhotoResp;->pkgSize:I

    return-void
.end method

.method public final setResult(I)V
    .locals 0

    iput p1, p0, LWUPSYNC/PhotoResp;->result:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LWUPSYNC/PhotoResp;->result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LWUPSYNC/PhotoResp;->needUpload:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/PhotoResp;->needUpload:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_0
    iget-object v0, p0, LWUPSYNC/PhotoResp;->needDownload:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, LWUPSYNC/PhotoResp;->needDownload:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_1
    iget v0, p0, LWUPSYNC/PhotoResp;->pkgSize:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method

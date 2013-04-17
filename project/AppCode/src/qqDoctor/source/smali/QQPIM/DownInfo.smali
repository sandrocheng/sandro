.class public final LQQPIM/DownInfo;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_listDownSoftItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/DownSoftInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public listDownSoftItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/DownSoftInfo;",
            ">;"
        }
    .end annotation
.end field

.field public nGUID:I

.field public sQUA:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/DownInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/DownInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DownInfo;->sQUA:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/DownInfo;->nGUID:I

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/DownInfo;->listDownSoftItems:Ljava/util/ArrayList;

    iget-object v0, p0, LQQPIM/DownInfo;->sQUA:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/DownInfo;->setSQUA(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/DownInfo;->nGUID:I

    invoke-virtual {p0, v0}, LQQPIM/DownInfo;->setNGUID(I)V

    iget-object v0, p0, LQQPIM/DownInfo;->listDownSoftItems:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/DownInfo;->setListDownSoftItems(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/DownSoftInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DownInfo;->sQUA:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/DownInfo;->nGUID:I

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/DownInfo;->listDownSoftItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, LQQPIM/DownInfo;->setSQUA(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, LQQPIM/DownInfo;->setNGUID(I)V

    invoke-virtual {p0, p3}, LQQPIM/DownInfo;->setListDownSoftItems(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.DownInfo"

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

    sget-boolean v1, LQQPIM/DownInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/DownInfo;->sQUA:Ljava/lang/String;

    const-string v2, "sQUA"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/DownInfo;->nGUID:I

    const-string v2, "nGUID"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/DownInfo;->listDownSoftItems:Ljava/util/ArrayList;

    const-string v2, "listDownSoftItems"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, LQQPIM/DownInfo;

    iget-object v1, p0, LQQPIM/DownInfo;->sQUA:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/DownInfo;->sQUA:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/DownInfo;->nGUID:I

    iget v2, p1, LQQPIM/DownInfo;->nGUID:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/DownInfo;->listDownSoftItems:Ljava/util/ArrayList;

    iget-object v2, p1, LQQPIM/DownInfo;->listDownSoftItems:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.DownInfo"

    return-object v0
.end method

.method public final getListDownSoftItems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/DownSoftInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LQQPIM/DownInfo;->listDownSoftItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getNGUID()I
    .locals 1

    iget v0, p0, LQQPIM/DownInfo;->nGUID:I

    return v0
.end method

.method public final getSQUA()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/DownInfo;->sQUA:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/DownInfo;->sQUA:Ljava/lang/String;

    iget v0, p0, LQQPIM/DownInfo;->nGUID:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DownInfo;->nGUID:I

    sget-object v0, LQQPIM/DownInfo;->cache_listDownSoftItems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/DownInfo;->cache_listDownSoftItems:Ljava/util/ArrayList;

    new-instance v0, LQQPIM/DownSoftInfo;

    invoke-direct {v0}, LQQPIM/DownSoftInfo;-><init>()V

    sget-object v1, LQQPIM/DownInfo;->cache_listDownSoftItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, LQQPIM/DownInfo;->cache_listDownSoftItems:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/DownInfo;->setListDownSoftItems(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final setListDownSoftItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/DownSoftInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LQQPIM/DownInfo;->listDownSoftItems:Ljava/util/ArrayList;

    return-void
.end method

.method public final setNGUID(I)V
    .locals 0

    iput p1, p0, LQQPIM/DownInfo;->nGUID:I

    return-void
.end method

.method public final setSQUA(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/DownInfo;->sQUA:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/DownInfo;->sQUA:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LQQPIM/DownInfo;->nGUID:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/DownInfo;->listDownSoftItems:Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    return-void
.end method

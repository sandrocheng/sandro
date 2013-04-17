.class public final LQQPIM/STCloudOrderBak;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_vecCodeUpdate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/STQueryInfo;",
            ">;"
        }
    .end annotation
.end field

.field static cache_vecPort:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public nAct:I

.field public nFrequncy:I

.field public nTimeOut:I

.field public nTimes:I

.field public strTime:Ljava/lang/String;

.field public vecCodeUpdate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/STQueryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public vecPort:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/STCloudOrderBak;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/STCloudOrderBak;->$assertionsDisabled:Z

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

    iput v1, p0, LQQPIM/STCloudOrderBak;->nAct:I

    iput-object v2, p0, LQQPIM/STCloudOrderBak;->vecCodeUpdate:Ljava/util/ArrayList;

    iput v1, p0, LQQPIM/STCloudOrderBak;->nFrequncy:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STCloudOrderBak;->strTime:Ljava/lang/String;

    iput v1, p0, LQQPIM/STCloudOrderBak;->nTimes:I

    iput v1, p0, LQQPIM/STCloudOrderBak;->nTimeOut:I

    iput-object v2, p0, LQQPIM/STCloudOrderBak;->vecPort:Ljava/util/ArrayList;

    iget v0, p0, LQQPIM/STCloudOrderBak;->nAct:I

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderBak;->setNAct(I)V

    iget-object v0, p0, LQQPIM/STCloudOrderBak;->vecCodeUpdate:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderBak;->setVecCodeUpdate(Ljava/util/ArrayList;)V

    iget v0, p0, LQQPIM/STCloudOrderBak;->nFrequncy:I

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderBak;->setNFrequncy(I)V

    iget-object v0, p0, LQQPIM/STCloudOrderBak;->strTime:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderBak;->setStrTime(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/STCloudOrderBak;->nTimes:I

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderBak;->setNTimes(I)V

    iget v0, p0, LQQPIM/STCloudOrderBak;->nTimeOut:I

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderBak;->setNTimeOut(I)V

    iget-object v0, p0, LQQPIM/STCloudOrderBak;->vecPort:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderBak;->setVecPort(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;ILjava/lang/String;IILjava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/STQueryInfo;",
            ">;I",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LQQPIM/STCloudOrderBak;->nAct:I

    iput-object v2, p0, LQQPIM/STCloudOrderBak;->vecCodeUpdate:Ljava/util/ArrayList;

    iput v1, p0, LQQPIM/STCloudOrderBak;->nFrequncy:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/STCloudOrderBak;->strTime:Ljava/lang/String;

    iput v1, p0, LQQPIM/STCloudOrderBak;->nTimes:I

    iput v1, p0, LQQPIM/STCloudOrderBak;->nTimeOut:I

    iput-object v2, p0, LQQPIM/STCloudOrderBak;->vecPort:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, LQQPIM/STCloudOrderBak;->setNAct(I)V

    invoke-virtual {p0, p2}, LQQPIM/STCloudOrderBak;->setVecCodeUpdate(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p3}, LQQPIM/STCloudOrderBak;->setNFrequncy(I)V

    invoke-virtual {p0, p4}, LQQPIM/STCloudOrderBak;->setStrTime(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, LQQPIM/STCloudOrderBak;->setNTimes(I)V

    invoke-virtual {p0, p6}, LQQPIM/STCloudOrderBak;->setNTimeOut(I)V

    invoke-virtual {p0, p7}, LQQPIM/STCloudOrderBak;->setVecPort(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.STCloudOrderBak"

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

    sget-boolean v1, LQQPIM/STCloudOrderBak;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LQQPIM/STCloudOrderBak;->nAct:I

    const-string v2, "nAct"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STCloudOrderBak;->vecCodeUpdate:Ljava/util/ArrayList;

    const-string v2, "vecCodeUpdate"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/STCloudOrderBak;->nFrequncy:I

    const-string v2, "nFrequncy"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STCloudOrderBak;->strTime:Ljava/lang/String;

    const-string v2, "strTime"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/STCloudOrderBak;->nTimes:I

    const-string v2, "nTimes"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/STCloudOrderBak;->nTimeOut:I

    const-string v2, "nTimeOut"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/STCloudOrderBak;->vecPort:Ljava/util/ArrayList;

    const-string v2, "vecPort"

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
    check-cast p1, LQQPIM/STCloudOrderBak;

    iget v1, p0, LQQPIM/STCloudOrderBak;->nAct:I

    iget v2, p1, LQQPIM/STCloudOrderBak;->nAct:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STCloudOrderBak;->vecCodeUpdate:Ljava/util/ArrayList;

    iget-object v2, p1, LQQPIM/STCloudOrderBak;->vecCodeUpdate:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/STCloudOrderBak;->nFrequncy:I

    iget v2, p1, LQQPIM/STCloudOrderBak;->nFrequncy:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STCloudOrderBak;->strTime:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/STCloudOrderBak;->strTime:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/STCloudOrderBak;->nTimes:I

    iget v2, p1, LQQPIM/STCloudOrderBak;->nTimes:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/STCloudOrderBak;->nTimeOut:I

    iget v2, p1, LQQPIM/STCloudOrderBak;->nTimeOut:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/STCloudOrderBak;->vecPort:Ljava/util/ArrayList;

    iget-object v2, p1, LQQPIM/STCloudOrderBak;->vecPort:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.STCloudOrderBak"

    return-object v0
.end method

.method public final getNAct()I
    .locals 1

    iget v0, p0, LQQPIM/STCloudOrderBak;->nAct:I

    return v0
.end method

.method public final getNFrequncy()I
    .locals 1

    iget v0, p0, LQQPIM/STCloudOrderBak;->nFrequncy:I

    return v0
.end method

.method public final getNTimeOut()I
    .locals 1

    iget v0, p0, LQQPIM/STCloudOrderBak;->nTimeOut:I

    return v0
.end method

.method public final getNTimes()I
    .locals 1

    iget v0, p0, LQQPIM/STCloudOrderBak;->nTimes:I

    return v0
.end method

.method public final getStrTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/STCloudOrderBak;->strTime:Ljava/lang/String;

    return-object v0
.end method

.method public final getVecCodeUpdate()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/STQueryInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LQQPIM/STCloudOrderBak;->vecCodeUpdate:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getVecPort()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LQQPIM/STCloudOrderBak;->vecPort:Ljava/util/ArrayList;

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

    const/4 v2, 0x0

    iget v0, p0, LQQPIM/STCloudOrderBak;->nAct:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/STCloudOrderBak;->nAct:I

    sget-object v0, LQQPIM/STCloudOrderBak;->cache_vecCodeUpdate:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/STCloudOrderBak;->cache_vecCodeUpdate:Ljava/util/ArrayList;

    new-instance v0, LQQPIM/STQueryInfo;

    invoke-direct {v0}, LQQPIM/STQueryInfo;-><init>()V

    sget-object v1, LQQPIM/STCloudOrderBak;->cache_vecCodeUpdate:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, LQQPIM/STCloudOrderBak;->cache_vecCodeUpdate:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderBak;->setVecCodeUpdate(Ljava/util/ArrayList;)V

    iget v0, p0, LQQPIM/STCloudOrderBak;->nFrequncy:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderBak;->setNFrequncy(I)V

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderBak;->setStrTime(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/STCloudOrderBak;->nTimes:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderBak;->setNTimes(I)V

    iget v0, p0, LQQPIM/STCloudOrderBak;->nTimeOut:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderBak;->setNTimeOut(I)V

    sget-object v0, LQQPIM/STCloudOrderBak;->cache_vecPort:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/STCloudOrderBak;->cache_vecPort:Ljava/util/ArrayList;

    const-string v0, ""

    sget-object v1, LQQPIM/STCloudOrderBak;->cache_vecPort:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, LQQPIM/STCloudOrderBak;->cache_vecPort:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/STCloudOrderBak;->setVecPort(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final setNAct(I)V
    .locals 0

    iput p1, p0, LQQPIM/STCloudOrderBak;->nAct:I

    return-void
.end method

.method public final setNFrequncy(I)V
    .locals 0

    iput p1, p0, LQQPIM/STCloudOrderBak;->nFrequncy:I

    return-void
.end method

.method public final setNTimeOut(I)V
    .locals 0

    iput p1, p0, LQQPIM/STCloudOrderBak;->nTimeOut:I

    return-void
.end method

.method public final setNTimes(I)V
    .locals 0

    iput p1, p0, LQQPIM/STCloudOrderBak;->nTimes:I

    return-void
.end method

.method public final setStrTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/STCloudOrderBak;->strTime:Ljava/lang/String;

    return-void
.end method

.method public final setVecCodeUpdate(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/STQueryInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LQQPIM/STCloudOrderBak;->vecCodeUpdate:Ljava/util/ArrayList;

    return-void
.end method

.method public final setVecPort(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LQQPIM/STCloudOrderBak;->vecPort:Ljava/util/ArrayList;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LQQPIM/STCloudOrderBak;->nAct:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/STCloudOrderBak;->vecCodeUpdate:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/STCloudOrderBak;->vecCodeUpdate:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_0
    iget v0, p0, LQQPIM/STCloudOrderBak;->nFrequncy:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/STCloudOrderBak;->strTime:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/STCloudOrderBak;->strTime:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, LQQPIM/STCloudOrderBak;->nTimes:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/STCloudOrderBak;->nTimeOut:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/STCloudOrderBak;->vecPort:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, LQQPIM/STCloudOrderBak;->vecPort:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_2
    return-void
.end method

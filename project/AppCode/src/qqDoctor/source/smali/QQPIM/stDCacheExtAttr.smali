.class public final LQQPIM/stDCacheExtAttr;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_veclog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/stOpLogList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bindphone:Ljava/lang/String;

.field public changephone:Ljava/lang/String;

.field public chsimtime:I

.field public memo:Ljava/lang/String;

.field public urgentphone:Ljava/lang/String;

.field public useragent:Ljava/lang/String;

.field public veclog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/stOpLogList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/stDCacheExtAttr;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/stDCacheExtAttr;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/stDCacheExtAttr;->bindphone:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/stDCacheExtAttr;->changephone:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/stDCacheExtAttr;->memo:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/stDCacheExtAttr;->veclog:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/stDCacheExtAttr;->chsimtime:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/stDCacheExtAttr;->useragent:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/stDCacheExtAttr;->urgentphone:Ljava/lang/String;

    iget-object v0, p0, LQQPIM/stDCacheExtAttr;->bindphone:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/stDCacheExtAttr;->setBindphone(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/stDCacheExtAttr;->changephone:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/stDCacheExtAttr;->setChangephone(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/stDCacheExtAttr;->memo:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/stDCacheExtAttr;->setMemo(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/stDCacheExtAttr;->veclog:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/stDCacheExtAttr;->setVeclog(Ljava/util/ArrayList;)V

    iget v0, p0, LQQPIM/stDCacheExtAttr;->chsimtime:I

    invoke-virtual {p0, v0}, LQQPIM/stDCacheExtAttr;->setChsimtime(I)V

    iget-object v0, p0, LQQPIM/stDCacheExtAttr;->useragent:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/stDCacheExtAttr;->setUseragent(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/stDCacheExtAttr;->urgentphone:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/stDCacheExtAttr;->setUrgentphone(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/stOpLogList;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/stDCacheExtAttr;->bindphone:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/stDCacheExtAttr;->changephone:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/stDCacheExtAttr;->memo:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/stDCacheExtAttr;->veclog:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/stDCacheExtAttr;->chsimtime:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/stDCacheExtAttr;->useragent:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/stDCacheExtAttr;->urgentphone:Ljava/lang/String;

    invoke-virtual {p0, p1}, LQQPIM/stDCacheExtAttr;->setBindphone(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, LQQPIM/stDCacheExtAttr;->setChangephone(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LQQPIM/stDCacheExtAttr;->setMemo(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LQQPIM/stDCacheExtAttr;->setVeclog(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p5}, LQQPIM/stDCacheExtAttr;->setChsimtime(I)V

    invoke-virtual {p0, p6}, LQQPIM/stDCacheExtAttr;->setUseragent(Ljava/lang/String;)V

    invoke-virtual {p0, p7}, LQQPIM/stDCacheExtAttr;->setUrgentphone(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.stDCacheExtAttr"

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

    sget-boolean v1, LQQPIM/stDCacheExtAttr;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/stDCacheExtAttr;->bindphone:Ljava/lang/String;

    const-string v2, "bindphone"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/stDCacheExtAttr;->changephone:Ljava/lang/String;

    const-string v2, "changephone"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/stDCacheExtAttr;->memo:Ljava/lang/String;

    const-string v2, "memo"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/stDCacheExtAttr;->veclog:Ljava/util/ArrayList;

    const-string v2, "veclog"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/stDCacheExtAttr;->chsimtime:I

    const-string v2, "chsimtime"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/stDCacheExtAttr;->useragent:Ljava/lang/String;

    const-string v2, "useragent"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/stDCacheExtAttr;->urgentphone:Ljava/lang/String;

    const-string v2, "urgentphone"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

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
    check-cast p1, LQQPIM/stDCacheExtAttr;

    iget-object v1, p0, LQQPIM/stDCacheExtAttr;->bindphone:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/stDCacheExtAttr;->bindphone:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/stDCacheExtAttr;->changephone:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/stDCacheExtAttr;->changephone:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/stDCacheExtAttr;->memo:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/stDCacheExtAttr;->memo:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/stDCacheExtAttr;->veclog:Ljava/util/ArrayList;

    iget-object v2, p1, LQQPIM/stDCacheExtAttr;->veclog:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/stDCacheExtAttr;->chsimtime:I

    iget v2, p1, LQQPIM/stDCacheExtAttr;->chsimtime:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/stDCacheExtAttr;->useragent:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/stDCacheExtAttr;->useragent:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/stDCacheExtAttr;->urgentphone:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/stDCacheExtAttr;->urgentphone:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.stDCacheExtAttr"

    return-object v0
.end method

.method public final getBindphone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/stDCacheExtAttr;->bindphone:Ljava/lang/String;

    return-object v0
.end method

.method public final getChangephone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/stDCacheExtAttr;->changephone:Ljava/lang/String;

    return-object v0
.end method

.method public final getChsimtime()I
    .locals 1

    iget v0, p0, LQQPIM/stDCacheExtAttr;->chsimtime:I

    return v0
.end method

.method public final getMemo()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/stDCacheExtAttr;->memo:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrgentphone()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/stDCacheExtAttr;->urgentphone:Ljava/lang/String;

    return-object v0
.end method

.method public final getUseragent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/stDCacheExtAttr;->useragent:Ljava/lang/String;

    return-object v0
.end method

.method public final getVeclog()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/stOpLogList;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LQQPIM/stDCacheExtAttr;->veclog:Ljava/util/ArrayList;

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

    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/stDCacheExtAttr;->bindphone:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/stDCacheExtAttr;->changephone:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/stDCacheExtAttr;->memo:Ljava/lang/String;

    sget-object v0, LQQPIM/stDCacheExtAttr;->cache_veclog:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/stDCacheExtAttr;->cache_veclog:Ljava/util/ArrayList;

    new-instance v0, LQQPIM/stOpLogList;

    invoke-direct {v0}, LQQPIM/stOpLogList;-><init>()V

    sget-object v1, LQQPIM/stDCacheExtAttr;->cache_veclog:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, LQQPIM/stDCacheExtAttr;->cache_veclog:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/stDCacheExtAttr;->setVeclog(Ljava/util/ArrayList;)V

    iget v0, p0, LQQPIM/stDCacheExtAttr;->chsimtime:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/stDCacheExtAttr;->setChsimtime(I)V

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/stDCacheExtAttr;->setUseragent(Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/stDCacheExtAttr;->setUrgentphone(Ljava/lang/String;)V

    return-void
.end method

.method public final setBindphone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/stDCacheExtAttr;->bindphone:Ljava/lang/String;

    return-void
.end method

.method public final setChangephone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/stDCacheExtAttr;->changephone:Ljava/lang/String;

    return-void
.end method

.method public final setChsimtime(I)V
    .locals 0

    iput p1, p0, LQQPIM/stDCacheExtAttr;->chsimtime:I

    return-void
.end method

.method public final setMemo(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/stDCacheExtAttr;->memo:Ljava/lang/String;

    return-void
.end method

.method public final setUrgentphone(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/stDCacheExtAttr;->urgentphone:Ljava/lang/String;

    return-void
.end method

.method public final setUseragent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/stDCacheExtAttr;->useragent:Ljava/lang/String;

    return-void
.end method

.method public final setVeclog(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/stOpLogList;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LQQPIM/stDCacheExtAttr;->veclog:Ljava/util/ArrayList;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/stDCacheExtAttr;->bindphone:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/stDCacheExtAttr;->bindphone:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, LQQPIM/stDCacheExtAttr;->changephone:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/stDCacheExtAttr;->changephone:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, LQQPIM/stDCacheExtAttr;->memo:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LQQPIM/stDCacheExtAttr;->memo:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, LQQPIM/stDCacheExtAttr;->veclog:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, LQQPIM/stDCacheExtAttr;->veclog:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_3
    iget v0, p0, LQQPIM/stDCacheExtAttr;->chsimtime:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/stDCacheExtAttr;->useragent:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, LQQPIM/stDCacheExtAttr;->useragent:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_4
    iget-object v0, p0, LQQPIM/stDCacheExtAttr;->urgentphone:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, LQQPIM/stDCacheExtAttr;->urgentphone:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

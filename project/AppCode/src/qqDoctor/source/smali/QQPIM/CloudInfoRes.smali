.class public final LQQPIM/CloudInfoRes;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_cmdres:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/CloudCmdRes;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public action:I

.field public cmdres:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/CloudCmdRes;",
            ">;"
        }
    .end annotation
.end field

.field public confirmtype:I

.field public phase:I

.field public res:I

.field public time:I

.field public tipsid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/CloudInfoRes;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/CloudInfoRes;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/CloudInfoRes;->tipsid:Ljava/lang/String;

    iput v1, p0, LQQPIM/CloudInfoRes;->action:I

    iput v1, p0, LQQPIM/CloudInfoRes;->res:I

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/CloudInfoRes;->cmdres:Ljava/util/ArrayList;

    iput v1, p0, LQQPIM/CloudInfoRes;->phase:I

    iput v1, p0, LQQPIM/CloudInfoRes;->confirmtype:I

    iput v1, p0, LQQPIM/CloudInfoRes;->time:I

    iget-object v0, p0, LQQPIM/CloudInfoRes;->tipsid:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/CloudInfoRes;->setTipsid(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/CloudInfoRes;->action:I

    invoke-virtual {p0, v0}, LQQPIM/CloudInfoRes;->setAction(I)V

    iget v0, p0, LQQPIM/CloudInfoRes;->res:I

    invoke-virtual {p0, v0}, LQQPIM/CloudInfoRes;->setRes(I)V

    iget-object v0, p0, LQQPIM/CloudInfoRes;->cmdres:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/CloudInfoRes;->setCmdres(Ljava/util/ArrayList;)V

    iget v0, p0, LQQPIM/CloudInfoRes;->phase:I

    invoke-virtual {p0, v0}, LQQPIM/CloudInfoRes;->setPhase(I)V

    iget v0, p0, LQQPIM/CloudInfoRes;->confirmtype:I

    invoke-virtual {p0, v0}, LQQPIM/CloudInfoRes;->setConfirmtype(I)V

    iget v0, p0, LQQPIM/CloudInfoRes;->time:I

    invoke-virtual {p0, v0}, LQQPIM/CloudInfoRes;->setTime(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/util/ArrayList;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/CloudCmdRes;",
            ">;III)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/CloudInfoRes;->tipsid:Ljava/lang/String;

    iput v1, p0, LQQPIM/CloudInfoRes;->action:I

    iput v1, p0, LQQPIM/CloudInfoRes;->res:I

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/CloudInfoRes;->cmdres:Ljava/util/ArrayList;

    iput v1, p0, LQQPIM/CloudInfoRes;->phase:I

    iput v1, p0, LQQPIM/CloudInfoRes;->confirmtype:I

    iput v1, p0, LQQPIM/CloudInfoRes;->time:I

    invoke-virtual {p0, p1}, LQQPIM/CloudInfoRes;->setTipsid(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, LQQPIM/CloudInfoRes;->setAction(I)V

    invoke-virtual {p0, p3}, LQQPIM/CloudInfoRes;->setRes(I)V

    invoke-virtual {p0, p4}, LQQPIM/CloudInfoRes;->setCmdres(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p5}, LQQPIM/CloudInfoRes;->setPhase(I)V

    invoke-virtual {p0, p6}, LQQPIM/CloudInfoRes;->setConfirmtype(I)V

    invoke-virtual {p0, p7}, LQQPIM/CloudInfoRes;->setTime(I)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.CloudInfoRes"

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

    sget-boolean v1, LQQPIM/CloudInfoRes;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/CloudInfoRes;->tipsid:Ljava/lang/String;

    const-string v2, "tipsid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/CloudInfoRes;->action:I

    const-string v2, "action"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/CloudInfoRes;->res:I

    const-string v2, "res"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/CloudInfoRes;->cmdres:Ljava/util/ArrayList;

    const-string v2, "cmdres"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/CloudInfoRes;->phase:I

    const-string v2, "phase"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/CloudInfoRes;->confirmtype:I

    const-string v2, "confirmtype"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/CloudInfoRes;->time:I

    const-string v2, "time"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

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
    check-cast p1, LQQPIM/CloudInfoRes;

    iget-object v1, p0, LQQPIM/CloudInfoRes;->tipsid:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/CloudInfoRes;->tipsid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/CloudInfoRes;->action:I

    iget v2, p1, LQQPIM/CloudInfoRes;->action:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/CloudInfoRes;->res:I

    iget v2, p1, LQQPIM/CloudInfoRes;->res:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/CloudInfoRes;->cmdres:Ljava/util/ArrayList;

    iget-object v2, p1, LQQPIM/CloudInfoRes;->cmdres:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/CloudInfoRes;->phase:I

    iget v2, p1, LQQPIM/CloudInfoRes;->phase:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/CloudInfoRes;->confirmtype:I

    iget v2, p1, LQQPIM/CloudInfoRes;->confirmtype:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/CloudInfoRes;->time:I

    iget v2, p1, LQQPIM/CloudInfoRes;->time:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.CloudInfoRes"

    return-object v0
.end method

.method public final getAction()I
    .locals 1

    iget v0, p0, LQQPIM/CloudInfoRes;->action:I

    return v0
.end method

.method public final getCmdres()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/CloudCmdRes;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LQQPIM/CloudInfoRes;->cmdres:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getConfirmtype()I
    .locals 1

    iget v0, p0, LQQPIM/CloudInfoRes;->confirmtype:I

    return v0
.end method

.method public final getPhase()I
    .locals 1

    iget v0, p0, LQQPIM/CloudInfoRes;->phase:I

    return v0
.end method

.method public final getRes()I
    .locals 1

    iget v0, p0, LQQPIM/CloudInfoRes;->res:I

    return v0
.end method

.method public final getTime()I
    .locals 1

    iget v0, p0, LQQPIM/CloudInfoRes;->time:I

    return v0
.end method

.method public final getTipsid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/CloudInfoRes;->tipsid:Ljava/lang/String;

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
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/CloudInfoRes;->tipsid:Ljava/lang/String;

    iget v0, p0, LQQPIM/CloudInfoRes;->action:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/CloudInfoRes;->action:I

    iget v0, p0, LQQPIM/CloudInfoRes;->res:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/CloudInfoRes;->res:I

    sget-object v0, LQQPIM/CloudInfoRes;->cache_cmdres:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/CloudInfoRes;->cache_cmdres:Ljava/util/ArrayList;

    new-instance v0, LQQPIM/CloudCmdRes;

    invoke-direct {v0}, LQQPIM/CloudCmdRes;-><init>()V

    sget-object v1, LQQPIM/CloudInfoRes;->cache_cmdres:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, LQQPIM/CloudInfoRes;->cache_cmdres:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/CloudInfoRes;->setCmdres(Ljava/util/ArrayList;)V

    iget v0, p0, LQQPIM/CloudInfoRes;->phase:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/CloudInfoRes;->setPhase(I)V

    iget v0, p0, LQQPIM/CloudInfoRes;->confirmtype:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/CloudInfoRes;->setConfirmtype(I)V

    iget v0, p0, LQQPIM/CloudInfoRes;->time:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/CloudInfoRes;->setTime(I)V

    return-void
.end method

.method public final setAction(I)V
    .locals 0

    iput p1, p0, LQQPIM/CloudInfoRes;->action:I

    return-void
.end method

.method public final setCmdres(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/CloudCmdRes;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LQQPIM/CloudInfoRes;->cmdres:Ljava/util/ArrayList;

    return-void
.end method

.method public final setConfirmtype(I)V
    .locals 0

    iput p1, p0, LQQPIM/CloudInfoRes;->confirmtype:I

    return-void
.end method

.method public final setPhase(I)V
    .locals 0

    iput p1, p0, LQQPIM/CloudInfoRes;->phase:I

    return-void
.end method

.method public final setRes(I)V
    .locals 0

    iput p1, p0, LQQPIM/CloudInfoRes;->res:I

    return-void
.end method

.method public final setTime(I)V
    .locals 0

    iput p1, p0, LQQPIM/CloudInfoRes;->time:I

    return-void
.end method

.method public final setTipsid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/CloudInfoRes;->tipsid:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/CloudInfoRes;->tipsid:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LQQPIM/CloudInfoRes;->action:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/CloudInfoRes;->res:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/CloudInfoRes;->cmdres:Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    iget v0, p0, LQQPIM/CloudInfoRes;->phase:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/CloudInfoRes;->confirmtype:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/CloudInfoRes;->time:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method

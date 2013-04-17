.class public final LQQPIM/ServerUpdateInfo;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_action:I

.field static cache_time:I

.field static cache_type:I


# instance fields
.field public action:I

.field public message:Ljava/lang/String;

.field public nextcheckinterval:I

.field public time:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/ServerUpdateInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/ServerUpdateInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LQQPIM/ServerUpdateInfo;->action:I

    iput v1, p0, LQQPIM/ServerUpdateInfo;->type:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ServerUpdateInfo;->message:Ljava/lang/String;

    iput v1, p0, LQQPIM/ServerUpdateInfo;->time:I

    iput v1, p0, LQQPIM/ServerUpdateInfo;->nextcheckinterval:I

    iget v0, p0, LQQPIM/ServerUpdateInfo;->action:I

    invoke-virtual {p0, v0}, LQQPIM/ServerUpdateInfo;->setAction(I)V

    iget v0, p0, LQQPIM/ServerUpdateInfo;->type:I

    invoke-virtual {p0, v0}, LQQPIM/ServerUpdateInfo;->setType(I)V

    iget-object v0, p0, LQQPIM/ServerUpdateInfo;->message:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/ServerUpdateInfo;->setMessage(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/ServerUpdateInfo;->time:I

    invoke-virtual {p0, v0}, LQQPIM/ServerUpdateInfo;->setTime(I)V

    iget v0, p0, LQQPIM/ServerUpdateInfo;->nextcheckinterval:I

    invoke-virtual {p0, v0}, LQQPIM/ServerUpdateInfo;->setNextcheckinterval(I)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LQQPIM/ServerUpdateInfo;->action:I

    iput v1, p0, LQQPIM/ServerUpdateInfo;->type:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ServerUpdateInfo;->message:Ljava/lang/String;

    iput v1, p0, LQQPIM/ServerUpdateInfo;->time:I

    iput v1, p0, LQQPIM/ServerUpdateInfo;->nextcheckinterval:I

    invoke-virtual {p0, p1}, LQQPIM/ServerUpdateInfo;->setAction(I)V

    invoke-virtual {p0, p2}, LQQPIM/ServerUpdateInfo;->setType(I)V

    invoke-virtual {p0, p3}, LQQPIM/ServerUpdateInfo;->setMessage(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LQQPIM/ServerUpdateInfo;->setTime(I)V

    invoke-virtual {p0, p5}, LQQPIM/ServerUpdateInfo;->setNextcheckinterval(I)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.ServerUpdateInfo"

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

    sget-boolean v1, LQQPIM/ServerUpdateInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LQQPIM/ServerUpdateInfo;->action:I

    const-string v2, "action"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/ServerUpdateInfo;->type:I

    const-string v2, "type"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/ServerUpdateInfo;->message:Ljava/lang/String;

    const-string v2, "message"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/ServerUpdateInfo;->time:I

    const-string v2, "time"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/ServerUpdateInfo;->nextcheckinterval:I

    const-string v2, "nextcheckinterval"

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
    check-cast p1, LQQPIM/ServerUpdateInfo;

    iget v1, p0, LQQPIM/ServerUpdateInfo;->action:I

    iget v2, p1, LQQPIM/ServerUpdateInfo;->action:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/ServerUpdateInfo;->type:I

    iget v2, p1, LQQPIM/ServerUpdateInfo;->type:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/ServerUpdateInfo;->message:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/ServerUpdateInfo;->message:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/ServerUpdateInfo;->time:I

    iget v2, p1, LQQPIM/ServerUpdateInfo;->time:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/ServerUpdateInfo;->nextcheckinterval:I

    iget v2, p1, LQQPIM/ServerUpdateInfo;->nextcheckinterval:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.ServerUpdateInfo"

    return-object v0
.end method

.method public final getAction()I
    .locals 1

    iget v0, p0, LQQPIM/ServerUpdateInfo;->action:I

    return v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/ServerUpdateInfo;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getNextcheckinterval()I
    .locals 1

    iget v0, p0, LQQPIM/ServerUpdateInfo;->nextcheckinterval:I

    return v0
.end method

.method public final getTime()I
    .locals 1

    iget v0, p0, LQQPIM/ServerUpdateInfo;->time:I

    return v0
.end method

.method public final getType()I
    .locals 1

    iget v0, p0, LQQPIM/ServerUpdateInfo;->type:I

    return v0
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

    const/4 v1, 0x1

    iget v0, p0, LQQPIM/ServerUpdateInfo;->action:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/ServerUpdateInfo;->action:I

    iget v0, p0, LQQPIM/ServerUpdateInfo;->type:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/ServerUpdateInfo;->type:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/ServerUpdateInfo;->message:Ljava/lang/String;

    iget v0, p0, LQQPIM/ServerUpdateInfo;->time:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/ServerUpdateInfo;->time:I

    iget v0, p0, LQQPIM/ServerUpdateInfo;->nextcheckinterval:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/ServerUpdateInfo;->nextcheckinterval:I

    return-void
.end method

.method public final setAction(I)V
    .locals 0

    iput p1, p0, LQQPIM/ServerUpdateInfo;->action:I

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/ServerUpdateInfo;->message:Ljava/lang/String;

    return-void
.end method

.method public final setNextcheckinterval(I)V
    .locals 0

    iput p1, p0, LQQPIM/ServerUpdateInfo;->nextcheckinterval:I

    return-void
.end method

.method public final setTime(I)V
    .locals 0

    iput p1, p0, LQQPIM/ServerUpdateInfo;->time:I

    return-void
.end method

.method public final setType(I)V
    .locals 0

    iput p1, p0, LQQPIM/ServerUpdateInfo;->type:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LQQPIM/ServerUpdateInfo;->action:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/ServerUpdateInfo;->type:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/ServerUpdateInfo;->message:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LQQPIM/ServerUpdateInfo;->time:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/ServerUpdateInfo;->nextcheckinterval:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method

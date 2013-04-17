.class public final LQQPIM/MisssionRes;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_missions:LQQPIM/Missions;

.field static cache_rescode:LQQPIM/ResCode;


# instance fields
.field public missions:LQQPIM/Missions;

.field public rescode:LQQPIM/ResCode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/MisssionRes;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/MisssionRes;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, LQQPIM/MisssionRes;->rescode:LQQPIM/ResCode;

    iput-object v0, p0, LQQPIM/MisssionRes;->missions:LQQPIM/Missions;

    iget-object v0, p0, LQQPIM/MisssionRes;->rescode:LQQPIM/ResCode;

    invoke-virtual {p0, v0}, LQQPIM/MisssionRes;->setRescode(LQQPIM/ResCode;)V

    iget-object v0, p0, LQQPIM/MisssionRes;->missions:LQQPIM/Missions;

    invoke-virtual {p0, v0}, LQQPIM/MisssionRes;->setMissions(LQQPIM/Missions;)V

    return-void
.end method

.method public constructor <init>(LQQPIM/ResCode;LQQPIM/Missions;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, LQQPIM/MisssionRes;->rescode:LQQPIM/ResCode;

    iput-object v0, p0, LQQPIM/MisssionRes;->missions:LQQPIM/Missions;

    invoke-virtual {p0, p1}, LQQPIM/MisssionRes;->setRescode(LQQPIM/ResCode;)V

    invoke-virtual {p0, p2}, LQQPIM/MisssionRes;->setMissions(LQQPIM/Missions;)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.MisssionRes"

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

    sget-boolean v1, LQQPIM/MisssionRes;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/MisssionRes;->rescode:LQQPIM/ResCode;

    const-string v2, "rescode"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/MisssionRes;->missions:LQQPIM/Missions;

    const-string v2, "missions"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

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
    check-cast p1, LQQPIM/MisssionRes;

    iget-object v1, p0, LQQPIM/MisssionRes;->rescode:LQQPIM/ResCode;

    iget-object v2, p1, LQQPIM/MisssionRes;->rescode:LQQPIM/ResCode;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/MisssionRes;->missions:LQQPIM/Missions;

    iget-object v2, p1, LQQPIM/MisssionRes;->missions:LQQPIM/Missions;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.MisssionRes"

    return-object v0
.end method

.method public final getMissions()LQQPIM/Missions;
    .locals 1

    iget-object v0, p0, LQQPIM/MisssionRes;->missions:LQQPIM/Missions;

    return-object v0
.end method

.method public final getRescode()LQQPIM/ResCode;
    .locals 1

    iget-object v0, p0, LQQPIM/MisssionRes;->rescode:LQQPIM/ResCode;

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

    sget-object v0, LQQPIM/MisssionRes;->cache_rescode:LQQPIM/ResCode;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/ResCode;

    invoke-direct {v0}, LQQPIM/ResCode;-><init>()V

    sput-object v0, LQQPIM/MisssionRes;->cache_rescode:LQQPIM/ResCode;

    :cond_0
    sget-object v0, LQQPIM/MisssionRes;->cache_rescode:LQQPIM/ResCode;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LQQPIM/ResCode;

    iput-object v0, p0, LQQPIM/MisssionRes;->rescode:LQQPIM/ResCode;

    sget-object v0, LQQPIM/MisssionRes;->cache_missions:LQQPIM/Missions;

    if-nez v0, :cond_1

    new-instance v0, LQQPIM/Missions;

    invoke-direct {v0}, LQQPIM/Missions;-><init>()V

    sput-object v0, LQQPIM/MisssionRes;->cache_missions:LQQPIM/Missions;

    :cond_1
    sget-object v0, LQQPIM/MisssionRes;->cache_missions:LQQPIM/Missions;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LQQPIM/Missions;

    iput-object v0, p0, LQQPIM/MisssionRes;->missions:LQQPIM/Missions;

    return-void
.end method

.method public final setMissions(LQQPIM/Missions;)V
    .locals 0

    iput-object p1, p0, LQQPIM/MisssionRes;->missions:LQQPIM/Missions;

    return-void
.end method

.method public final setRescode(LQQPIM/ResCode;)V
    .locals 0

    iput-object p1, p0, LQQPIM/MisssionRes;->rescode:LQQPIM/ResCode;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/MisssionRes;->rescode:LQQPIM/ResCode;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LQQPIM/MisssionRes;->missions:LQQPIM/Missions;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    return-void
.end method

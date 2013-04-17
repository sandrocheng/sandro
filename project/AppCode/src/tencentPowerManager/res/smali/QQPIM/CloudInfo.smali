.class public final LQQPIM/CloudInfo;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_base:LQQPIM/BaseInfo;

.field static cache_cloudcmds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/CloudCmd;",
            ">;"
        }
    .end annotation
.end field

.field static cache_time:LQQPIM/TimeCtrl;

.field static cache_tips:LQQPIM/TipsInfo;


# instance fields
.field public base:LQQPIM/BaseInfo;

.field public cloudcmds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/CloudCmd;",
            ">;"
        }
    .end annotation
.end field

.field public time:LQQPIM/TimeCtrl;

.field public tips:LQQPIM/TipsInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/CloudInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/CloudInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, LQQPIM/CloudInfo;->base:LQQPIM/BaseInfo;

    iput-object v0, p0, LQQPIM/CloudInfo;->time:LQQPIM/TimeCtrl;

    iput-object v0, p0, LQQPIM/CloudInfo;->tips:LQQPIM/TipsInfo;

    iput-object v0, p0, LQQPIM/CloudInfo;->cloudcmds:Ljava/util/ArrayList;

    iget-object v0, p0, LQQPIM/CloudInfo;->base:LQQPIM/BaseInfo;

    invoke-virtual {p0, v0}, LQQPIM/CloudInfo;->setBase(LQQPIM/BaseInfo;)V

    iget-object v0, p0, LQQPIM/CloudInfo;->time:LQQPIM/TimeCtrl;

    invoke-virtual {p0, v0}, LQQPIM/CloudInfo;->setTime(LQQPIM/TimeCtrl;)V

    iget-object v0, p0, LQQPIM/CloudInfo;->tips:LQQPIM/TipsInfo;

    invoke-virtual {p0, v0}, LQQPIM/CloudInfo;->setTips(LQQPIM/TipsInfo;)V

    iget-object v0, p0, LQQPIM/CloudInfo;->cloudcmds:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/CloudInfo;->setCloudcmds(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
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

    sget-boolean v1, LQQPIM/CloudInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/CloudInfo;->base:LQQPIM/BaseInfo;

    const-string v2, "base"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/CloudInfo;->time:LQQPIM/TimeCtrl;

    const-string v2, "time"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/CloudInfo;->tips:LQQPIM/TipsInfo;

    const-string v2, "tips"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/CloudInfo;->cloudcmds:Ljava/util/ArrayList;

    const-string v2, "cloudcmds"

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
    check-cast p1, LQQPIM/CloudInfo;

    iget-object v1, p0, LQQPIM/CloudInfo;->base:LQQPIM/BaseInfo;

    iget-object v2, p1, LQQPIM/CloudInfo;->base:LQQPIM/BaseInfo;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/CloudInfo;->time:LQQPIM/TimeCtrl;

    iget-object v2, p1, LQQPIM/CloudInfo;->time:LQQPIM/TimeCtrl;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/CloudInfo;->tips:LQQPIM/TipsInfo;

    iget-object v2, p1, LQQPIM/CloudInfo;->tips:LQQPIM/TipsInfo;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/CloudInfo;->cloudcmds:Ljava/util/ArrayList;

    iget-object v2, p1, LQQPIM/CloudInfo;->cloudcmds:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getCloudcmds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/CloudCmd;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LQQPIM/CloudInfo;->cloudcmds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getTips()LQQPIM/TipsInfo;
    .locals 1

    iget-object v0, p0, LQQPIM/CloudInfo;->tips:LQQPIM/TipsInfo;

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

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v0, LQQPIM/CloudInfo;->cache_base:LQQPIM/BaseInfo;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/BaseInfo;

    invoke-direct {v0}, LQQPIM/BaseInfo;-><init>()V

    sput-object v0, LQQPIM/CloudInfo;->cache_base:LQQPIM/BaseInfo;

    :cond_0
    sget-object v0, LQQPIM/CloudInfo;->cache_base:LQQPIM/BaseInfo;

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LQQPIM/BaseInfo;

    iput-object v0, p0, LQQPIM/CloudInfo;->base:LQQPIM/BaseInfo;

    sget-object v0, LQQPIM/CloudInfo;->cache_time:LQQPIM/TimeCtrl;

    if-nez v0, :cond_1

    new-instance v0, LQQPIM/TimeCtrl;

    invoke-direct {v0}, LQQPIM/TimeCtrl;-><init>()V

    sput-object v0, LQQPIM/CloudInfo;->cache_time:LQQPIM/TimeCtrl;

    :cond_1
    sget-object v0, LQQPIM/CloudInfo;->cache_time:LQQPIM/TimeCtrl;

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LQQPIM/TimeCtrl;

    iput-object v0, p0, LQQPIM/CloudInfo;->time:LQQPIM/TimeCtrl;

    sget-object v0, LQQPIM/CloudInfo;->cache_tips:LQQPIM/TipsInfo;

    if-nez v0, :cond_2

    new-instance v0, LQQPIM/TipsInfo;

    invoke-direct {v0}, LQQPIM/TipsInfo;-><init>()V

    sput-object v0, LQQPIM/CloudInfo;->cache_tips:LQQPIM/TipsInfo;

    :cond_2
    sget-object v0, LQQPIM/CloudInfo;->cache_tips:LQQPIM/TipsInfo;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LQQPIM/TipsInfo;

    iput-object v0, p0, LQQPIM/CloudInfo;->tips:LQQPIM/TipsInfo;

    sget-object v0, LQQPIM/CloudInfo;->cache_cloudcmds:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/CloudInfo;->cache_cloudcmds:Ljava/util/ArrayList;

    new-instance v0, LQQPIM/CloudCmd;

    invoke-direct {v0}, LQQPIM/CloudCmd;-><init>()V

    sget-object v1, LQQPIM/CloudInfo;->cache_cloudcmds:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    sget-object v0, LQQPIM/CloudInfo;->cache_cloudcmds:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/CloudInfo;->setCloudcmds(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final setBase(LQQPIM/BaseInfo;)V
    .locals 0

    iput-object p1, p0, LQQPIM/CloudInfo;->base:LQQPIM/BaseInfo;

    return-void
.end method

.method public final setCloudcmds(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/CloudCmd;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LQQPIM/CloudInfo;->cloudcmds:Ljava/util/ArrayList;

    return-void
.end method

.method public final setTime(LQQPIM/TimeCtrl;)V
    .locals 0

    iput-object p1, p0, LQQPIM/CloudInfo;->time:LQQPIM/TimeCtrl;

    return-void
.end method

.method public final setTips(LQQPIM/TipsInfo;)V
    .locals 0

    iput-object p1, p0, LQQPIM/CloudInfo;->tips:LQQPIM/TipsInfo;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/CloudInfo;->base:LQQPIM/BaseInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LQQPIM/CloudInfo;->time:LQQPIM/TimeCtrl;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LQQPIM/CloudInfo;->tips:LQQPIM/TipsInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/CloudInfo;->tips:LQQPIM/TipsInfo;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    :cond_0
    iget-object v0, p0, LQQPIM/CloudInfo;->cloudcmds:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/CloudInfo;->cloudcmds:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_1
    return-void
.end method

.class public final LQQPIM/LotteryColorEggs;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_prize:LQQPIM/LotteryPrize;


# instance fields
.field public activityid:Ljava/lang/String;

.field public checkurl:Ljava/lang/String;

.field public eggurl:Ljava/lang/String;

.field public orbit:I

.field public prize:LQQPIM/LotteryPrize;

.field public prizeurl:Ljava/lang/String;

.field public wording:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/LotteryColorEggs;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/LotteryColorEggs;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/LotteryColorEggs;->activityid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/LotteryColorEggs;->eggurl:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/LotteryColorEggs;->orbit:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/LotteryColorEggs;->wording:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/LotteryColorEggs;->checkurl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/LotteryColorEggs;->prizeurl:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/LotteryColorEggs;->prize:LQQPIM/LotteryPrize;

    iget-object v0, p0, LQQPIM/LotteryColorEggs;->activityid:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/LotteryColorEggs;->setActivityid(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/LotteryColorEggs;->eggurl:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/LotteryColorEggs;->setEggurl(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/LotteryColorEggs;->orbit:I

    invoke-virtual {p0, v0}, LQQPIM/LotteryColorEggs;->setOrbit(I)V

    iget-object v0, p0, LQQPIM/LotteryColorEggs;->wording:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/LotteryColorEggs;->setWording(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/LotteryColorEggs;->checkurl:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/LotteryColorEggs;->setCheckurl(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/LotteryColorEggs;->prizeurl:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/LotteryColorEggs;->setPrizeurl(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/LotteryColorEggs;->prize:LQQPIM/LotteryPrize;

    invoke-virtual {p0, v0}, LQQPIM/LotteryColorEggs;->setPrize(LQQPIM/LotteryPrize;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;LQQPIM/LotteryPrize;)V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/LotteryColorEggs;->activityid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/LotteryColorEggs;->eggurl:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/LotteryColorEggs;->orbit:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/LotteryColorEggs;->wording:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/LotteryColorEggs;->checkurl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/LotteryColorEggs;->prizeurl:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/LotteryColorEggs;->prize:LQQPIM/LotteryPrize;

    invoke-virtual {p0, p1}, LQQPIM/LotteryColorEggs;->setActivityid(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, LQQPIM/LotteryColorEggs;->setEggurl(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LQQPIM/LotteryColorEggs;->setOrbit(I)V

    invoke-virtual {p0, p4}, LQQPIM/LotteryColorEggs;->setWording(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, LQQPIM/LotteryColorEggs;->setCheckurl(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, LQQPIM/LotteryColorEggs;->setPrizeurl(Ljava/lang/String;)V

    invoke-virtual {p0, p7}, LQQPIM/LotteryColorEggs;->setPrize(LQQPIM/LotteryPrize;)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.LotteryColorEggs"

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

    sget-boolean v1, LQQPIM/LotteryColorEggs;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/LotteryColorEggs;->activityid:Ljava/lang/String;

    const-string v2, "activityid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/LotteryColorEggs;->eggurl:Ljava/lang/String;

    const-string v2, "eggurl"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/LotteryColorEggs;->orbit:I

    const-string v2, "orbit"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/LotteryColorEggs;->wording:Ljava/lang/String;

    const-string v2, "wording"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/LotteryColorEggs;->checkurl:Ljava/lang/String;

    const-string v2, "checkurl"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/LotteryColorEggs;->prizeurl:Ljava/lang/String;

    const-string v2, "prizeurl"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/LotteryColorEggs;->prize:LQQPIM/LotteryPrize;

    const-string v2, "prize"

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
    check-cast p1, LQQPIM/LotteryColorEggs;

    iget-object v1, p0, LQQPIM/LotteryColorEggs;->activityid:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/LotteryColorEggs;->activityid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/LotteryColorEggs;->eggurl:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/LotteryColorEggs;->eggurl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/LotteryColorEggs;->orbit:I

    iget v2, p1, LQQPIM/LotteryColorEggs;->orbit:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/LotteryColorEggs;->wording:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/LotteryColorEggs;->wording:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/LotteryColorEggs;->checkurl:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/LotteryColorEggs;->checkurl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/LotteryColorEggs;->prizeurl:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/LotteryColorEggs;->prizeurl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/LotteryColorEggs;->prize:LQQPIM/LotteryPrize;

    iget-object v2, p1, LQQPIM/LotteryColorEggs;->prize:LQQPIM/LotteryPrize;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.LotteryColorEggs"

    return-object v0
.end method

.method public final getActivityid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/LotteryColorEggs;->activityid:Ljava/lang/String;

    return-object v0
.end method

.method public final getCheckurl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/LotteryColorEggs;->checkurl:Ljava/lang/String;

    return-object v0
.end method

.method public final getEggurl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/LotteryColorEggs;->eggurl:Ljava/lang/String;

    return-object v0
.end method

.method public final getOrbit()I
    .locals 1

    iget v0, p0, LQQPIM/LotteryColorEggs;->orbit:I

    return v0
.end method

.method public final getPrize()LQQPIM/LotteryPrize;
    .locals 1

    iget-object v0, p0, LQQPIM/LotteryColorEggs;->prize:LQQPIM/LotteryPrize;

    return-object v0
.end method

.method public final getPrizeurl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/LotteryColorEggs;->prizeurl:Ljava/lang/String;

    return-object v0
.end method

.method public final getWording()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/LotteryColorEggs;->wording:Ljava/lang/String;

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

    invoke-virtual {p1, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/LotteryColorEggs;->activityid:Ljava/lang/String;

    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/LotteryColorEggs;->eggurl:Ljava/lang/String;

    iget v0, p0, LQQPIM/LotteryColorEggs;->orbit:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/LotteryColorEggs;->orbit:I

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/LotteryColorEggs;->wording:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/LotteryColorEggs;->checkurl:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/LotteryColorEggs;->prizeurl:Ljava/lang/String;

    sget-object v0, LQQPIM/LotteryColorEggs;->cache_prize:LQQPIM/LotteryPrize;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/LotteryPrize;

    invoke-direct {v0}, LQQPIM/LotteryPrize;-><init>()V

    sput-object v0, LQQPIM/LotteryColorEggs;->cache_prize:LQQPIM/LotteryPrize;

    :cond_0
    sget-object v0, LQQPIM/LotteryColorEggs;->cache_prize:LQQPIM/LotteryPrize;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LQQPIM/LotteryPrize;

    iput-object v0, p0, LQQPIM/LotteryColorEggs;->prize:LQQPIM/LotteryPrize;

    return-void
.end method

.method public final setActivityid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/LotteryColorEggs;->activityid:Ljava/lang/String;

    return-void
.end method

.method public final setCheckurl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/LotteryColorEggs;->checkurl:Ljava/lang/String;

    return-void
.end method

.method public final setEggurl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/LotteryColorEggs;->eggurl:Ljava/lang/String;

    return-void
.end method

.method public final setOrbit(I)V
    .locals 0

    iput p1, p0, LQQPIM/LotteryColorEggs;->orbit:I

    return-void
.end method

.method public final setPrize(LQQPIM/LotteryPrize;)V
    .locals 0

    iput-object p1, p0, LQQPIM/LotteryColorEggs;->prize:LQQPIM/LotteryPrize;

    return-void
.end method

.method public final setPrizeurl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/LotteryColorEggs;->prizeurl:Ljava/lang/String;

    return-void
.end method

.method public final setWording(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/LotteryColorEggs;->wording:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/LotteryColorEggs;->activityid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/LotteryColorEggs;->eggurl:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LQQPIM/LotteryColorEggs;->orbit:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/LotteryColorEggs;->wording:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/LotteryColorEggs;->checkurl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/LotteryColorEggs;->checkurl:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, LQQPIM/LotteryColorEggs;->prizeurl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/LotteryColorEggs;->prizeurl:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, LQQPIM/LotteryColorEggs;->prize:LQQPIM/LotteryPrize;

    if-eqz v0, :cond_2

    iget-object v0, p0, LQQPIM/LotteryColorEggs;->prize:LQQPIM/LotteryPrize;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    :cond_2
    return-void
.end method

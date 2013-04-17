.class public final LQQPIM/AndroidCategoryExpand;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_ispush:I


# instance fields
.field public agree:I

.field public createtime:I

.field public disagree:I

.field public ispush:I

.field public updatetime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/AndroidCategoryExpand;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/AndroidCategoryExpand;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LQQPIM/AndroidCategoryExpand;->createtime:I

    iput v1, p0, LQQPIM/AndroidCategoryExpand;->agree:I

    iput v1, p0, LQQPIM/AndroidCategoryExpand;->disagree:I

    sget-object v0, LQQPIM/ECategoryPushType;->CPUSH_NONE:LQQPIM/ECategoryPushType;

    invoke-virtual {v0}, LQQPIM/ECategoryPushType;->value()I

    move-result v0

    iput v0, p0, LQQPIM/AndroidCategoryExpand;->ispush:I

    iput v1, p0, LQQPIM/AndroidCategoryExpand;->updatetime:I

    iget v0, p0, LQQPIM/AndroidCategoryExpand;->createtime:I

    invoke-virtual {p0, v0}, LQQPIM/AndroidCategoryExpand;->setCreatetime(I)V

    iget v0, p0, LQQPIM/AndroidCategoryExpand;->agree:I

    invoke-virtual {p0, v0}, LQQPIM/AndroidCategoryExpand;->setAgree(I)V

    iget v0, p0, LQQPIM/AndroidCategoryExpand;->disagree:I

    invoke-virtual {p0, v0}, LQQPIM/AndroidCategoryExpand;->setDisagree(I)V

    iget v0, p0, LQQPIM/AndroidCategoryExpand;->ispush:I

    invoke-virtual {p0, v0}, LQQPIM/AndroidCategoryExpand;->setIspush(I)V

    iget v0, p0, LQQPIM/AndroidCategoryExpand;->updatetime:I

    invoke-virtual {p0, v0}, LQQPIM/AndroidCategoryExpand;->setUpdatetime(I)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LQQPIM/AndroidCategoryExpand;->createtime:I

    iput v1, p0, LQQPIM/AndroidCategoryExpand;->agree:I

    iput v1, p0, LQQPIM/AndroidCategoryExpand;->disagree:I

    sget-object v0, LQQPIM/ECategoryPushType;->CPUSH_NONE:LQQPIM/ECategoryPushType;

    invoke-virtual {v0}, LQQPIM/ECategoryPushType;->value()I

    move-result v0

    iput v0, p0, LQQPIM/AndroidCategoryExpand;->ispush:I

    iput v1, p0, LQQPIM/AndroidCategoryExpand;->updatetime:I

    invoke-virtual {p0, p1}, LQQPIM/AndroidCategoryExpand;->setCreatetime(I)V

    invoke-virtual {p0, p2}, LQQPIM/AndroidCategoryExpand;->setAgree(I)V

    invoke-virtual {p0, p3}, LQQPIM/AndroidCategoryExpand;->setDisagree(I)V

    invoke-virtual {p0, p4}, LQQPIM/AndroidCategoryExpand;->setIspush(I)V

    invoke-virtual {p0, p5}, LQQPIM/AndroidCategoryExpand;->setUpdatetime(I)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.AndroidCategoryExpand"

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

    sget-boolean v1, LQQPIM/AndroidCategoryExpand;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LQQPIM/AndroidCategoryExpand;->createtime:I

    const-string v2, "createtime"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/AndroidCategoryExpand;->agree:I

    const-string v2, "agree"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/AndroidCategoryExpand;->disagree:I

    const-string v2, "disagree"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/AndroidCategoryExpand;->ispush:I

    const-string v2, "ispush"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/AndroidCategoryExpand;->updatetime:I

    const-string v2, "updatetime"

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
    check-cast p1, LQQPIM/AndroidCategoryExpand;

    iget v1, p0, LQQPIM/AndroidCategoryExpand;->createtime:I

    iget v2, p1, LQQPIM/AndroidCategoryExpand;->createtime:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/AndroidCategoryExpand;->agree:I

    iget v2, p1, LQQPIM/AndroidCategoryExpand;->agree:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/AndroidCategoryExpand;->disagree:I

    iget v2, p1, LQQPIM/AndroidCategoryExpand;->disagree:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/AndroidCategoryExpand;->ispush:I

    iget v2, p1, LQQPIM/AndroidCategoryExpand;->ispush:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/AndroidCategoryExpand;->updatetime:I

    iget v2, p1, LQQPIM/AndroidCategoryExpand;->updatetime:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.AndroidCategoryExpand"

    return-object v0
.end method

.method public final getAgree()I
    .locals 1

    iget v0, p0, LQQPIM/AndroidCategoryExpand;->agree:I

    return v0
.end method

.method public final getCreatetime()I
    .locals 1

    iget v0, p0, LQQPIM/AndroidCategoryExpand;->createtime:I

    return v0
.end method

.method public final getDisagree()I
    .locals 1

    iget v0, p0, LQQPIM/AndroidCategoryExpand;->disagree:I

    return v0
.end method

.method public final getIspush()I
    .locals 1

    iget v0, p0, LQQPIM/AndroidCategoryExpand;->ispush:I

    return v0
.end method

.method public final getUpdatetime()I
    .locals 1

    iget v0, p0, LQQPIM/AndroidCategoryExpand;->updatetime:I

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

    iget v0, p0, LQQPIM/AndroidCategoryExpand;->createtime:I

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/AndroidCategoryExpand;->createtime:I

    iget v0, p0, LQQPIM/AndroidCategoryExpand;->agree:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/AndroidCategoryExpand;->agree:I

    iget v0, p0, LQQPIM/AndroidCategoryExpand;->disagree:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/AndroidCategoryExpand;->disagree:I

    iget v0, p0, LQQPIM/AndroidCategoryExpand;->ispush:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/AndroidCategoryExpand;->ispush:I

    iget v0, p0, LQQPIM/AndroidCategoryExpand;->updatetime:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/AndroidCategoryExpand;->updatetime:I

    return-void
.end method

.method public final setAgree(I)V
    .locals 0

    iput p1, p0, LQQPIM/AndroidCategoryExpand;->agree:I

    return-void
.end method

.method public final setCreatetime(I)V
    .locals 0

    iput p1, p0, LQQPIM/AndroidCategoryExpand;->createtime:I

    return-void
.end method

.method public final setDisagree(I)V
    .locals 0

    iput p1, p0, LQQPIM/AndroidCategoryExpand;->disagree:I

    return-void
.end method

.method public final setIspush(I)V
    .locals 0

    iput p1, p0, LQQPIM/AndroidCategoryExpand;->ispush:I

    return-void
.end method

.method public final setUpdatetime(I)V
    .locals 0

    iput p1, p0, LQQPIM/AndroidCategoryExpand;->updatetime:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LQQPIM/AndroidCategoryExpand;->createtime:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/AndroidCategoryExpand;->agree:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/AndroidCategoryExpand;->disagree:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/AndroidCategoryExpand;->ispush:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/AndroidCategoryExpand;->updatetime:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method

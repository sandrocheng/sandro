.class public final LQQPIM/Mark;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public draw:I

.field public lose:I

.field public mark:I

.field public markid:I

.field public nrank:I

.field public rank:I

.field public win:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/Mark;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/Mark;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v0, p0, LQQPIM/Mark;->markid:I

    iput v0, p0, LQQPIM/Mark;->mark:I

    iput v0, p0, LQQPIM/Mark;->rank:I

    iput v0, p0, LQQPIM/Mark;->nrank:I

    iput v0, p0, LQQPIM/Mark;->win:I

    iput v0, p0, LQQPIM/Mark;->lose:I

    iput v0, p0, LQQPIM/Mark;->draw:I

    iget v0, p0, LQQPIM/Mark;->markid:I

    invoke-virtual {p0, v0}, LQQPIM/Mark;->setMarkid(I)V

    iget v0, p0, LQQPIM/Mark;->mark:I

    invoke-virtual {p0, v0}, LQQPIM/Mark;->setMark(I)V

    iget v0, p0, LQQPIM/Mark;->rank:I

    invoke-virtual {p0, v0}, LQQPIM/Mark;->setRank(I)V

    iget v0, p0, LQQPIM/Mark;->nrank:I

    invoke-virtual {p0, v0}, LQQPIM/Mark;->setNrank(I)V

    iget v0, p0, LQQPIM/Mark;->win:I

    invoke-virtual {p0, v0}, LQQPIM/Mark;->setWin(I)V

    iget v0, p0, LQQPIM/Mark;->lose:I

    invoke-virtual {p0, v0}, LQQPIM/Mark;->setLose(I)V

    iget v0, p0, LQQPIM/Mark;->draw:I

    invoke-virtual {p0, v0}, LQQPIM/Mark;->setDraw(I)V

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v0, p0, LQQPIM/Mark;->markid:I

    iput v0, p0, LQQPIM/Mark;->mark:I

    iput v0, p0, LQQPIM/Mark;->rank:I

    iput v0, p0, LQQPIM/Mark;->nrank:I

    iput v0, p0, LQQPIM/Mark;->win:I

    iput v0, p0, LQQPIM/Mark;->lose:I

    iput v0, p0, LQQPIM/Mark;->draw:I

    invoke-virtual {p0, p1}, LQQPIM/Mark;->setMarkid(I)V

    invoke-virtual {p0, p2}, LQQPIM/Mark;->setMark(I)V

    invoke-virtual {p0, p3}, LQQPIM/Mark;->setRank(I)V

    invoke-virtual {p0, p4}, LQQPIM/Mark;->setNrank(I)V

    invoke-virtual {p0, p5}, LQQPIM/Mark;->setWin(I)V

    invoke-virtual {p0, p6}, LQQPIM/Mark;->setLose(I)V

    invoke-virtual {p0, p7}, LQQPIM/Mark;->setDraw(I)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.Mark"

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

    sget-boolean v1, LQQPIM/Mark;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LQQPIM/Mark;->markid:I

    const-string v2, "markid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/Mark;->mark:I

    const-string v2, "mark"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/Mark;->rank:I

    const-string v2, "rank"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/Mark;->nrank:I

    const-string v2, "nrank"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/Mark;->win:I

    const-string v2, "win"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/Mark;->lose:I

    const-string v2, "lose"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/Mark;->draw:I

    const-string v2, "draw"

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
    check-cast p1, LQQPIM/Mark;

    iget v1, p0, LQQPIM/Mark;->markid:I

    iget v2, p1, LQQPIM/Mark;->markid:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/Mark;->mark:I

    iget v2, p1, LQQPIM/Mark;->mark:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/Mark;->rank:I

    iget v2, p1, LQQPIM/Mark;->rank:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/Mark;->nrank:I

    iget v2, p1, LQQPIM/Mark;->nrank:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/Mark;->win:I

    iget v2, p1, LQQPIM/Mark;->win:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/Mark;->lose:I

    iget v2, p1, LQQPIM/Mark;->lose:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/Mark;->draw:I

    iget v2, p1, LQQPIM/Mark;->draw:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.Mark"

    return-object v0
.end method

.method public final getDraw()I
    .locals 1

    iget v0, p0, LQQPIM/Mark;->draw:I

    return v0
.end method

.method public final getLose()I
    .locals 1

    iget v0, p0, LQQPIM/Mark;->lose:I

    return v0
.end method

.method public final getMark()I
    .locals 1

    iget v0, p0, LQQPIM/Mark;->mark:I

    return v0
.end method

.method public final getMarkid()I
    .locals 1

    iget v0, p0, LQQPIM/Mark;->markid:I

    return v0
.end method

.method public final getNrank()I
    .locals 1

    iget v0, p0, LQQPIM/Mark;->nrank:I

    return v0
.end method

.method public final getRank()I
    .locals 1

    iget v0, p0, LQQPIM/Mark;->rank:I

    return v0
.end method

.method public final getWin()I
    .locals 1

    iget v0, p0, LQQPIM/Mark;->win:I

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

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget v0, p0, LQQPIM/Mark;->markid:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/Mark;->markid:I

    iget v0, p0, LQQPIM/Mark;->mark:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/Mark;->mark:I

    iget v0, p0, LQQPIM/Mark;->rank:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/Mark;->rank:I

    iget v0, p0, LQQPIM/Mark;->nrank:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/Mark;->nrank:I

    iget v0, p0, LQQPIM/Mark;->win:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/Mark;->win:I

    iget v0, p0, LQQPIM/Mark;->lose:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/Mark;->lose:I

    iget v0, p0, LQQPIM/Mark;->draw:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/Mark;->draw:I

    return-void
.end method

.method public final setDraw(I)V
    .locals 0

    iput p1, p0, LQQPIM/Mark;->draw:I

    return-void
.end method

.method public final setLose(I)V
    .locals 0

    iput p1, p0, LQQPIM/Mark;->lose:I

    return-void
.end method

.method public final setMark(I)V
    .locals 0

    iput p1, p0, LQQPIM/Mark;->mark:I

    return-void
.end method

.method public final setMarkid(I)V
    .locals 0

    iput p1, p0, LQQPIM/Mark;->markid:I

    return-void
.end method

.method public final setNrank(I)V
    .locals 0

    iput p1, p0, LQQPIM/Mark;->nrank:I

    return-void
.end method

.method public final setRank(I)V
    .locals 0

    iput p1, p0, LQQPIM/Mark;->rank:I

    return-void
.end method

.method public final setWin(I)V
    .locals 0

    iput p1, p0, LQQPIM/Mark;->win:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LQQPIM/Mark;->markid:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/Mark;->mark:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/Mark;->rank:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/Mark;->nrank:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/Mark;->win:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/Mark;->lose:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/Mark;->draw:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method

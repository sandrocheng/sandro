.class public final LQQPIM/DayColorEggs;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public bshare:Z

.field public eggurl:Ljava/lang/String;

.field public nvalue:I

.field public orbit:I

.field public text:Ljava/lang/String;

.field public toast:Ljava/lang/String;

.field public wording:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/DayColorEggs;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/DayColorEggs;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LQQPIM/DayColorEggs;->nvalue:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DayColorEggs;->eggurl:Ljava/lang/String;

    iput v1, p0, LQQPIM/DayColorEggs;->orbit:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DayColorEggs;->toast:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, LQQPIM/DayColorEggs;->bshare:Z

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DayColorEggs;->wording:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DayColorEggs;->text:Ljava/lang/String;

    iget v0, p0, LQQPIM/DayColorEggs;->nvalue:I

    invoke-virtual {p0, v0}, LQQPIM/DayColorEggs;->setNvalue(I)V

    iget-object v0, p0, LQQPIM/DayColorEggs;->eggurl:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/DayColorEggs;->setEggurl(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/DayColorEggs;->orbit:I

    invoke-virtual {p0, v0}, LQQPIM/DayColorEggs;->setOrbit(I)V

    iget-object v0, p0, LQQPIM/DayColorEggs;->toast:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/DayColorEggs;->setToast(Ljava/lang/String;)V

    iget-boolean v0, p0, LQQPIM/DayColorEggs;->bshare:Z

    invoke-virtual {p0, v0}, LQQPIM/DayColorEggs;->setBshare(Z)V

    iget-object v0, p0, LQQPIM/DayColorEggs;->wording:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/DayColorEggs;->setWording(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/DayColorEggs;->text:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/DayColorEggs;->setText(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LQQPIM/DayColorEggs;->nvalue:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DayColorEggs;->eggurl:Ljava/lang/String;

    iput v1, p0, LQQPIM/DayColorEggs;->orbit:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DayColorEggs;->toast:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, LQQPIM/DayColorEggs;->bshare:Z

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DayColorEggs;->wording:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/DayColorEggs;->text:Ljava/lang/String;

    invoke-virtual {p0, p1}, LQQPIM/DayColorEggs;->setNvalue(I)V

    invoke-virtual {p0, p2}, LQQPIM/DayColorEggs;->setEggurl(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LQQPIM/DayColorEggs;->setOrbit(I)V

    invoke-virtual {p0, p4}, LQQPIM/DayColorEggs;->setToast(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, LQQPIM/DayColorEggs;->setBshare(Z)V

    invoke-virtual {p0, p6}, LQQPIM/DayColorEggs;->setWording(Ljava/lang/String;)V

    invoke-virtual {p0, p7}, LQQPIM/DayColorEggs;->setText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.DayColorEggs"

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

    sget-boolean v1, LQQPIM/DayColorEggs;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LQQPIM/DayColorEggs;->nvalue:I

    const-string v2, "nvalue"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/DayColorEggs;->eggurl:Ljava/lang/String;

    const-string v2, "eggurl"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/DayColorEggs;->orbit:I

    const-string v2, "orbit"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/DayColorEggs;->toast:Ljava/lang/String;

    const-string v2, "toast"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-boolean v1, p0, LQQPIM/DayColorEggs;->bshare:Z

    const-string v2, "bshare"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ZLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/DayColorEggs;->wording:Ljava/lang/String;

    const-string v2, "wording"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/DayColorEggs;->text:Ljava/lang/String;

    const-string v2, "text"

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
    check-cast p1, LQQPIM/DayColorEggs;

    iget v1, p0, LQQPIM/DayColorEggs;->nvalue:I

    iget v2, p1, LQQPIM/DayColorEggs;->nvalue:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/DayColorEggs;->eggurl:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/DayColorEggs;->eggurl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/DayColorEggs;->orbit:I

    iget v2, p1, LQQPIM/DayColorEggs;->orbit:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/DayColorEggs;->toast:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/DayColorEggs;->toast:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, LQQPIM/DayColorEggs;->bshare:Z

    iget-boolean v2, p1, LQQPIM/DayColorEggs;->bshare:Z

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/DayColorEggs;->wording:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/DayColorEggs;->wording:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/DayColorEggs;->text:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/DayColorEggs;->text:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.DayColorEggs"

    return-object v0
.end method

.method public final getBshare()Z
    .locals 1

    iget-boolean v0, p0, LQQPIM/DayColorEggs;->bshare:Z

    return v0
.end method

.method public final getEggurl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/DayColorEggs;->eggurl:Ljava/lang/String;

    return-object v0
.end method

.method public final getNvalue()I
    .locals 1

    iget v0, p0, LQQPIM/DayColorEggs;->nvalue:I

    return v0
.end method

.method public final getOrbit()I
    .locals 1

    iget v0, p0, LQQPIM/DayColorEggs;->orbit:I

    return v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/DayColorEggs;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getToast()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/DayColorEggs;->toast:Ljava/lang/String;

    return-object v0
.end method

.method public final getWording()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/DayColorEggs;->wording:Ljava/lang/String;

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

    iget v0, p0, LQQPIM/DayColorEggs;->nvalue:I

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DayColorEggs;->nvalue:I

    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/DayColorEggs;->eggurl:Ljava/lang/String;

    iget v0, p0, LQQPIM/DayColorEggs;->orbit:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/DayColorEggs;->orbit:I

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/DayColorEggs;->toast:Ljava/lang/String;

    iget-boolean v0, p0, LQQPIM/DayColorEggs;->bshare:Z

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, LQQPIM/DayColorEggs;->bshare:Z

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/DayColorEggs;->wording:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/DayColorEggs;->text:Ljava/lang/String;

    return-void
.end method

.method public final setBshare(Z)V
    .locals 0

    iput-boolean p1, p0, LQQPIM/DayColorEggs;->bshare:Z

    return-void
.end method

.method public final setEggurl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/DayColorEggs;->eggurl:Ljava/lang/String;

    return-void
.end method

.method public final setNvalue(I)V
    .locals 0

    iput p1, p0, LQQPIM/DayColorEggs;->nvalue:I

    return-void
.end method

.method public final setOrbit(I)V
    .locals 0

    iput p1, p0, LQQPIM/DayColorEggs;->orbit:I

    return-void
.end method

.method public final setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/DayColorEggs;->text:Ljava/lang/String;

    return-void
.end method

.method public final setToast(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/DayColorEggs;->toast:Ljava/lang/String;

    return-void
.end method

.method public final setWording(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/DayColorEggs;->wording:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LQQPIM/DayColorEggs;->nvalue:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/DayColorEggs;->eggurl:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LQQPIM/DayColorEggs;->orbit:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/DayColorEggs;->toast:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-boolean v0, p0, LQQPIM/DayColorEggs;->bshare:Z

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    iget-object v0, p0, LQQPIM/DayColorEggs;->wording:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/DayColorEggs;->wording:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, LQQPIM/DayColorEggs;->text:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/DayColorEggs;->text:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.class public final LQQPIM/PromptImpeach;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public actionmarkstr:Ljava/lang/String;

.field public bfiltercontent:Z

.field public bswitch:Z

.field public keywords:Ljava/lang/String;

.field public maxreport:I

.field public maxsinglereport:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/PromptImpeach;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/PromptImpeach;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-boolean v2, p0, LQQPIM/PromptImpeach;->bswitch:Z

    const-string v0, ""

    iput-object v0, p0, LQQPIM/PromptImpeach;->actionmarkstr:Ljava/lang/String;

    iput v1, p0, LQQPIM/PromptImpeach;->maxreport:I

    iput-boolean v2, p0, LQQPIM/PromptImpeach;->bfiltercontent:Z

    const-string v0, ""

    iput-object v0, p0, LQQPIM/PromptImpeach;->keywords:Ljava/lang/String;

    iput v1, p0, LQQPIM/PromptImpeach;->maxsinglereport:I

    iget-boolean v0, p0, LQQPIM/PromptImpeach;->bswitch:Z

    invoke-virtual {p0, v0}, LQQPIM/PromptImpeach;->setBswitch(Z)V

    iget-object v0, p0, LQQPIM/PromptImpeach;->actionmarkstr:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/PromptImpeach;->setActionmarkstr(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/PromptImpeach;->maxreport:I

    invoke-virtual {p0, v0}, LQQPIM/PromptImpeach;->setMaxreport(I)V

    iget-boolean v0, p0, LQQPIM/PromptImpeach;->bfiltercontent:Z

    invoke-virtual {p0, v0}, LQQPIM/PromptImpeach;->setBfiltercontent(Z)V

    iget-object v0, p0, LQQPIM/PromptImpeach;->keywords:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/PromptImpeach;->setKeywords(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/PromptImpeach;->maxsinglereport:I

    invoke-virtual {p0, v0}, LQQPIM/PromptImpeach;->setMaxsinglereport(I)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;IZLjava/lang/String;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-boolean v2, p0, LQQPIM/PromptImpeach;->bswitch:Z

    const-string v0, ""

    iput-object v0, p0, LQQPIM/PromptImpeach;->actionmarkstr:Ljava/lang/String;

    iput v1, p0, LQQPIM/PromptImpeach;->maxreport:I

    iput-boolean v2, p0, LQQPIM/PromptImpeach;->bfiltercontent:Z

    const-string v0, ""

    iput-object v0, p0, LQQPIM/PromptImpeach;->keywords:Ljava/lang/String;

    iput v1, p0, LQQPIM/PromptImpeach;->maxsinglereport:I

    invoke-virtual {p0, p1}, LQQPIM/PromptImpeach;->setBswitch(Z)V

    invoke-virtual {p0, p2}, LQQPIM/PromptImpeach;->setActionmarkstr(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LQQPIM/PromptImpeach;->setMaxreport(I)V

    invoke-virtual {p0, p4}, LQQPIM/PromptImpeach;->setBfiltercontent(Z)V

    invoke-virtual {p0, p5}, LQQPIM/PromptImpeach;->setKeywords(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, LQQPIM/PromptImpeach;->setMaxsinglereport(I)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.PromptImpeach"

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

    sget-boolean v1, LQQPIM/PromptImpeach;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-boolean v1, p0, LQQPIM/PromptImpeach;->bswitch:Z

    const-string v2, "bswitch"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ZLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/PromptImpeach;->actionmarkstr:Ljava/lang/String;

    const-string v2, "actionmarkstr"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/PromptImpeach;->maxreport:I

    const-string v2, "maxreport"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-boolean v1, p0, LQQPIM/PromptImpeach;->bfiltercontent:Z

    const-string v2, "bfiltercontent"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ZLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/PromptImpeach;->keywords:Ljava/lang/String;

    const-string v2, "keywords"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/PromptImpeach;->maxsinglereport:I

    const-string v2, "maxsinglereport"

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
    check-cast p1, LQQPIM/PromptImpeach;

    iget-boolean v1, p0, LQQPIM/PromptImpeach;->bswitch:Z

    iget-boolean v2, p1, LQQPIM/PromptImpeach;->bswitch:Z

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/PromptImpeach;->actionmarkstr:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/PromptImpeach;->actionmarkstr:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/PromptImpeach;->maxreport:I

    iget v2, p1, LQQPIM/PromptImpeach;->maxreport:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, LQQPIM/PromptImpeach;->bfiltercontent:Z

    iget-boolean v2, p1, LQQPIM/PromptImpeach;->bfiltercontent:Z

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/PromptImpeach;->keywords:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/PromptImpeach;->keywords:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/PromptImpeach;->maxsinglereport:I

    iget v2, p1, LQQPIM/PromptImpeach;->maxsinglereport:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.PromptImpeach"

    return-object v0
.end method

.method public final getActionmarkstr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/PromptImpeach;->actionmarkstr:Ljava/lang/String;

    return-object v0
.end method

.method public final getBfiltercontent()Z
    .locals 1

    iget-boolean v0, p0, LQQPIM/PromptImpeach;->bfiltercontent:Z

    return v0
.end method

.method public final getBswitch()Z
    .locals 1

    iget-boolean v0, p0, LQQPIM/PromptImpeach;->bswitch:Z

    return v0
.end method

.method public final getKeywords()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/PromptImpeach;->keywords:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxreport()I
    .locals 1

    iget v0, p0, LQQPIM/PromptImpeach;->maxreport:I

    return v0
.end method

.method public final getMaxsinglereport()I
    .locals 1

    iget v0, p0, LQQPIM/PromptImpeach;->maxsinglereport:I

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

    iget-boolean v0, p0, LQQPIM/PromptImpeach;->bswitch:Z

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, LQQPIM/PromptImpeach;->bswitch:Z

    invoke-virtual {p1, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/PromptImpeach;->actionmarkstr:Ljava/lang/String;

    iget v0, p0, LQQPIM/PromptImpeach;->maxreport:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/PromptImpeach;->maxreport:I

    iget-boolean v0, p0, LQQPIM/PromptImpeach;->bfiltercontent:Z

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    iput-boolean v0, p0, LQQPIM/PromptImpeach;->bfiltercontent:Z

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/PromptImpeach;->keywords:Ljava/lang/String;

    iget v0, p0, LQQPIM/PromptImpeach;->maxsinglereport:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/PromptImpeach;->maxsinglereport:I

    return-void
.end method

.method public final setActionmarkstr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/PromptImpeach;->actionmarkstr:Ljava/lang/String;

    return-void
.end method

.method public final setBfiltercontent(Z)V
    .locals 0

    iput-boolean p1, p0, LQQPIM/PromptImpeach;->bfiltercontent:Z

    return-void
.end method

.method public final setBswitch(Z)V
    .locals 0

    iput-boolean p1, p0, LQQPIM/PromptImpeach;->bswitch:Z

    return-void
.end method

.method public final setKeywords(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/PromptImpeach;->keywords:Ljava/lang/String;

    return-void
.end method

.method public final setMaxreport(I)V
    .locals 0

    iput p1, p0, LQQPIM/PromptImpeach;->maxreport:I

    return-void
.end method

.method public final setMaxsinglereport(I)V
    .locals 0

    iput p1, p0, LQQPIM/PromptImpeach;->maxsinglereport:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-boolean v0, p0, LQQPIM/PromptImpeach;->bswitch:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    iget-object v0, p0, LQQPIM/PromptImpeach;->actionmarkstr:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/PromptImpeach;->actionmarkstr:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget v0, p0, LQQPIM/PromptImpeach;->maxreport:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-boolean v0, p0, LQQPIM/PromptImpeach;->bfiltercontent:Z

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    iget-object v0, p0, LQQPIM/PromptImpeach;->keywords:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/PromptImpeach;->keywords:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, LQQPIM/PromptImpeach;->maxsinglereport:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method

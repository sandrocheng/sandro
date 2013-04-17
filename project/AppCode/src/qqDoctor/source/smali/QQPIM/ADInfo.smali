.class public final LQQPIM/ADInfo;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_softkey:LQQPIM/SoftKey;


# instance fields
.field public adid:I

.field public adtype:I

.field public description:Ljava/lang/String;

.field public picalt:Ljava/lang/String;

.field public picurl:Ljava/lang/String;

.field public softkey:LQQPIM/SoftKey;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/ADInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/ADInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LQQPIM/ADInfo;->adid:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ADInfo;->picurl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ADInfo;->picalt:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/ADInfo;->softkey:LQQPIM/SoftKey;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ADInfo;->description:Ljava/lang/String;

    iput v1, p0, LQQPIM/ADInfo;->adtype:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ADInfo;->url:Ljava/lang/String;

    iget v0, p0, LQQPIM/ADInfo;->adid:I

    invoke-virtual {p0, v0}, LQQPIM/ADInfo;->setAdid(I)V

    iget-object v0, p0, LQQPIM/ADInfo;->picurl:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/ADInfo;->setPicurl(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/ADInfo;->picalt:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/ADInfo;->setPicalt(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/ADInfo;->softkey:LQQPIM/SoftKey;

    invoke-virtual {p0, v0}, LQQPIM/ADInfo;->setSoftkey(LQQPIM/SoftKey;)V

    iget-object v0, p0, LQQPIM/ADInfo;->description:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/ADInfo;->setDescription(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/ADInfo;->adtype:I

    invoke-virtual {p0, v0}, LQQPIM/ADInfo;->setAdtype(I)V

    iget-object v0, p0, LQQPIM/ADInfo;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/ADInfo;->setUrl(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;LQQPIM/SoftKey;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LQQPIM/ADInfo;->adid:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ADInfo;->picurl:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ADInfo;->picalt:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/ADInfo;->softkey:LQQPIM/SoftKey;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ADInfo;->description:Ljava/lang/String;

    iput v1, p0, LQQPIM/ADInfo;->adtype:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/ADInfo;->url:Ljava/lang/String;

    invoke-virtual {p0, p1}, LQQPIM/ADInfo;->setAdid(I)V

    invoke-virtual {p0, p2}, LQQPIM/ADInfo;->setPicurl(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LQQPIM/ADInfo;->setPicalt(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LQQPIM/ADInfo;->setSoftkey(LQQPIM/SoftKey;)V

    invoke-virtual {p0, p5}, LQQPIM/ADInfo;->setDescription(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, LQQPIM/ADInfo;->setAdtype(I)V

    invoke-virtual {p0, p7}, LQQPIM/ADInfo;->setUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.ADInfo"

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

    sget-boolean v1, LQQPIM/ADInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LQQPIM/ADInfo;->adid:I

    const-string v2, "adid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/ADInfo;->picurl:Ljava/lang/String;

    const-string v2, "picurl"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/ADInfo;->picalt:Ljava/lang/String;

    const-string v2, "picalt"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/ADInfo;->softkey:LQQPIM/SoftKey;

    const-string v2, "softkey"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/ADInfo;->description:Ljava/lang/String;

    const-string v2, "description"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/ADInfo;->adtype:I

    const-string v2, "adtype"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/ADInfo;->url:Ljava/lang/String;

    const-string v2, "url"

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
    check-cast p1, LQQPIM/ADInfo;

    iget v1, p0, LQQPIM/ADInfo;->adid:I

    iget v2, p1, LQQPIM/ADInfo;->adid:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/ADInfo;->picurl:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/ADInfo;->picurl:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/ADInfo;->picalt:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/ADInfo;->picalt:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/ADInfo;->softkey:LQQPIM/SoftKey;

    iget-object v2, p1, LQQPIM/ADInfo;->softkey:LQQPIM/SoftKey;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/ADInfo;->description:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/ADInfo;->description:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/ADInfo;->adtype:I

    iget v2, p1, LQQPIM/ADInfo;->adtype:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/ADInfo;->url:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/ADInfo;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.ADInfo"

    return-object v0
.end method

.method public final getAdid()I
    .locals 1

    iget v0, p0, LQQPIM/ADInfo;->adid:I

    return v0
.end method

.method public final getAdtype()I
    .locals 1

    iget v0, p0, LQQPIM/ADInfo;->adtype:I

    return v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/ADInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getPicalt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/ADInfo;->picalt:Ljava/lang/String;

    return-object v0
.end method

.method public final getPicurl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/ADInfo;->picurl:Ljava/lang/String;

    return-object v0
.end method

.method public final getSoftkey()LQQPIM/SoftKey;
    .locals 1

    iget-object v0, p0, LQQPIM/ADInfo;->softkey:LQQPIM/SoftKey;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/ADInfo;->url:Ljava/lang/String;

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

    iget v0, p0, LQQPIM/ADInfo;->adid:I

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/ADInfo;->adid:I

    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/ADInfo;->picurl:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/ADInfo;->picalt:Ljava/lang/String;

    sget-object v0, LQQPIM/ADInfo;->cache_softkey:LQQPIM/SoftKey;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/SoftKey;

    invoke-direct {v0}, LQQPIM/SoftKey;-><init>()V

    sput-object v0, LQQPIM/ADInfo;->cache_softkey:LQQPIM/SoftKey;

    :cond_0
    sget-object v0, LQQPIM/ADInfo;->cache_softkey:LQQPIM/SoftKey;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LQQPIM/SoftKey;

    iput-object v0, p0, LQQPIM/ADInfo;->softkey:LQQPIM/SoftKey;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/ADInfo;->description:Ljava/lang/String;

    iget v0, p0, LQQPIM/ADInfo;->adtype:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/ADInfo;->adtype:I

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/ADInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public final setAdid(I)V
    .locals 0

    iput p1, p0, LQQPIM/ADInfo;->adid:I

    return-void
.end method

.method public final setAdtype(I)V
    .locals 0

    iput p1, p0, LQQPIM/ADInfo;->adtype:I

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/ADInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public final setPicalt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/ADInfo;->picalt:Ljava/lang/String;

    return-void
.end method

.method public final setPicurl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/ADInfo;->picurl:Ljava/lang/String;

    return-void
.end method

.method public final setSoftkey(LQQPIM/SoftKey;)V
    .locals 0

    iput-object p1, p0, LQQPIM/ADInfo;->softkey:LQQPIM/SoftKey;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/ADInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LQQPIM/ADInfo;->adid:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/ADInfo;->picurl:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/ADInfo;->picalt:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/ADInfo;->softkey:LQQPIM/SoftKey;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LQQPIM/ADInfo;->description:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LQQPIM/ADInfo;->adtype:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/ADInfo;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/ADInfo;->url:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

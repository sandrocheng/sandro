.class public final LWUPSYNC/PhotoItem;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public luid:Ljava/lang/String;

.field public photoMd5:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LWUPSYNC/PhotoItem;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LWUPSYNC/PhotoItem;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/PhotoItem;->luid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/PhotoItem;->photoMd5:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/PhotoItem;->url:Ljava/lang/String;

    iget-object v0, p0, LWUPSYNC/PhotoItem;->luid:Ljava/lang/String;

    invoke-virtual {p0, v0}, LWUPSYNC/PhotoItem;->setLuid(Ljava/lang/String;)V

    iget-object v0, p0, LWUPSYNC/PhotoItem;->photoMd5:Ljava/lang/String;

    invoke-virtual {p0, v0}, LWUPSYNC/PhotoItem;->setPhotoMd5(Ljava/lang/String;)V

    iget-object v0, p0, LWUPSYNC/PhotoItem;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, LWUPSYNC/PhotoItem;->setUrl(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/PhotoItem;->luid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/PhotoItem;->photoMd5:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/PhotoItem;->url:Ljava/lang/String;

    invoke-virtual {p0, p1}, LWUPSYNC/PhotoItem;->setLuid(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, LWUPSYNC/PhotoItem;->setPhotoMd5(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LWUPSYNC/PhotoItem;->setUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "WUPSYNC.PhotoItem"

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

    sget-boolean v1, LWUPSYNC/PhotoItem;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LWUPSYNC/PhotoItem;->luid:Ljava/lang/String;

    const-string v2, "luid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LWUPSYNC/PhotoItem;->photoMd5:Ljava/lang/String;

    const-string v2, "photoMd5"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LWUPSYNC/PhotoItem;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LWUPSYNC/PhotoItem;

    iget-object v0, p0, LWUPSYNC/PhotoItem;->luid:Ljava/lang/String;

    iget-object v1, p1, LWUPSYNC/PhotoItem;->luid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/PhotoItem;->photoMd5:Ljava/lang/String;

    iget-object v1, p1, LWUPSYNC/PhotoItem;->photoMd5:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/PhotoItem;->url:Ljava/lang/String;

    iget-object v1, p1, LWUPSYNC/PhotoItem;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getLuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LWUPSYNC/PhotoItem;->luid:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhotoMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LWUPSYNC/PhotoItem;->photoMd5:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LWUPSYNC/PhotoItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/PhotoItem;->luid:Ljava/lang/String;

    invoke-virtual {p1, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/PhotoItem;->photoMd5:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/PhotoItem;->url:Ljava/lang/String;

    return-void
.end method

.method public final setLuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LWUPSYNC/PhotoItem;->luid:Ljava/lang/String;

    return-void
.end method

.method public final setPhotoMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LWUPSYNC/PhotoItem;->photoMd5:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LWUPSYNC/PhotoItem;->url:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LWUPSYNC/PhotoItem;->luid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LWUPSYNC/PhotoItem;->photoMd5:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LWUPSYNC/PhotoItem;->url:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    return-void
.end method
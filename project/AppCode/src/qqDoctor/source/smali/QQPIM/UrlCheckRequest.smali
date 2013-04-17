.class public final LQQPIM/UrlCheckRequest;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public ext:Ljava/lang/String;

.field public seq:I

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/UrlCheckRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/UrlCheckRequest;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UrlCheckRequest;->url:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UrlCheckRequest;->ext:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/UrlCheckRequest;->seq:I

    iget-object v0, p0, LQQPIM/UrlCheckRequest;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/UrlCheckRequest;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/UrlCheckRequest;->ext:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/UrlCheckRequest;->setExt(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/UrlCheckRequest;->seq:I

    invoke-virtual {p0, v0}, LQQPIM/UrlCheckRequest;->setSeq(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UrlCheckRequest;->url:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/UrlCheckRequest;->ext:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/UrlCheckRequest;->seq:I

    invoke-virtual {p0, p1}, LQQPIM/UrlCheckRequest;->setUrl(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, LQQPIM/UrlCheckRequest;->setExt(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LQQPIM/UrlCheckRequest;->setSeq(I)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.UrlCheckRequest"

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

    sget-boolean v1, LQQPIM/UrlCheckRequest;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/UrlCheckRequest;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/UrlCheckRequest;->ext:Ljava/lang/String;

    const-string v2, "ext"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/UrlCheckRequest;->seq:I

    const-string v2, "seq"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LQQPIM/UrlCheckRequest;

    iget-object v0, p0, LQQPIM/UrlCheckRequest;->url:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/UrlCheckRequest;->url:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/UrlCheckRequest;->ext:Ljava/lang/String;

    iget-object v1, p1, LQQPIM/UrlCheckRequest;->ext:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LQQPIM/UrlCheckRequest;->seq:I

    iget v1, p1, LQQPIM/UrlCheckRequest;->seq:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getExt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/UrlCheckRequest;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public final getSeq()I
    .locals 1

    iget v0, p0, LQQPIM/UrlCheckRequest;->seq:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/UrlCheckRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/UrlCheckRequest;->url:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/UrlCheckRequest;->ext:Ljava/lang/String;

    iget v0, p0, LQQPIM/UrlCheckRequest;->seq:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/UrlCheckRequest;->seq:I

    return-void
.end method

.method public final setExt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/UrlCheckRequest;->ext:Ljava/lang/String;

    return-void
.end method

.method public final setSeq(I)V
    .locals 0

    iput p1, p0, LQQPIM/UrlCheckRequest;->seq:I

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/UrlCheckRequest;->url:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/UrlCheckRequest;->url:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/UrlCheckRequest;->ext:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/UrlCheckRequest;->ext:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget v0, p0, LQQPIM/UrlCheckRequest;->seq:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method

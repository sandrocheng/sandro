.class public final LQQPIM/NotifyInfo;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_featurekey:LQQPIM/FeatureKey;


# instance fields
.field public content:Ljava/lang/String;

.field public featurekey:LQQPIM/FeatureKey;

.field public infoType:I

.field public reportType:I

.field public timestamp:I

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/NotifyInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/NotifyInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/NotifyInfo;->featurekey:LQQPIM/FeatureKey;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/NotifyInfo;->title:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/NotifyInfo;->content:Ljava/lang/String;

    iput v1, p0, LQQPIM/NotifyInfo;->timestamp:I

    iput v1, p0, LQQPIM/NotifyInfo;->reportType:I

    iput v1, p0, LQQPIM/NotifyInfo;->infoType:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/NotifyInfo;->url:Ljava/lang/String;

    iget-object v0, p0, LQQPIM/NotifyInfo;->featurekey:LQQPIM/FeatureKey;

    invoke-virtual {p0, v0}, LQQPIM/NotifyInfo;->setFeaturekey(LQQPIM/FeatureKey;)V

    iget-object v0, p0, LQQPIM/NotifyInfo;->title:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/NotifyInfo;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/NotifyInfo;->content:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/NotifyInfo;->setContent(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/NotifyInfo;->timestamp:I

    invoke-virtual {p0, v0}, LQQPIM/NotifyInfo;->setTimestamp(I)V

    iget v0, p0, LQQPIM/NotifyInfo;->reportType:I

    invoke-virtual {p0, v0}, LQQPIM/NotifyInfo;->setReportType(I)V

    iget v0, p0, LQQPIM/NotifyInfo;->infoType:I

    invoke-virtual {p0, v0}, LQQPIM/NotifyInfo;->setInfoType(I)V

    iget-object v0, p0, LQQPIM/NotifyInfo;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/NotifyInfo;->setUrl(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(LQQPIM/FeatureKey;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/NotifyInfo;->featurekey:LQQPIM/FeatureKey;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/NotifyInfo;->title:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/NotifyInfo;->content:Ljava/lang/String;

    iput v1, p0, LQQPIM/NotifyInfo;->timestamp:I

    iput v1, p0, LQQPIM/NotifyInfo;->reportType:I

    iput v1, p0, LQQPIM/NotifyInfo;->infoType:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/NotifyInfo;->url:Ljava/lang/String;

    invoke-virtual {p0, p1}, LQQPIM/NotifyInfo;->setFeaturekey(LQQPIM/FeatureKey;)V

    invoke-virtual {p0, p2}, LQQPIM/NotifyInfo;->setTitle(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LQQPIM/NotifyInfo;->setContent(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LQQPIM/NotifyInfo;->setTimestamp(I)V

    invoke-virtual {p0, p5}, LQQPIM/NotifyInfo;->setReportType(I)V

    invoke-virtual {p0, p6}, LQQPIM/NotifyInfo;->setInfoType(I)V

    invoke-virtual {p0, p7}, LQQPIM/NotifyInfo;->setUrl(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.NotifyInfo"

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

    sget-boolean v1, LQQPIM/NotifyInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/NotifyInfo;->featurekey:LQQPIM/FeatureKey;

    const-string v2, "featurekey"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/NotifyInfo;->title:Ljava/lang/String;

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/NotifyInfo;->content:Ljava/lang/String;

    const-string v2, "content"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/NotifyInfo;->timestamp:I

    const-string v2, "timestamp"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/NotifyInfo;->reportType:I

    const-string v2, "reportType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/NotifyInfo;->infoType:I

    const-string v2, "infoType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/NotifyInfo;->url:Ljava/lang/String;

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
    check-cast p1, LQQPIM/NotifyInfo;

    iget-object v1, p0, LQQPIM/NotifyInfo;->featurekey:LQQPIM/FeatureKey;

    iget-object v2, p1, LQQPIM/NotifyInfo;->featurekey:LQQPIM/FeatureKey;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/NotifyInfo;->title:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/NotifyInfo;->title:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/NotifyInfo;->content:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/NotifyInfo;->content:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/NotifyInfo;->timestamp:I

    iget v2, p1, LQQPIM/NotifyInfo;->timestamp:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/NotifyInfo;->reportType:I

    iget v2, p1, LQQPIM/NotifyInfo;->reportType:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/NotifyInfo;->infoType:I

    iget v2, p1, LQQPIM/NotifyInfo;->infoType:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/NotifyInfo;->url:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/NotifyInfo;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.NotifyInfo"

    return-object v0
.end method

.method public final getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/NotifyInfo;->content:Ljava/lang/String;

    return-object v0
.end method

.method public final getFeaturekey()LQQPIM/FeatureKey;
    .locals 1

    iget-object v0, p0, LQQPIM/NotifyInfo;->featurekey:LQQPIM/FeatureKey;

    return-object v0
.end method

.method public final getInfoType()I
    .locals 1

    iget v0, p0, LQQPIM/NotifyInfo;->infoType:I

    return v0
.end method

.method public final getReportType()I
    .locals 1

    iget v0, p0, LQQPIM/NotifyInfo;->reportType:I

    return v0
.end method

.method public final getTimestamp()I
    .locals 1

    iget v0, p0, LQQPIM/NotifyInfo;->timestamp:I

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/NotifyInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/NotifyInfo;->url:Ljava/lang/String;

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

    sget-object v0, LQQPIM/NotifyInfo;->cache_featurekey:LQQPIM/FeatureKey;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/FeatureKey;

    invoke-direct {v0}, LQQPIM/FeatureKey;-><init>()V

    sput-object v0, LQQPIM/NotifyInfo;->cache_featurekey:LQQPIM/FeatureKey;

    :cond_0
    sget-object v0, LQQPIM/NotifyInfo;->cache_featurekey:LQQPIM/FeatureKey;

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LQQPIM/FeatureKey;

    iput-object v0, p0, LQQPIM/NotifyInfo;->featurekey:LQQPIM/FeatureKey;

    invoke-virtual {p1, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/NotifyInfo;->title:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/NotifyInfo;->content:Ljava/lang/String;

    iget v0, p0, LQQPIM/NotifyInfo;->timestamp:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/NotifyInfo;->timestamp:I

    iget v0, p0, LQQPIM/NotifyInfo;->reportType:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/NotifyInfo;->reportType:I

    iget v0, p0, LQQPIM/NotifyInfo;->infoType:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/NotifyInfo;->infoType:I

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/NotifyInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public final setContent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/NotifyInfo;->content:Ljava/lang/String;

    return-void
.end method

.method public final setFeaturekey(LQQPIM/FeatureKey;)V
    .locals 0

    iput-object p1, p0, LQQPIM/NotifyInfo;->featurekey:LQQPIM/FeatureKey;

    return-void
.end method

.method public final setInfoType(I)V
    .locals 0

    iput p1, p0, LQQPIM/NotifyInfo;->infoType:I

    return-void
.end method

.method public final setReportType(I)V
    .locals 0

    iput p1, p0, LQQPIM/NotifyInfo;->reportType:I

    return-void
.end method

.method public final setTimestamp(I)V
    .locals 0

    iput p1, p0, LQQPIM/NotifyInfo;->timestamp:I

    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/NotifyInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/NotifyInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/NotifyInfo;->featurekey:LQQPIM/FeatureKey;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LQQPIM/NotifyInfo;->title:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/NotifyInfo;->content:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LQQPIM/NotifyInfo;->timestamp:I

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/NotifyInfo;->reportType:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/NotifyInfo;->infoType:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/NotifyInfo;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/NotifyInfo;->url:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

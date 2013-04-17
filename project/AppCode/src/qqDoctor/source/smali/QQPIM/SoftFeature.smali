.class public final LQQPIM/SoftFeature;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_featureKey:LQQPIM/FeatureKey;

.field static cache_localSafeType:I

.field static cache_vecFeatureItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/FeatureItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public appid:I

.field public category:I

.field public engineVersion:I

.field public featureKey:LQQPIM/FeatureKey;

.field public isBuildIn:Z

.field public localSafeType:I

.field public localVirusID:I

.field public localVirusName:Ljava/lang/String;

.field public position:I

.field public requestType:I

.field public softDescTimestamp:I

.field public vecFeatureItem:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/FeatureItem;",
            ">;"
        }
    .end annotation
.end field

.field public virusDescTimestamp:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/SoftFeature;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/SoftFeature;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, LQQPIM/SoftFeature;->featureKey:LQQPIM/FeatureKey;

    iput v1, p0, LQQPIM/SoftFeature;->softDescTimestamp:I

    iput v1, p0, LQQPIM/SoftFeature;->virusDescTimestamp:I

    iput-object v0, p0, LQQPIM/SoftFeature;->vecFeatureItem:Ljava/util/ArrayList;

    iput v1, p0, LQQPIM/SoftFeature;->requestType:I

    iput-boolean v1, p0, LQQPIM/SoftFeature;->isBuildIn:Z

    iput v1, p0, LQQPIM/SoftFeature;->category:I

    iput v1, p0, LQQPIM/SoftFeature;->position:I

    iput v1, p0, LQQPIM/SoftFeature;->engineVersion:I

    iput v1, p0, LQQPIM/SoftFeature;->localSafeType:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftFeature;->localVirusName:Ljava/lang/String;

    iput v1, p0, LQQPIM/SoftFeature;->localVirusID:I

    iput v1, p0, LQQPIM/SoftFeature;->appid:I

    iget-object v0, p0, LQQPIM/SoftFeature;->featureKey:LQQPIM/FeatureKey;

    invoke-virtual {p0, v0}, LQQPIM/SoftFeature;->setFeatureKey(LQQPIM/FeatureKey;)V

    iget v0, p0, LQQPIM/SoftFeature;->softDescTimestamp:I

    invoke-virtual {p0, v0}, LQQPIM/SoftFeature;->setSoftDescTimestamp(I)V

    iget v0, p0, LQQPIM/SoftFeature;->virusDescTimestamp:I

    invoke-virtual {p0, v0}, LQQPIM/SoftFeature;->setVirusDescTimestamp(I)V

    iget-object v0, p0, LQQPIM/SoftFeature;->vecFeatureItem:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/SoftFeature;->setVecFeatureItem(Ljava/util/ArrayList;)V

    iget v0, p0, LQQPIM/SoftFeature;->requestType:I

    invoke-virtual {p0, v0}, LQQPIM/SoftFeature;->setRequestType(I)V

    iget-boolean v0, p0, LQQPIM/SoftFeature;->isBuildIn:Z

    invoke-virtual {p0, v0}, LQQPIM/SoftFeature;->setIsBuildIn(Z)V

    iget v0, p0, LQQPIM/SoftFeature;->category:I

    invoke-virtual {p0, v0}, LQQPIM/SoftFeature;->setCategory(I)V

    iget v0, p0, LQQPIM/SoftFeature;->position:I

    invoke-virtual {p0, v0}, LQQPIM/SoftFeature;->setPosition(I)V

    iget v0, p0, LQQPIM/SoftFeature;->engineVersion:I

    invoke-virtual {p0, v0}, LQQPIM/SoftFeature;->setEngineVersion(I)V

    iget v0, p0, LQQPIM/SoftFeature;->localSafeType:I

    invoke-virtual {p0, v0}, LQQPIM/SoftFeature;->setLocalSafeType(I)V

    iget-object v0, p0, LQQPIM/SoftFeature;->localVirusName:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SoftFeature;->setLocalVirusName(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/SoftFeature;->localVirusID:I

    invoke-virtual {p0, v0}, LQQPIM/SoftFeature;->setLocalVirusID(I)V

    iget v0, p0, LQQPIM/SoftFeature;->appid:I

    invoke-virtual {p0, v0}, LQQPIM/SoftFeature;->setAppid(I)V

    return-void
.end method

.method public constructor <init>(LQQPIM/FeatureKey;IILjava/util/ArrayList;IZIIIILjava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/FeatureKey;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/FeatureItem;",
            ">;IZIIII",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, LQQPIM/SoftFeature;->featureKey:LQQPIM/FeatureKey;

    iput v1, p0, LQQPIM/SoftFeature;->softDescTimestamp:I

    iput v1, p0, LQQPIM/SoftFeature;->virusDescTimestamp:I

    iput-object v0, p0, LQQPIM/SoftFeature;->vecFeatureItem:Ljava/util/ArrayList;

    iput v1, p0, LQQPIM/SoftFeature;->requestType:I

    iput-boolean v1, p0, LQQPIM/SoftFeature;->isBuildIn:Z

    iput v1, p0, LQQPIM/SoftFeature;->category:I

    iput v1, p0, LQQPIM/SoftFeature;->position:I

    iput v1, p0, LQQPIM/SoftFeature;->engineVersion:I

    iput v1, p0, LQQPIM/SoftFeature;->localSafeType:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftFeature;->localVirusName:Ljava/lang/String;

    iput v1, p0, LQQPIM/SoftFeature;->localVirusID:I

    iput v1, p0, LQQPIM/SoftFeature;->appid:I

    invoke-virtual {p0, p1}, LQQPIM/SoftFeature;->setFeatureKey(LQQPIM/FeatureKey;)V

    invoke-virtual {p0, p2}, LQQPIM/SoftFeature;->setSoftDescTimestamp(I)V

    invoke-virtual {p0, p3}, LQQPIM/SoftFeature;->setVirusDescTimestamp(I)V

    invoke-virtual {p0, p4}, LQQPIM/SoftFeature;->setVecFeatureItem(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p5}, LQQPIM/SoftFeature;->setRequestType(I)V

    invoke-virtual {p0, p6}, LQQPIM/SoftFeature;->setIsBuildIn(Z)V

    invoke-virtual {p0, p7}, LQQPIM/SoftFeature;->setCategory(I)V

    invoke-virtual {p0, p8}, LQQPIM/SoftFeature;->setPosition(I)V

    invoke-virtual {p0, p9}, LQQPIM/SoftFeature;->setEngineVersion(I)V

    invoke-virtual {p0, p10}, LQQPIM/SoftFeature;->setLocalSafeType(I)V

    invoke-virtual {p0, p11}, LQQPIM/SoftFeature;->setLocalVirusName(Ljava/lang/String;)V

    invoke-virtual {p0, p12}, LQQPIM/SoftFeature;->setLocalVirusID(I)V

    invoke-virtual {p0, p13}, LQQPIM/SoftFeature;->setAppid(I)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.SoftFeature"

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

    sget-boolean v1, LQQPIM/SoftFeature;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/SoftFeature;->featureKey:LQQPIM/FeatureKey;

    const-string v2, "featureKey"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftFeature;->softDescTimestamp:I

    const-string v2, "softDescTimestamp"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftFeature;->virusDescTimestamp:I

    const-string v2, "virusDescTimestamp"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftFeature;->vecFeatureItem:Ljava/util/ArrayList;

    const-string v2, "vecFeatureItem"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftFeature;->requestType:I

    const-string v2, "requestType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-boolean v1, p0, LQQPIM/SoftFeature;->isBuildIn:Z

    const-string v2, "isBuildIn"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ZLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftFeature;->category:I

    const-string v2, "category"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftFeature;->position:I

    const-string v2, "position"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftFeature;->engineVersion:I

    const-string v2, "engineVersion"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftFeature;->localSafeType:I

    const-string v2, "localSafeType"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftFeature;->localVirusName:Ljava/lang/String;

    const-string v2, "localVirusName"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftFeature;->localVirusID:I

    const-string v2, "localVirusID"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftFeature;->appid:I

    const-string v2, "appid"

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
    check-cast p1, LQQPIM/SoftFeature;

    iget-object v1, p0, LQQPIM/SoftFeature;->featureKey:LQQPIM/FeatureKey;

    iget-object v2, p1, LQQPIM/SoftFeature;->featureKey:LQQPIM/FeatureKey;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftFeature;->softDescTimestamp:I

    iget v2, p1, LQQPIM/SoftFeature;->softDescTimestamp:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftFeature;->virusDescTimestamp:I

    iget v2, p1, LQQPIM/SoftFeature;->virusDescTimestamp:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftFeature;->vecFeatureItem:Ljava/util/ArrayList;

    iget-object v2, p1, LQQPIM/SoftFeature;->vecFeatureItem:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftFeature;->requestType:I

    iget v2, p1, LQQPIM/SoftFeature;->requestType:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, LQQPIM/SoftFeature;->isBuildIn:Z

    iget-boolean v2, p1, LQQPIM/SoftFeature;->isBuildIn:Z

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftFeature;->category:I

    iget v2, p1, LQQPIM/SoftFeature;->category:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftFeature;->position:I

    iget v2, p1, LQQPIM/SoftFeature;->position:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftFeature;->engineVersion:I

    iget v2, p1, LQQPIM/SoftFeature;->engineVersion:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftFeature;->localSafeType:I

    iget v2, p1, LQQPIM/SoftFeature;->localSafeType:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftFeature;->localVirusName:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftFeature;->localVirusName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftFeature;->localVirusID:I

    iget v2, p1, LQQPIM/SoftFeature;->localVirusID:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftFeature;->appid:I

    iget v2, p1, LQQPIM/SoftFeature;->appid:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.SoftFeature"

    return-object v0
.end method

.method public final getAppid()I
    .locals 1

    iget v0, p0, LQQPIM/SoftFeature;->appid:I

    return v0
.end method

.method public final getCategory()I
    .locals 1

    iget v0, p0, LQQPIM/SoftFeature;->category:I

    return v0
.end method

.method public final getEngineVersion()I
    .locals 1

    iget v0, p0, LQQPIM/SoftFeature;->engineVersion:I

    return v0
.end method

.method public final getFeatureKey()LQQPIM/FeatureKey;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftFeature;->featureKey:LQQPIM/FeatureKey;

    return-object v0
.end method

.method public final getIsBuildIn()Z
    .locals 1

    iget-boolean v0, p0, LQQPIM/SoftFeature;->isBuildIn:Z

    return v0
.end method

.method public final getLocalSafeType()I
    .locals 1

    iget v0, p0, LQQPIM/SoftFeature;->localSafeType:I

    return v0
.end method

.method public final getLocalVirusID()I
    .locals 1

    iget v0, p0, LQQPIM/SoftFeature;->localVirusID:I

    return v0
.end method

.method public final getLocalVirusName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftFeature;->localVirusName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPosition()I
    .locals 1

    iget v0, p0, LQQPIM/SoftFeature;->position:I

    return v0
.end method

.method public final getRequestType()I
    .locals 1

    iget v0, p0, LQQPIM/SoftFeature;->requestType:I

    return v0
.end method

.method public final getSoftDescTimestamp()I
    .locals 1

    iget v0, p0, LQQPIM/SoftFeature;->softDescTimestamp:I

    return v0
.end method

.method public final getVecFeatureItem()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/FeatureItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LQQPIM/SoftFeature;->vecFeatureItem:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getVirusDescTimestamp()I
    .locals 1

    iget v0, p0, LQQPIM/SoftFeature;->virusDescTimestamp:I

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
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, LQQPIM/SoftFeature;->cache_featureKey:LQQPIM/FeatureKey;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/FeatureKey;

    invoke-direct {v0}, LQQPIM/FeatureKey;-><init>()V

    sput-object v0, LQQPIM/SoftFeature;->cache_featureKey:LQQPIM/FeatureKey;

    :cond_0
    sget-object v0, LQQPIM/SoftFeature;->cache_featureKey:LQQPIM/FeatureKey;

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LQQPIM/FeatureKey;

    iput-object v0, p0, LQQPIM/SoftFeature;->featureKey:LQQPIM/FeatureKey;

    iget v0, p0, LQQPIM/SoftFeature;->softDescTimestamp:I

    invoke-virtual {p1, v0, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftFeature;->softDescTimestamp:I

    iget v0, p0, LQQPIM/SoftFeature;->virusDescTimestamp:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftFeature;->virusDescTimestamp:I

    sget-object v0, LQQPIM/SoftFeature;->cache_vecFeatureItem:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/SoftFeature;->cache_vecFeatureItem:Ljava/util/ArrayList;

    new-instance v0, LQQPIM/FeatureItem;

    invoke-direct {v0}, LQQPIM/FeatureItem;-><init>()V

    sget-object v1, LQQPIM/SoftFeature;->cache_vecFeatureItem:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, LQQPIM/SoftFeature;->cache_vecFeatureItem:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/SoftFeature;->setVecFeatureItem(Ljava/util/ArrayList;)V

    iget v0, p0, LQQPIM/SoftFeature;->requestType:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftFeature;->setRequestType(I)V

    iget-boolean v0, p0, LQQPIM/SoftFeature;->isBuildIn:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(ZIZ)Z

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftFeature;->setIsBuildIn(Z)V

    iget v0, p0, LQQPIM/SoftFeature;->category:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftFeature;->setCategory(I)V

    iget v0, p0, LQQPIM/SoftFeature;->position:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftFeature;->setPosition(I)V

    iget v0, p0, LQQPIM/SoftFeature;->engineVersion:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftFeature;->setEngineVersion(I)V

    iget v0, p0, LQQPIM/SoftFeature;->localSafeType:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftFeature;->setLocalSafeType(I)V

    const/16 v0, 0xa

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/SoftFeature;->setLocalVirusName(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/SoftFeature;->localVirusID:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftFeature;->setLocalVirusID(I)V

    iget v0, p0, LQQPIM/SoftFeature;->appid:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftFeature;->setAppid(I)V

    return-void
.end method

.method public final setAppid(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftFeature;->appid:I

    return-void
.end method

.method public final setCategory(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftFeature;->category:I

    return-void
.end method

.method public final setEngineVersion(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftFeature;->engineVersion:I

    return-void
.end method

.method public final setFeatureKey(LQQPIM/FeatureKey;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftFeature;->featureKey:LQQPIM/FeatureKey;

    return-void
.end method

.method public final setIsBuildIn(Z)V
    .locals 0

    iput-boolean p1, p0, LQQPIM/SoftFeature;->isBuildIn:Z

    return-void
.end method

.method public final setLocalSafeType(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftFeature;->localSafeType:I

    return-void
.end method

.method public final setLocalVirusID(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftFeature;->localVirusID:I

    return-void
.end method

.method public final setLocalVirusName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftFeature;->localVirusName:Ljava/lang/String;

    return-void
.end method

.method public final setPosition(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftFeature;->position:I

    return-void
.end method

.method public final setRequestType(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftFeature;->requestType:I

    return-void
.end method

.method public final setSoftDescTimestamp(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftFeature;->softDescTimestamp:I

    return-void
.end method

.method public final setVecFeatureItem(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/FeatureItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LQQPIM/SoftFeature;->vecFeatureItem:Ljava/util/ArrayList;

    return-void
.end method

.method public final setVirusDescTimestamp(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftFeature;->virusDescTimestamp:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/SoftFeature;->featureKey:LQQPIM/FeatureKey;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget v0, p0, LQQPIM/SoftFeature;->softDescTimestamp:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftFeature;->virusDescTimestamp:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/SoftFeature;->vecFeatureItem:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftFeature;->vecFeatureItem:Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_0
    iget v0, p0, LQQPIM/SoftFeature;->requestType:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-boolean v0, p0, LQQPIM/SoftFeature;->isBuildIn:Z

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(ZI)V

    iget v0, p0, LQQPIM/SoftFeature;->category:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftFeature;->position:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftFeature;->engineVersion:I

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftFeature;->localSafeType:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/SoftFeature;->localVirusName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/SoftFeature;->localVirusName:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, LQQPIM/SoftFeature;->localVirusID:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftFeature;->appid:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method

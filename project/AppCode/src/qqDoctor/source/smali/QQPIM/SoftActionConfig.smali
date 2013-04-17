.class public final LQQPIM/SoftActionConfig;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_actionLevel:I

.field static cache_featureKey:LQQPIM/FeatureKey;


# instance fields
.field public actionLevel:I

.field public featureKey:LQQPIM/FeatureKey;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/SoftActionConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/SoftActionConfig;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/SoftActionConfig;->featureKey:LQQPIM/FeatureKey;

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/SoftActionConfig;->actionLevel:I

    iget-object v0, p0, LQQPIM/SoftActionConfig;->featureKey:LQQPIM/FeatureKey;

    invoke-virtual {p0, v0}, LQQPIM/SoftActionConfig;->setFeatureKey(LQQPIM/FeatureKey;)V

    iget v0, p0, LQQPIM/SoftActionConfig;->actionLevel:I

    invoke-virtual {p0, v0}, LQQPIM/SoftActionConfig;->setActionLevel(I)V

    return-void
.end method

.method public constructor <init>(LQQPIM/FeatureKey;I)V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/SoftActionConfig;->featureKey:LQQPIM/FeatureKey;

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/SoftActionConfig;->actionLevel:I

    invoke-virtual {p0, p1}, LQQPIM/SoftActionConfig;->setFeatureKey(LQQPIM/FeatureKey;)V

    invoke-virtual {p0, p2}, LQQPIM/SoftActionConfig;->setActionLevel(I)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.SoftActionConfig"

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

    sget-boolean v1, LQQPIM/SoftActionConfig;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/SoftActionConfig;->featureKey:LQQPIM/FeatureKey;

    const-string v2, "featureKey"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftActionConfig;->actionLevel:I

    const-string v2, "actionLevel"

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
    check-cast p1, LQQPIM/SoftActionConfig;

    iget-object v1, p0, LQQPIM/SoftActionConfig;->featureKey:LQQPIM/FeatureKey;

    iget-object v2, p1, LQQPIM/SoftActionConfig;->featureKey:LQQPIM/FeatureKey;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftActionConfig;->actionLevel:I

    iget v2, p1, LQQPIM/SoftActionConfig;->actionLevel:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.SoftActionConfig"

    return-object v0
.end method

.method public final getActionLevel()I
    .locals 1

    iget v0, p0, LQQPIM/SoftActionConfig;->actionLevel:I

    return v0
.end method

.method public final getFeatureKey()LQQPIM/FeatureKey;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftActionConfig;->featureKey:LQQPIM/FeatureKey;

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

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, LQQPIM/SoftActionConfig;->cache_featureKey:LQQPIM/FeatureKey;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/FeatureKey;

    invoke-direct {v0}, LQQPIM/FeatureKey;-><init>()V

    sput-object v0, LQQPIM/SoftActionConfig;->cache_featureKey:LQQPIM/FeatureKey;

    :cond_0
    sget-object v0, LQQPIM/SoftActionConfig;->cache_featureKey:LQQPIM/FeatureKey;

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LQQPIM/FeatureKey;

    iput-object v0, p0, LQQPIM/SoftActionConfig;->featureKey:LQQPIM/FeatureKey;

    iget v0, p0, LQQPIM/SoftActionConfig;->actionLevel:I

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftActionConfig;->actionLevel:I

    return-void
.end method

.method public final setActionLevel(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftActionConfig;->actionLevel:I

    return-void
.end method

.method public final setFeatureKey(LQQPIM/FeatureKey;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftActionConfig;->featureKey:LQQPIM/FeatureKey;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/SoftActionConfig;->featureKey:LQQPIM/FeatureKey;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget v0, p0, LQQPIM/SoftActionConfig;->actionLevel:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method

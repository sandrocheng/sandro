.class public final LQQPIM/SoftAction;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_featurekey:LQQPIM/FeatureKey;

.field static cache_vecaction:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ActionItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public actionID:I

.field public featurekey:LQQPIM/FeatureKey;

.field public vecaction:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ActionItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/SoftAction;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/SoftAction;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, LQQPIM/SoftAction;->featurekey:LQQPIM/FeatureKey;

    iput-object v0, p0, LQQPIM/SoftAction;->vecaction:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/SoftAction;->actionID:I

    iget-object v0, p0, LQQPIM/SoftAction;->featurekey:LQQPIM/FeatureKey;

    invoke-virtual {p0, v0}, LQQPIM/SoftAction;->setFeaturekey(LQQPIM/FeatureKey;)V

    iget-object v0, p0, LQQPIM/SoftAction;->vecaction:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/SoftAction;->setVecaction(Ljava/util/ArrayList;)V

    iget v0, p0, LQQPIM/SoftAction;->actionID:I

    invoke-virtual {p0, v0}, LQQPIM/SoftAction;->setActionID(I)V

    return-void
.end method

.method public constructor <init>(LQQPIM/FeatureKey;Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LQQPIM/FeatureKey;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ActionItem;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, LQQPIM/SoftAction;->featurekey:LQQPIM/FeatureKey;

    iput-object v0, p0, LQQPIM/SoftAction;->vecaction:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, LQQPIM/SoftAction;->actionID:I

    invoke-virtual {p0, p1}, LQQPIM/SoftAction;->setFeaturekey(LQQPIM/FeatureKey;)V

    invoke-virtual {p0, p2}, LQQPIM/SoftAction;->setVecaction(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p3}, LQQPIM/SoftAction;->setActionID(I)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.SoftAction"

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

    sget-boolean v1, LQQPIM/SoftAction;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/SoftAction;->featurekey:LQQPIM/FeatureKey;

    const-string v2, "featurekey"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftAction;->vecaction:Ljava/util/ArrayList;

    const-string v2, "vecaction"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftAction;->actionID:I

    const-string v2, "actionID"

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
    check-cast p1, LQQPIM/SoftAction;

    iget-object v1, p0, LQQPIM/SoftAction;->featurekey:LQQPIM/FeatureKey;

    iget-object v2, p1, LQQPIM/SoftAction;->featurekey:LQQPIM/FeatureKey;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftAction;->vecaction:Ljava/util/ArrayList;

    iget-object v2, p1, LQQPIM/SoftAction;->vecaction:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/SoftAction;->actionID:I

    iget v2, p1, LQQPIM/SoftAction;->actionID:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.SoftAction"

    return-object v0
.end method

.method public final getActionID()I
    .locals 1

    iget v0, p0, LQQPIM/SoftAction;->actionID:I

    return v0
.end method

.method public final getFeaturekey()LQQPIM/FeatureKey;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftAction;->featurekey:LQQPIM/FeatureKey;

    return-object v0
.end method

.method public final getVecaction()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ActionItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LQQPIM/SoftAction;->vecaction:Ljava/util/ArrayList;

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

    sget-object v0, LQQPIM/SoftAction;->cache_featurekey:LQQPIM/FeatureKey;

    if-nez v0, :cond_0

    new-instance v0, LQQPIM/FeatureKey;

    invoke-direct {v0}, LQQPIM/FeatureKey;-><init>()V

    sput-object v0, LQQPIM/SoftAction;->cache_featurekey:LQQPIM/FeatureKey;

    :cond_0
    sget-object v0, LQQPIM/SoftAction;->cache_featurekey:LQQPIM/FeatureKey;

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LQQPIM/FeatureKey;

    iput-object v0, p0, LQQPIM/SoftAction;->featurekey:LQQPIM/FeatureKey;

    sget-object v0, LQQPIM/SoftAction;->cache_vecaction:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/SoftAction;->cache_vecaction:Ljava/util/ArrayList;

    new-instance v0, LQQPIM/ActionItem;

    invoke-direct {v0}, LQQPIM/ActionItem;-><init>()V

    sget-object v1, LQQPIM/SoftAction;->cache_vecaction:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, LQQPIM/SoftAction;->cache_vecaction:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/SoftAction;->setVecaction(Ljava/util/ArrayList;)V

    iget v0, p0, LQQPIM/SoftAction;->actionID:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/SoftAction;->setActionID(I)V

    return-void
.end method

.method public final setActionID(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftAction;->actionID:I

    return-void
.end method

.method public final setFeaturekey(LQQPIM/FeatureKey;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftAction;->featurekey:LQQPIM/FeatureKey;

    return-void
.end method

.method public final setVecaction(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/ActionItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LQQPIM/SoftAction;->vecaction:Ljava/util/ArrayList;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/SoftAction;->featurekey:LQQPIM/FeatureKey;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LQQPIM/SoftAction;->vecaction:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    iget v0, p0, LQQPIM/SoftAction;->actionID:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method

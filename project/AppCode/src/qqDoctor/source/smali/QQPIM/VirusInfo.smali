.class public final LQQPIM/VirusInfo;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_features:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/VirusFeature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public advice:I

.field public description:Ljava/lang/String;

.field public features:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/VirusFeature;",
            ">;"
        }
    .end annotation
.end field

.field public id:I

.field public label:Ljava/lang/String;

.field public level:I

.field public method:I

.field public name:Ljava/lang/String;

.field public optype:I

.field public ostype:B

.field public pkgnum:I

.field public safetype:I

.field public scantype:I

.field public timestamp:I

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/VirusInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/VirusInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput v1, p0, LQQPIM/VirusInfo;->id:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/VirusInfo;->name:Ljava/lang/String;

    iput v1, p0, LQQPIM/VirusInfo;->timestamp:I

    iput-byte v1, p0, LQQPIM/VirusInfo;->ostype:B

    const-string v0, ""

    iput-object v0, p0, LQQPIM/VirusInfo;->description:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, LQQPIM/VirusInfo;->features:Ljava/util/ArrayList;

    iput v1, p0, LQQPIM/VirusInfo;->safetype:I

    iput v1, p0, LQQPIM/VirusInfo;->advice:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/VirusInfo;->label:Ljava/lang/String;

    iput v1, p0, LQQPIM/VirusInfo;->optype:I

    iput v1, p0, LQQPIM/VirusInfo;->scantype:I

    iput v1, p0, LQQPIM/VirusInfo;->level:I

    iput v1, p0, LQQPIM/VirusInfo;->method:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/VirusInfo;->url:Ljava/lang/String;

    iput v1, p0, LQQPIM/VirusInfo;->pkgnum:I

    iget v0, p0, LQQPIM/VirusInfo;->id:I

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setId(I)V

    iget-object v0, p0, LQQPIM/VirusInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setName(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/VirusInfo;->timestamp:I

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setTimestamp(I)V

    iget-byte v0, p0, LQQPIM/VirusInfo;->ostype:B

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setOstype(B)V

    iget-object v0, p0, LQQPIM/VirusInfo;->description:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setDescription(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/VirusInfo;->features:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setFeatures(Ljava/util/ArrayList;)V

    iget v0, p0, LQQPIM/VirusInfo;->safetype:I

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setSafetype(I)V

    iget v0, p0, LQQPIM/VirusInfo;->advice:I

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setAdvice(I)V

    iget-object v0, p0, LQQPIM/VirusInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setLabel(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/VirusInfo;->optype:I

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setOptype(I)V

    iget v0, p0, LQQPIM/VirusInfo;->scantype:I

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setScantype(I)V

    iget v0, p0, LQQPIM/VirusInfo;->level:I

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setLevel(I)V

    iget v0, p0, LQQPIM/VirusInfo;->method:I

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setMethod(I)V

    iget-object v0, p0, LQQPIM/VirusInfo;->url:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setUrl(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/VirusInfo;->pkgnum:I

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setPkgnum(I)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IBLjava/lang/String;Ljava/util/ArrayList;IILjava/lang/String;IIIILjava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "IB",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/VirusFeature;",
            ">;II",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/VirusInfo;->id:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/VirusInfo;->name:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/VirusInfo;->timestamp:I

    const/4 v1, 0x0

    iput-byte v1, p0, LQQPIM/VirusInfo;->ostype:B

    const-string v1, ""

    iput-object v1, p0, LQQPIM/VirusInfo;->description:Ljava/lang/String;

    const/4 v1, 0x0

    iput-object v1, p0, LQQPIM/VirusInfo;->features:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/VirusInfo;->safetype:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/VirusInfo;->advice:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/VirusInfo;->label:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/VirusInfo;->optype:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/VirusInfo;->scantype:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/VirusInfo;->level:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/VirusInfo;->method:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/VirusInfo;->url:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/VirusInfo;->pkgnum:I

    invoke-virtual {p0, p1}, LQQPIM/VirusInfo;->setId(I)V

    invoke-virtual {p0, p2}, LQQPIM/VirusInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LQQPIM/VirusInfo;->setTimestamp(I)V

    invoke-virtual {p0, p4}, LQQPIM/VirusInfo;->setOstype(B)V

    invoke-virtual {p0, p5}, LQQPIM/VirusInfo;->setDescription(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, LQQPIM/VirusInfo;->setFeatures(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p7}, LQQPIM/VirusInfo;->setSafetype(I)V

    invoke-virtual {p0, p8}, LQQPIM/VirusInfo;->setAdvice(I)V

    invoke-virtual {p0, p9}, LQQPIM/VirusInfo;->setLabel(Ljava/lang/String;)V

    invoke-virtual {p0, p10}, LQQPIM/VirusInfo;->setOptype(I)V

    invoke-virtual {p0, p11}, LQQPIM/VirusInfo;->setScantype(I)V

    invoke-virtual {p0, p12}, LQQPIM/VirusInfo;->setLevel(I)V

    invoke-virtual {p0, p13}, LQQPIM/VirusInfo;->setMethod(I)V

    move-object/from16 v0, p14

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setUrl(Ljava/lang/String;)V

    move/from16 v0, p15

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setPkgnum(I)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.VirusInfo"

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

    sget-boolean v1, LQQPIM/VirusInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LQQPIM/VirusInfo;->id:I

    const-string v2, "id"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/VirusInfo;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/VirusInfo;->timestamp:I

    const-string v2, "timestamp"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-byte v1, p0, LQQPIM/VirusInfo;->ostype:B

    const-string v2, "ostype"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/VirusInfo;->description:Ljava/lang/String;

    const-string v2, "description"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/VirusInfo;->features:Ljava/util/ArrayList;

    const-string v2, "features"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/VirusInfo;->safetype:I

    const-string v2, "safetype"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/VirusInfo;->advice:I

    const-string v2, "advice"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/VirusInfo;->label:Ljava/lang/String;

    const-string v2, "label"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/VirusInfo;->optype:I

    const-string v2, "optype"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/VirusInfo;->scantype:I

    const-string v2, "scantype"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/VirusInfo;->level:I

    const-string v2, "level"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/VirusInfo;->method:I

    const-string v2, "method"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/VirusInfo;->url:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/VirusInfo;->pkgnum:I

    const-string v2, "pkgnum"

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
    check-cast p1, LQQPIM/VirusInfo;

    iget v1, p0, LQQPIM/VirusInfo;->id:I

    iget v2, p1, LQQPIM/VirusInfo;->id:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/VirusInfo;->name:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/VirusInfo;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/VirusInfo;->timestamp:I

    iget v2, p1, LQQPIM/VirusInfo;->timestamp:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-byte v1, p0, LQQPIM/VirusInfo;->ostype:B

    iget-byte v2, p1, LQQPIM/VirusInfo;->ostype:B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(BB)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/VirusInfo;->description:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/VirusInfo;->description:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/VirusInfo;->features:Ljava/util/ArrayList;

    iget-object v2, p1, LQQPIM/VirusInfo;->features:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/VirusInfo;->safetype:I

    iget v2, p1, LQQPIM/VirusInfo;->safetype:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/VirusInfo;->advice:I

    iget v2, p1, LQQPIM/VirusInfo;->advice:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/VirusInfo;->label:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/VirusInfo;->label:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/VirusInfo;->optype:I

    iget v2, p1, LQQPIM/VirusInfo;->optype:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/VirusInfo;->scantype:I

    iget v2, p1, LQQPIM/VirusInfo;->scantype:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/VirusInfo;->level:I

    iget v2, p1, LQQPIM/VirusInfo;->level:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/VirusInfo;->method:I

    iget v2, p1, LQQPIM/VirusInfo;->method:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/VirusInfo;->url:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/VirusInfo;->url:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, LQQPIM/VirusInfo;->pkgnum:I

    iget v2, p1, LQQPIM/VirusInfo;->pkgnum:I

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.VirusInfo"

    return-object v0
.end method

.method public final getAdvice()I
    .locals 1

    iget v0, p0, LQQPIM/VirusInfo;->advice:I

    return v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/VirusInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getFeatures()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/VirusFeature;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LQQPIM/VirusInfo;->features:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    iget v0, p0, LQQPIM/VirusInfo;->id:I

    return v0
.end method

.method public final getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/VirusInfo;->label:Ljava/lang/String;

    return-object v0
.end method

.method public final getLevel()I
    .locals 1

    iget v0, p0, LQQPIM/VirusInfo;->level:I

    return v0
.end method

.method public final getMethod()I
    .locals 1

    iget v0, p0, LQQPIM/VirusInfo;->method:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/VirusInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getOptype()I
    .locals 1

    iget v0, p0, LQQPIM/VirusInfo;->optype:I

    return v0
.end method

.method public final getOstype()B
    .locals 1

    iget-byte v0, p0, LQQPIM/VirusInfo;->ostype:B

    return v0
.end method

.method public final getPkgnum()I
    .locals 1

    iget v0, p0, LQQPIM/VirusInfo;->pkgnum:I

    return v0
.end method

.method public final getSafetype()I
    .locals 1

    iget v0, p0, LQQPIM/VirusInfo;->safetype:I

    return v0
.end method

.method public final getScantype()I
    .locals 1

    iget v0, p0, LQQPIM/VirusInfo;->scantype:I

    return v0
.end method

.method public final getTimestamp()I
    .locals 1

    iget v0, p0, LQQPIM/VirusInfo;->timestamp:I

    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/VirusInfo;->url:Ljava/lang/String;

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

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, LQQPIM/VirusInfo;->id:I

    invoke-virtual {p1, v0, v2, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/VirusInfo;->id:I

    invoke-virtual {p1, v3, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/VirusInfo;->name:Ljava/lang/String;

    iget v0, p0, LQQPIM/VirusInfo;->timestamp:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/VirusInfo;->timestamp:I

    iget-byte v0, p0, LQQPIM/VirusInfo;->ostype:B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(BIZ)B

    move-result v0

    iput-byte v0, p0, LQQPIM/VirusInfo;->ostype:B

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/VirusInfo;->description:Ljava/lang/String;

    sget-object v0, LQQPIM/VirusInfo;->cache_features:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/VirusInfo;->cache_features:Ljava/util/ArrayList;

    new-instance v0, LQQPIM/VirusFeature;

    invoke-direct {v0}, LQQPIM/VirusFeature;-><init>()V

    sget-object v1, LQQPIM/VirusInfo;->cache_features:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, LQQPIM/VirusInfo;->cache_features:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setFeatures(Ljava/util/ArrayList;)V

    iget v0, p0, LQQPIM/VirusInfo;->safetype:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setSafetype(I)V

    iget v0, p0, LQQPIM/VirusInfo;->advice:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setAdvice(I)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setLabel(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/VirusInfo;->optype:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setOptype(I)V

    iget v0, p0, LQQPIM/VirusInfo;->scantype:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setScantype(I)V

    iget v0, p0, LQQPIM/VirusInfo;->level:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setLevel(I)V

    iget v0, p0, LQQPIM/VirusInfo;->method:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setMethod(I)V

    const/16 v0, 0xd

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setUrl(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/VirusInfo;->pkgnum:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    invoke-virtual {p0, v0}, LQQPIM/VirusInfo;->setPkgnum(I)V

    return-void
.end method

.method public final setAdvice(I)V
    .locals 0

    iput p1, p0, LQQPIM/VirusInfo;->advice:I

    return-void
.end method

.method public final setDescription(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/VirusInfo;->description:Ljava/lang/String;

    return-void
.end method

.method public final setFeatures(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/VirusFeature;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LQQPIM/VirusInfo;->features:Ljava/util/ArrayList;

    return-void
.end method

.method public final setId(I)V
    .locals 0

    iput p1, p0, LQQPIM/VirusInfo;->id:I

    return-void
.end method

.method public final setLabel(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/VirusInfo;->label:Ljava/lang/String;

    return-void
.end method

.method public final setLevel(I)V
    .locals 0

    iput p1, p0, LQQPIM/VirusInfo;->level:I

    return-void
.end method

.method public final setMethod(I)V
    .locals 0

    iput p1, p0, LQQPIM/VirusInfo;->method:I

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/VirusInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public final setOptype(I)V
    .locals 0

    iput p1, p0, LQQPIM/VirusInfo;->optype:I

    return-void
.end method

.method public final setOstype(B)V
    .locals 0

    iput-byte p1, p0, LQQPIM/VirusInfo;->ostype:B

    return-void
.end method

.method public final setPkgnum(I)V
    .locals 0

    iput p1, p0, LQQPIM/VirusInfo;->pkgnum:I

    return-void
.end method

.method public final setSafetype(I)V
    .locals 0

    iput p1, p0, LQQPIM/VirusInfo;->safetype:I

    return-void
.end method

.method public final setScantype(I)V
    .locals 0

    iput p1, p0, LQQPIM/VirusInfo;->scantype:I

    return-void
.end method

.method public final setTimestamp(I)V
    .locals 0

    iput p1, p0, LQQPIM/VirusInfo;->timestamp:I

    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/VirusInfo;->url:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LQQPIM/VirusInfo;->id:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/VirusInfo;->name:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget v0, p0, LQQPIM/VirusInfo;->timestamp:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-byte v0, p0, LQQPIM/VirusInfo;->ostype:B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(BI)V

    iget-object v0, p0, LQQPIM/VirusInfo;->description:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/VirusInfo;->features:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    iget v0, p0, LQQPIM/VirusInfo;->safetype:I

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/VirusInfo;->advice:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/VirusInfo;->label:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/VirusInfo;->label:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget v0, p0, LQQPIM/VirusInfo;->optype:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/VirusInfo;->scantype:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/VirusInfo;->level:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/VirusInfo;->method:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/VirusInfo;->url:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/VirusInfo;->url:Ljava/lang/String;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, LQQPIM/VirusInfo;->pkgnum:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method

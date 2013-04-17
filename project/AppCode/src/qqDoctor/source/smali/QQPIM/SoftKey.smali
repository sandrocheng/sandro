.class public final LQQPIM/SoftKey;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qq/taf/jce/JceStruct;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "LQQPIM/SoftKey;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public appid:I

.field public break_flag:I

.field public category:I

.field public categorytype:I

.field public cert:Ljava/lang/String;

.field public isbuildin:I

.field public name:Ljava/lang/String;

.field public newest_version:Ljava/lang/String;

.field public old_versioncode:I

.field public producttime:Ljava/lang/String;

.field public sdk_version:I

.field public softname:Ljava/lang/String;

.field public source:I

.field public uid:Ljava/lang/String;

.field public version:Ljava/lang/String;

.field public versioncode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/SoftKey;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/SoftKey;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftKey;->version:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftKey;->cert:Ljava/lang/String;

    iput v1, p0, LQQPIM/SoftKey;->versioncode:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftKey;->name:Ljava/lang/String;

    iput v1, p0, LQQPIM/SoftKey;->isbuildin:I

    const-string v0, ""

    iput-object v0, p0, LQQPIM/SoftKey;->newest_version:Ljava/lang/String;

    iput v1, p0, LQQPIM/SoftKey;->old_versioncode:I

    iput v1, p0, LQQPIM/SoftKey;->categorytype:I

    iput v1, p0, LQQPIM/SoftKey;->category:I

    iput v1, p0, LQQPIM/SoftKey;->break_flag:I

    iput v1, p0, LQQPIM/SoftKey;->source:I

    iput v1, p0, LQQPIM/SoftKey;->sdk_version:I

    iput v1, p0, LQQPIM/SoftKey;->appid:I

    iget-object v0, p0, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SoftKey;->setUid(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SoftKey;->setSoftname(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SoftKey;->version:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SoftKey;->setVersion(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SoftKey;->setProducttime(Ljava/lang/String;)V

    iget-object v0, p0, LQQPIM/SoftKey;->cert:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SoftKey;->setCert(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/SoftKey;->versioncode:I

    invoke-virtual {p0, v0}, LQQPIM/SoftKey;->setVersioncode(I)V

    iget-object v0, p0, LQQPIM/SoftKey;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SoftKey;->setName(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/SoftKey;->isbuildin:I

    invoke-virtual {p0, v0}, LQQPIM/SoftKey;->setIsbuildin(I)V

    iget-object v0, p0, LQQPIM/SoftKey;->newest_version:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/SoftKey;->setNewest_version(Ljava/lang/String;)V

    iget v0, p0, LQQPIM/SoftKey;->old_versioncode:I

    invoke-virtual {p0, v0}, LQQPIM/SoftKey;->setOld_versioncode(I)V

    iget v0, p0, LQQPIM/SoftKey;->categorytype:I

    invoke-virtual {p0, v0}, LQQPIM/SoftKey;->setCategorytype(I)V

    iget v0, p0, LQQPIM/SoftKey;->category:I

    invoke-virtual {p0, v0}, LQQPIM/SoftKey;->setCategory(I)V

    iget v0, p0, LQQPIM/SoftKey;->break_flag:I

    invoke-virtual {p0, v0}, LQQPIM/SoftKey;->setBreak_flag(I)V

    iget v0, p0, LQQPIM/SoftKey;->source:I

    invoke-virtual {p0, v0}, LQQPIM/SoftKey;->setSource(I)V

    iget v0, p0, LQQPIM/SoftKey;->sdk_version:I

    invoke-virtual {p0, v0}, LQQPIM/SoftKey;->setSdk_version(I)V

    iget v0, p0, LQQPIM/SoftKey;->appid:I

    invoke-virtual {p0, v0}, LQQPIM/SoftKey;->setAppid(I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;IIIIIII)V
    .locals 2

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftKey;->version:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftKey;->cert:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftKey;->versioncode:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftKey;->name:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftKey;->isbuildin:I

    const-string v1, ""

    iput-object v1, p0, LQQPIM/SoftKey;->newest_version:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftKey;->old_versioncode:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftKey;->categorytype:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftKey;->category:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftKey;->break_flag:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftKey;->source:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftKey;->sdk_version:I

    const/4 v1, 0x0

    iput v1, p0, LQQPIM/SoftKey;->appid:I

    invoke-virtual {p0, p1}, LQQPIM/SoftKey;->setUid(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, LQQPIM/SoftKey;->setSoftname(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, LQQPIM/SoftKey;->setVersion(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LQQPIM/SoftKey;->setProducttime(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, LQQPIM/SoftKey;->setCert(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, LQQPIM/SoftKey;->setVersioncode(I)V

    invoke-virtual {p0, p7}, LQQPIM/SoftKey;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p8}, LQQPIM/SoftKey;->setIsbuildin(I)V

    invoke-virtual {p0, p9}, LQQPIM/SoftKey;->setNewest_version(Ljava/lang/String;)V

    invoke-virtual {p0, p10}, LQQPIM/SoftKey;->setOld_versioncode(I)V

    invoke-virtual {p0, p11}, LQQPIM/SoftKey;->setCategorytype(I)V

    invoke-virtual {p0, p12}, LQQPIM/SoftKey;->setCategory(I)V

    invoke-virtual {p0, p13}, LQQPIM/SoftKey;->setBreak_flag(I)V

    move/from16 v0, p14

    invoke-virtual {p0, v0}, LQQPIM/SoftKey;->setSource(I)V

    move/from16 v0, p15

    invoke-virtual {p0, v0}, LQQPIM/SoftKey;->setSdk_version(I)V

    move/from16 v0, p16

    invoke-virtual {p0, v0}, LQQPIM/SoftKey;->setAppid(I)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.SoftKey"

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

    sget-boolean v1, LQQPIM/SoftKey;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final compareTo(LQQPIM/SoftKey;)I
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x4

    new-array v2, v0, [I

    iget-object v0, p0, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    iget-object v3, p1, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/qq/taf/jce/JceUtil;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    aput v0, v2, v1

    const/4 v0, 0x1

    iget-object v3, p0, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    iget-object v4, p1, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x2

    iget-object v3, p0, LQQPIM/SoftKey;->version:Ljava/lang/String;

    iget-object v4, p1, LQQPIM/SoftKey;->version:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v3

    aput v3, v2, v0

    const/4 v0, 0x3

    iget-object v3, p0, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    iget-object v4, p1, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/qq/taf/jce/JceUtil;->compareTo(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v3

    aput v3, v2, v0

    move v0, v1

    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    :goto_1
    return v1

    :cond_0
    aget v3, v2, v0

    if-eqz v3, :cond_1

    aget v1, v2, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, LQQPIM/SoftKey;

    invoke-virtual {p0, p1}, LQQPIM/SoftKey;->compareTo(LQQPIM/SoftKey;)I

    move-result v0

    return v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    const-string v2, "uid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    const-string v2, "softname"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftKey;->version:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    const-string v2, "producttime"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftKey;->cert:Ljava/lang/String;

    const-string v2, "cert"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftKey;->versioncode:I

    const-string v2, "versioncode"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftKey;->name:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftKey;->isbuildin:I

    const-string v2, "isbuildin"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/SoftKey;->newest_version:Ljava/lang/String;

    const-string v2, "newest_version"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftKey;->old_versioncode:I

    const-string v2, "old_versioncode"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftKey;->categorytype:I

    const-string v2, "categorytype"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftKey;->category:I

    const-string v2, "category"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftKey;->break_flag:I

    const-string v2, "break_flag"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftKey;->source:I

    const-string v2, "source"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftKey;->sdk_version:I

    const-string v2, "sdk_version"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LQQPIM/SoftKey;->appid:I

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
    check-cast p1, LQQPIM/SoftKey;

    iget-object v1, p0, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftKey;->version:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftKey;->version:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.SoftKey"

    return-object v0
.end method

.method public final getAppid()I
    .locals 1

    iget v0, p0, LQQPIM/SoftKey;->appid:I

    return v0
.end method

.method public final getBreak_flag()I
    .locals 1

    iget v0, p0, LQQPIM/SoftKey;->break_flag:I

    return v0
.end method

.method public final getCategory()I
    .locals 1

    iget v0, p0, LQQPIM/SoftKey;->category:I

    return v0
.end method

.method public final getCategorytype()I
    .locals 1

    iget v0, p0, LQQPIM/SoftKey;->categorytype:I

    return v0
.end method

.method public final getCert()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftKey;->cert:Ljava/lang/String;

    return-object v0
.end method

.method public final getIsbuildin()I
    .locals 1

    iget v0, p0, LQQPIM/SoftKey;->isbuildin:I

    return v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftKey;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNewest_version()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftKey;->newest_version:Ljava/lang/String;

    return-object v0
.end method

.method public final getOld_versioncode()I
    .locals 1

    iget v0, p0, LQQPIM/SoftKey;->old_versioncode:I

    return v0
.end method

.method public final getProducttime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    return-object v0
.end method

.method public final getSdk_version()I
    .locals 1

    iget v0, p0, LQQPIM/SoftKey;->sdk_version:I

    return v0
.end method

.method public final getSoftname()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    return-object v0
.end method

.method public final getSource()I
    .locals 1

    iget v0, p0, LQQPIM/SoftKey;->source:I

    return v0
.end method

.method public final getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/SoftKey;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersioncode()I
    .locals 1

    iget v0, p0, LQQPIM/SoftKey;->versioncode:I

    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    invoke-static {v2}, Lcom/qq/taf/jce/JceUtil;->hashCode(Ljava/lang/Object;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    invoke-static {v2}, Lcom/qq/taf/jce/JceUtil;->hashCode(Ljava/lang/Object;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, LQQPIM/SoftKey;->version:Ljava/lang/String;

    invoke-static {v2}, Lcom/qq/taf/jce/JceUtil;->hashCode(Ljava/lang/Object;)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    invoke-static {v2}, Lcom/qq/taf/jce/JceUtil;->hashCode(Ljava/lang/Object;)I

    move-result v2

    aput v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    move-result v0

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    invoke-virtual {p1, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftKey;->version:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftKey;->cert:Ljava/lang/String;

    iget v0, p0, LQQPIM/SoftKey;->versioncode:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftKey;->versioncode:I

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftKey;->name:Ljava/lang/String;

    iget v0, p0, LQQPIM/SoftKey;->isbuildin:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftKey;->isbuildin:I

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LQQPIM/SoftKey;->newest_version:Ljava/lang/String;

    iget v0, p0, LQQPIM/SoftKey;->old_versioncode:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftKey;->old_versioncode:I

    iget v0, p0, LQQPIM/SoftKey;->categorytype:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftKey;->categorytype:I

    iget v0, p0, LQQPIM/SoftKey;->category:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftKey;->category:I

    iget v0, p0, LQQPIM/SoftKey;->break_flag:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftKey;->break_flag:I

    iget v0, p0, LQQPIM/SoftKey;->source:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftKey;->source:I

    iget v0, p0, LQQPIM/SoftKey;->sdk_version:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftKey;->sdk_version:I

    iget v0, p0, LQQPIM/SoftKey;->appid:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LQQPIM/SoftKey;->appid:I

    return-void
.end method

.method public final setAppid(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftKey;->appid:I

    return-void
.end method

.method public final setBreak_flag(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftKey;->break_flag:I

    return-void
.end method

.method public final setCategory(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftKey;->category:I

    return-void
.end method

.method public final setCategorytype(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftKey;->categorytype:I

    return-void
.end method

.method public final setCert(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftKey;->cert:Ljava/lang/String;

    return-void
.end method

.method public final setIsbuildin(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftKey;->isbuildin:I

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftKey;->name:Ljava/lang/String;

    return-void
.end method

.method public final setNewest_version(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftKey;->newest_version:Ljava/lang/String;

    return-void
.end method

.method public final setOld_versioncode(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftKey;->old_versioncode:I

    return-void
.end method

.method public final setProducttime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    return-void
.end method

.method public final setSdk_version(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftKey;->sdk_version:I

    return-void
.end method

.method public final setSoftname(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    return-void
.end method

.method public final setSource(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftKey;->source:I

    return-void
.end method

.method public final setUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/SoftKey;->version:Ljava/lang/String;

    return-void
.end method

.method public final setVersioncode(I)V
    .locals 0

    iput p1, p0, LQQPIM/SoftKey;->versioncode:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/SoftKey;->uid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/SoftKey;->softname:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/SoftKey;->version:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/SoftKey;->producttime:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, LQQPIM/SoftKey;->cert:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/SoftKey;->cert:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget v0, p0, LQQPIM/SoftKey;->versioncode:I

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/SoftKey;->name:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, LQQPIM/SoftKey;->name:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_2
    iget v0, p0, LQQPIM/SoftKey;->isbuildin:I

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LQQPIM/SoftKey;->newest_version:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, LQQPIM/SoftKey;->newest_version:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_3
    iget v0, p0, LQQPIM/SoftKey;->old_versioncode:I

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftKey;->categorytype:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftKey;->category:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftKey;->break_flag:I

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftKey;->source:I

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftKey;->sdk_version:I

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget v0, p0, LQQPIM/SoftKey;->appid:I

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method

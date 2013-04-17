.class public final LWUPSYNC/Action;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_action:I

.field static cache_data:[B

.field static cache_groupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public action:I

.field public aid:S

.field public data:[B

.field public groupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public guid:Ljava/lang/String;

.field public luid:Ljava/lang/String;

.field public photoMd5:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LWUPSYNC/Action;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LWUPSYNC/Action;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-short v0, p0, LWUPSYNC/Action;->aid:S

    iput v0, p0, LWUPSYNC/Action;->action:I

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/Action;->luid:Ljava/lang/String;

    iput-object v1, p0, LWUPSYNC/Action;->data:[B

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/Action;->photoMd5:Ljava/lang/String;

    iput-object v1, p0, LWUPSYNC/Action;->groupList:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/Action;->guid:Ljava/lang/String;

    iget-short v0, p0, LWUPSYNC/Action;->aid:S

    invoke-virtual {p0, v0}, LWUPSYNC/Action;->setAid(S)V

    iget v0, p0, LWUPSYNC/Action;->action:I

    invoke-virtual {p0, v0}, LWUPSYNC/Action;->setAction(I)V

    iget-object v0, p0, LWUPSYNC/Action;->luid:Ljava/lang/String;

    invoke-virtual {p0, v0}, LWUPSYNC/Action;->setLuid(Ljava/lang/String;)V

    iget-object v0, p0, LWUPSYNC/Action;->data:[B

    invoke-virtual {p0, v0}, LWUPSYNC/Action;->setData([B)V

    iget-object v0, p0, LWUPSYNC/Action;->photoMd5:Ljava/lang/String;

    invoke-virtual {p0, v0}, LWUPSYNC/Action;->setPhotoMd5(Ljava/lang/String;)V

    iget-object v0, p0, LWUPSYNC/Action;->groupList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LWUPSYNC/Action;->setGroupList(Ljava/util/ArrayList;)V

    iget-object v0, p0, LWUPSYNC/Action;->guid:Ljava/lang/String;

    invoke-virtual {p0, v0}, LWUPSYNC/Action;->setGuid(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(SILjava/lang/String;[BLjava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(SI",
            "Ljava/lang/String;",
            "[B",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-short v0, p0, LWUPSYNC/Action;->aid:S

    iput v0, p0, LWUPSYNC/Action;->action:I

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/Action;->luid:Ljava/lang/String;

    iput-object v1, p0, LWUPSYNC/Action;->data:[B

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/Action;->photoMd5:Ljava/lang/String;

    iput-object v1, p0, LWUPSYNC/Action;->groupList:Ljava/util/ArrayList;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/Action;->guid:Ljava/lang/String;

    invoke-virtual {p0, p1}, LWUPSYNC/Action;->setAid(S)V

    invoke-virtual {p0, p2}, LWUPSYNC/Action;->setAction(I)V

    invoke-virtual {p0, p3}, LWUPSYNC/Action;->setLuid(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, LWUPSYNC/Action;->setData([B)V

    invoke-virtual {p0, p5}, LWUPSYNC/Action;->setPhotoMd5(Ljava/lang/String;)V

    invoke-virtual {p0, p6}, LWUPSYNC/Action;->setGroupList(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p7}, LWUPSYNC/Action;->setGuid(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "WUPSYNC.Action"

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

    sget-boolean v1, LWUPSYNC/Action;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-short v1, p0, LWUPSYNC/Action;->aid:S

    const-string v2, "aid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(SLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget v1, p0, LWUPSYNC/Action;->action:I

    const-string v2, "action"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LWUPSYNC/Action;->luid:Ljava/lang/String;

    const-string v2, "luid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LWUPSYNC/Action;->data:[B

    const-string v2, "data"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display([BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LWUPSYNC/Action;->photoMd5:Ljava/lang/String;

    const-string v2, "photoMd5"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LWUPSYNC/Action;->groupList:Ljava/util/ArrayList;

    const-string v2, "groupList"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LWUPSYNC/Action;->guid:Ljava/lang/String;

    const-string v2, "guid"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LWUPSYNC/Action;

    iget-short v0, p0, LWUPSYNC/Action;->aid:S

    iget-short v1, p1, LWUPSYNC/Action;->aid:S

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(SS)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, LWUPSYNC/Action;->action:I

    iget v1, p1, LWUPSYNC/Action;->action:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/Action;->luid:Ljava/lang/String;

    iget-object v1, p1, LWUPSYNC/Action;->luid:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/Action;->data:[B

    iget-object v1, p1, LWUPSYNC/Action;->data:[B

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/Action;->photoMd5:Ljava/lang/String;

    iget-object v1, p1, LWUPSYNC/Action;->photoMd5:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/Action;->groupList:Ljava/util/ArrayList;

    iget-object v1, p1, LWUPSYNC/Action;->groupList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/Action;->guid:Ljava/lang/String;

    iget-object v1, p1, LWUPSYNC/Action;->guid:Ljava/lang/String;

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

.method public final getAction()I
    .locals 1

    iget v0, p0, LWUPSYNC/Action;->action:I

    return v0
.end method

.method public final getAid()S
    .locals 1

    iget-short v0, p0, LWUPSYNC/Action;->aid:S

    return v0
.end method

.method public final getData()[B
    .locals 1

    iget-object v0, p0, LWUPSYNC/Action;->data:[B

    return-object v0
.end method

.method public final getGroupList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LWUPSYNC/Action;->groupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getGuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LWUPSYNC/Action;->guid:Ljava/lang/String;

    return-object v0
.end method

.method public final getLuid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LWUPSYNC/Action;->luid:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhotoMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LWUPSYNC/Action;->photoMd5:Ljava/lang/String;

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-short v0, p0, LWUPSYNC/Action;->aid:S

    invoke-virtual {p1, v0, v2, v1}, Lcom/qq/taf/jce/JceInputStream;->read(SIZ)S

    move-result v0

    iput-short v0, p0, LWUPSYNC/Action;->aid:S

    iget v0, p0, LWUPSYNC/Action;->action:I

    invoke-virtual {p1, v0, v1, v1}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/Action;->action:I

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/Action;->luid:Ljava/lang/String;

    sget-object v0, LWUPSYNC/Action;->cache_data:[B

    if-nez v0, :cond_0

    new-array v0, v1, [B

    sput-object v0, LWUPSYNC/Action;->cache_data:[B

    aput-byte v2, v0, v2

    :cond_0
    sget-object v0, LWUPSYNC/Action;->cache_data:[B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/Action;->data:[B

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/Action;->photoMd5:Ljava/lang/String;

    sget-object v0, LWUPSYNC/Action;->cache_groupList:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LWUPSYNC/Action;->cache_groupList:Ljava/util/ArrayList;

    const-string v0, ""

    sget-object v1, LWUPSYNC/Action;->cache_groupList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, LWUPSYNC/Action;->cache_groupList:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LWUPSYNC/Action;->setGroupList(Ljava/util/ArrayList;)V

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LWUPSYNC/Action;->setGuid(Ljava/lang/String;)V

    return-void
.end method

.method public final setAction(I)V
    .locals 0

    iput p1, p0, LWUPSYNC/Action;->action:I

    return-void
.end method

.method public final setAid(S)V
    .locals 0

    iput-short p1, p0, LWUPSYNC/Action;->aid:S

    return-void
.end method

.method public final setData([B)V
    .locals 0

    iput-object p1, p0, LWUPSYNC/Action;->data:[B

    return-void
.end method

.method public final setGroupList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LWUPSYNC/Action;->groupList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setGuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LWUPSYNC/Action;->guid:Ljava/lang/String;

    return-void
.end method

.method public final setLuid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LWUPSYNC/Action;->luid:Ljava/lang/String;

    return-void
.end method

.method public final setPhotoMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LWUPSYNC/Action;->photoMd5:Ljava/lang/String;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-short v0, p0, LWUPSYNC/Action;->aid:S

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(SI)V

    iget v0, p0, LWUPSYNC/Action;->action:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LWUPSYNC/Action;->luid:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    iget-object v0, p0, LWUPSYNC/Action;->data:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/Action;->data:[B

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    :cond_0
    iget-object v0, p0, LWUPSYNC/Action;->photoMd5:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, LWUPSYNC/Action;->photoMd5:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, LWUPSYNC/Action;->groupList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, LWUPSYNC/Action;->groupList:Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_2
    iget-object v0, p0, LWUPSYNC/Action;->guid:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, LWUPSYNC/Action;->guid:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

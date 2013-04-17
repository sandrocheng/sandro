.class public final LWUPSYNC/RestoreGroupResp;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_groupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LWUPSYNC/GROUPITEM;",
            ">;"
        }
    .end annotation
.end field

.field static cache_result:I


# instance fields
.field public groupList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LWUPSYNC/GROUPITEM;",
            ">;"
        }
    .end annotation
.end field

.field public result:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LWUPSYNC/RestoreGroupResp;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LWUPSYNC/RestoreGroupResp;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/RestoreGroupResp;->result:I

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/RestoreGroupResp;->groupList:Ljava/util/ArrayList;

    iget v0, p0, LWUPSYNC/RestoreGroupResp;->result:I

    invoke-virtual {p0, v0}, LWUPSYNC/RestoreGroupResp;->setResult(I)V

    iget-object v0, p0, LWUPSYNC/RestoreGroupResp;->groupList:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LWUPSYNC/RestoreGroupResp;->setGroupList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "LWUPSYNC/GROUPITEM;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/RestoreGroupResp;->result:I

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/RestoreGroupResp;->groupList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, LWUPSYNC/RestoreGroupResp;->setResult(I)V

    invoke-virtual {p0, p2}, LWUPSYNC/RestoreGroupResp;->setGroupList(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "WUPSYNC.RestoreGroupResp"

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

    sget-boolean v1, LWUPSYNC/RestoreGroupResp;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LWUPSYNC/RestoreGroupResp;->result:I

    const-string v2, "result"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LWUPSYNC/RestoreGroupResp;->groupList:Ljava/util/ArrayList;

    const-string v2, "groupList"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LWUPSYNC/RestoreGroupResp;

    iget v0, p0, LWUPSYNC/RestoreGroupResp;->result:I

    iget v1, p1, LWUPSYNC/RestoreGroupResp;->result:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/RestoreGroupResp;->groupList:Ljava/util/ArrayList;

    iget-object v1, p1, LWUPSYNC/RestoreGroupResp;->groupList:Ljava/util/ArrayList;

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

.method public final getGroupList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "LWUPSYNC/GROUPITEM;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LWUPSYNC/RestoreGroupResp;->groupList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getResult()I
    .locals 1

    iget v0, p0, LWUPSYNC/RestoreGroupResp;->result:I

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, LWUPSYNC/RestoreGroupResp;->result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/RestoreGroupResp;->result:I

    sget-object v0, LWUPSYNC/RestoreGroupResp;->cache_groupList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LWUPSYNC/RestoreGroupResp;->cache_groupList:Ljava/util/ArrayList;

    new-instance v0, LWUPSYNC/GROUPITEM;

    invoke-direct {v0}, LWUPSYNC/GROUPITEM;-><init>()V

    sget-object v1, LWUPSYNC/RestoreGroupResp;->cache_groupList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, LWUPSYNC/RestoreGroupResp;->cache_groupList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LWUPSYNC/RestoreGroupResp;->setGroupList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final setGroupList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LWUPSYNC/GROUPITEM;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LWUPSYNC/RestoreGroupResp;->groupList:Ljava/util/ArrayList;

    return-void
.end method

.method public final setResult(I)V
    .locals 0

    iput p1, p0, LWUPSYNC/RestoreGroupResp;->result:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LWUPSYNC/RestoreGroupResp;->result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    iget-object v0, p0, LWUPSYNC/RestoreGroupResp;->groupList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    return-void
.end method

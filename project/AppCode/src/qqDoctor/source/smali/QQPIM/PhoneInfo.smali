.class public final LQQPIM/PhoneInfo;
.super Lcom/qq/taf/jce/JceStruct;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_marks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/Mark;",
            ">;"
        }
    .end annotation
.end field

.field static cache_phoneinfoitems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/PhoneInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field static cache_vLBSKeyData:[B


# instance fields
.field public localaddr:Ljava/lang/String;

.field public marks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/Mark;",
            ">;"
        }
    .end annotation
.end field

.field public phoneinfoitems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/PhoneInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field public vLBSKeyData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LQQPIM/PhoneInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LQQPIM/PhoneInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, LQQPIM/PhoneInfo;->phoneinfoitems:Ljava/util/ArrayList;

    iput-object v0, p0, LQQPIM/PhoneInfo;->marks:Ljava/util/ArrayList;

    iput-object v0, p0, LQQPIM/PhoneInfo;->vLBSKeyData:[B

    const-string v0, ""

    iput-object v0, p0, LQQPIM/PhoneInfo;->localaddr:Ljava/lang/String;

    iget-object v0, p0, LQQPIM/PhoneInfo;->phoneinfoitems:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/PhoneInfo;->setPhoneinfoitems(Ljava/util/ArrayList;)V

    iget-object v0, p0, LQQPIM/PhoneInfo;->marks:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/PhoneInfo;->setMarks(Ljava/util/ArrayList;)V

    iget-object v0, p0, LQQPIM/PhoneInfo;->vLBSKeyData:[B

    invoke-virtual {p0, v0}, LQQPIM/PhoneInfo;->setVLBSKeyData([B)V

    iget-object v0, p0, LQQPIM/PhoneInfo;->localaddr:Ljava/lang/String;

    invoke-virtual {p0, v0}, LQQPIM/PhoneInfo;->setLocaladdr(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;[BLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/PhoneInfoItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/Mark;",
            ">;[B",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    iput-object v0, p0, LQQPIM/PhoneInfo;->phoneinfoitems:Ljava/util/ArrayList;

    iput-object v0, p0, LQQPIM/PhoneInfo;->marks:Ljava/util/ArrayList;

    iput-object v0, p0, LQQPIM/PhoneInfo;->vLBSKeyData:[B

    const-string v0, ""

    iput-object v0, p0, LQQPIM/PhoneInfo;->localaddr:Ljava/lang/String;

    invoke-virtual {p0, p1}, LQQPIM/PhoneInfo;->setPhoneinfoitems(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p2}, LQQPIM/PhoneInfo;->setMarks(Ljava/util/ArrayList;)V

    invoke-virtual {p0, p3}, LQQPIM/PhoneInfo;->setVLBSKeyData([B)V

    invoke-virtual {p0, p4}, LQQPIM/PhoneInfo;->setLocaladdr(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.PhoneInfo"

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

    sget-boolean v1, LQQPIM/PhoneInfo;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LQQPIM/PhoneInfo;->phoneinfoitems:Ljava/util/ArrayList;

    const-string v2, "phoneinfoitems"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/PhoneInfo;->marks:Ljava/util/ArrayList;

    const-string v2, "marks"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/util/Collection;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/PhoneInfo;->vLBSKeyData:[B

    const-string v2, "vLBSKeyData"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display([BLjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LQQPIM/PhoneInfo;->localaddr:Ljava/lang/String;

    const-string v2, "localaddr"

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
    check-cast p1, LQQPIM/PhoneInfo;

    iget-object v1, p0, LQQPIM/PhoneInfo;->phoneinfoitems:Ljava/util/ArrayList;

    iget-object v2, p1, LQQPIM/PhoneInfo;->phoneinfoitems:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/PhoneInfo;->marks:Ljava/util/ArrayList;

    iget-object v2, p1, LQQPIM/PhoneInfo;->marks:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/PhoneInfo;->vLBSKeyData:[B

    iget-object v2, p1, LQQPIM/PhoneInfo;->vLBSKeyData:[B

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LQQPIM/PhoneInfo;->localaddr:Ljava/lang/String;

    iget-object v2, p1, LQQPIM/PhoneInfo;->localaddr:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final fullClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "QQPIM.PhoneInfo"

    return-object v0
.end method

.method public final getLocaladdr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LQQPIM/PhoneInfo;->localaddr:Ljava/lang/String;

    return-object v0
.end method

.method public final getMarks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/Mark;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LQQPIM/PhoneInfo;->marks:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getPhoneinfoitems()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/PhoneInfoItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LQQPIM/PhoneInfo;->phoneinfoitems:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final getVLBSKeyData()[B
    .locals 1

    iget-object v0, p0, LQQPIM/PhoneInfo;->vLBSKeyData:[B

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

    sget-object v0, LQQPIM/PhoneInfo;->cache_phoneinfoitems:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/PhoneInfo;->cache_phoneinfoitems:Ljava/util/ArrayList;

    new-instance v0, LQQPIM/PhoneInfoItem;

    invoke-direct {v0}, LQQPIM/PhoneInfoItem;-><init>()V

    sget-object v1, LQQPIM/PhoneInfo;->cache_phoneinfoitems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v0, LQQPIM/PhoneInfo;->cache_phoneinfoitems:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/PhoneInfo;->setPhoneinfoitems(Ljava/util/ArrayList;)V

    sget-object v0, LQQPIM/PhoneInfo;->cache_marks:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LQQPIM/PhoneInfo;->cache_marks:Ljava/util/ArrayList;

    new-instance v0, LQQPIM/Mark;

    invoke-direct {v0}, LQQPIM/Mark;-><init>()V

    sget-object v1, LQQPIM/PhoneInfo;->cache_marks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v0, LQQPIM/PhoneInfo;->cache_marks:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v3, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, LQQPIM/PhoneInfo;->setMarks(Ljava/util/ArrayList;)V

    sget-object v0, LQQPIM/PhoneInfo;->cache_vLBSKeyData:[B

    if-nez v0, :cond_2

    new-array v0, v3, [B

    sput-object v0, LQQPIM/PhoneInfo;->cache_vLBSKeyData:[B

    aput-byte v2, v0, v2

    :cond_2
    sget-object v0, LQQPIM/PhoneInfo;->cache_vLBSKeyData:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read([BIZ)[B

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/PhoneInfo;->setVLBSKeyData([B)V

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, LQQPIM/PhoneInfo;->setLocaladdr(Ljava/lang/String;)V

    return-void
.end method

.method public final setLocaladdr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LQQPIM/PhoneInfo;->localaddr:Ljava/lang/String;

    return-void
.end method

.method public final setMarks(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/Mark;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LQQPIM/PhoneInfo;->marks:Ljava/util/ArrayList;

    return-void
.end method

.method public final setPhoneinfoitems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/PhoneInfoItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LQQPIM/PhoneInfo;->phoneinfoitems:Ljava/util/ArrayList;

    return-void
.end method

.method public final setVLBSKeyData([B)V
    .locals 0

    iput-object p1, p0, LQQPIM/PhoneInfo;->vLBSKeyData:[B

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LQQPIM/PhoneInfo;->phoneinfoitems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, LQQPIM/PhoneInfo;->phoneinfoitems:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_0
    iget-object v0, p0, LQQPIM/PhoneInfo;->marks:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, LQQPIM/PhoneInfo;->marks:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/util/Collection;I)V

    :cond_1
    iget-object v0, p0, LQQPIM/PhoneInfo;->vLBSKeyData:[B

    if-eqz v0, :cond_2

    iget-object v0, p0, LQQPIM/PhoneInfo;->vLBSKeyData:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write([BI)V

    :cond_2
    iget-object v0, p0, LQQPIM/PhoneInfo;->localaddr:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, LQQPIM/PhoneInfo;->localaddr:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

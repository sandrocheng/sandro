.class public final LWUPSYNC/PimPwdQueryResp;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_result:I


# instance fields
.field public result:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LWUPSYNC/PimPwdQueryResp;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LWUPSYNC/PimPwdQueryResp;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/PimPwdQueryResp;->result:I

    iget v0, p0, LWUPSYNC/PimPwdQueryResp;->result:I

    invoke-virtual {p0, v0}, LWUPSYNC/PimPwdQueryResp;->setResult(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LWUPSYNC/PimPwdQueryResp;->result:I

    invoke-virtual {p0, p1}, LWUPSYNC/PimPwdQueryResp;->setResult(I)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "WUPSYNC.PimPwdQueryResp"

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

    sget-boolean v1, LWUPSYNC/PimPwdQueryResp;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget v1, p0, LWUPSYNC/PimPwdQueryResp;->result:I

    const-string v2, "result"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(ILjava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LWUPSYNC/PimPwdQueryResp;

    iget v0, p0, LWUPSYNC/PimPwdQueryResp;->result:I

    iget v1, p1, LWUPSYNC/PimPwdQueryResp;->result:I

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(II)Z

    move-result v0

    return v0
.end method

.method public final getResult()I
    .locals 1

    iget v0, p0, LWUPSYNC/PimPwdQueryResp;->result:I

    return v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    iget v0, p0, LWUPSYNC/PimPwdQueryResp;->result:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(IIZ)I

    move-result v0

    iput v0, p0, LWUPSYNC/PimPwdQueryResp;->result:I

    return-void
.end method

.method public final setResult(I)V
    .locals 0

    iput p1, p0, LWUPSYNC/PimPwdQueryResp;->result:I

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget v0, p0, LWUPSYNC/PimPwdQueryResp;->result:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(II)V

    return-void
.end method
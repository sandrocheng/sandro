.class public final LWUPSYNC/PimPwdSetReq;
.super Lcom/qq/taf/jce/JceStruct;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static cache_userInfo:LWUPSYNC/AccInfo;


# instance fields
.field public pimPwd:Ljava/lang/String;

.field public userInfo:LWUPSYNC/AccInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LWUPSYNC/PimPwdSetReq;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LWUPSYNC/PimPwdSetReq;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/PimPwdSetReq;->userInfo:LWUPSYNC/AccInfo;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/PimPwdSetReq;->pimPwd:Ljava/lang/String;

    iget-object v0, p0, LWUPSYNC/PimPwdSetReq;->userInfo:LWUPSYNC/AccInfo;

    invoke-virtual {p0, v0}, LWUPSYNC/PimPwdSetReq;->setUserInfo(LWUPSYNC/AccInfo;)V

    iget-object v0, p0, LWUPSYNC/PimPwdSetReq;->pimPwd:Ljava/lang/String;

    invoke-virtual {p0, v0}, LWUPSYNC/PimPwdSetReq;->setPimPwd(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(LWUPSYNC/AccInfo;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lcom/qq/taf/jce/JceStruct;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LWUPSYNC/PimPwdSetReq;->userInfo:LWUPSYNC/AccInfo;

    const-string v0, ""

    iput-object v0, p0, LWUPSYNC/PimPwdSetReq;->pimPwd:Ljava/lang/String;

    invoke-virtual {p0, p1}, LWUPSYNC/PimPwdSetReq;->setUserInfo(LWUPSYNC/AccInfo;)V

    invoke-virtual {p0, p2}, LWUPSYNC/PimPwdSetReq;->setPimPwd(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final className()Ljava/lang/String;
    .locals 1

    const-string v0, "WUPSYNC.PimPwdSetReq"

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

    sget-boolean v1, LWUPSYNC/PimPwdSetReq;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final display(Ljava/lang/StringBuilder;I)V
    .locals 3

    new-instance v0, Lcom/qq/taf/jce/JceDisplayer;

    invoke-direct {v0, p1, p2}, Lcom/qq/taf/jce/JceDisplayer;-><init>(Ljava/lang/StringBuilder;I)V

    iget-object v1, p0, LWUPSYNC/PimPwdSetReq;->userInfo:LWUPSYNC/AccInfo;

    const-string v2, "userInfo"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Lcom/qq/taf/jce/JceStruct;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    iget-object v1, p0, LWUPSYNC/PimPwdSetReq;->pimPwd:Ljava/lang/String;

    const-string v2, "pimPwd"

    invoke-virtual {v0, v1, v2}, Lcom/qq/taf/jce/JceDisplayer;->display(Ljava/lang/String;Ljava/lang/String;)Lcom/qq/taf/jce/JceDisplayer;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, LWUPSYNC/PimPwdSetReq;

    iget-object v0, p0, LWUPSYNC/PimPwdSetReq;->userInfo:LWUPSYNC/AccInfo;

    iget-object v1, p1, LWUPSYNC/PimPwdSetReq;->userInfo:LWUPSYNC/AccInfo;

    invoke-static {v0, v1}, Lcom/qq/taf/jce/JceUtil;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LWUPSYNC/PimPwdSetReq;->pimPwd:Ljava/lang/String;

    iget-object v1, p1, LWUPSYNC/PimPwdSetReq;->pimPwd:Ljava/lang/String;

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

.method public final getPimPwd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LWUPSYNC/PimPwdSetReq;->pimPwd:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserInfo()LWUPSYNC/AccInfo;
    .locals 1

    iget-object v0, p0, LWUPSYNC/PimPwdSetReq;->userInfo:LWUPSYNC/AccInfo;

    return-object v0
.end method

.method public final readFrom(Lcom/qq/taf/jce/JceInputStream;)V
    .locals 3

    const/4 v2, 0x1

    sget-object v0, LWUPSYNC/PimPwdSetReq;->cache_userInfo:LWUPSYNC/AccInfo;

    if-nez v0, :cond_0

    new-instance v0, LWUPSYNC/AccInfo;

    invoke-direct {v0}, LWUPSYNC/AccInfo;-><init>()V

    sput-object v0, LWUPSYNC/PimPwdSetReq;->cache_userInfo:LWUPSYNC/AccInfo;

    :cond_0
    sget-object v0, LWUPSYNC/PimPwdSetReq;->cache_userInfo:LWUPSYNC/AccInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/qq/taf/jce/JceInputStream;->read(Lcom/qq/taf/jce/JceStruct;IZ)Lcom/qq/taf/jce/JceStruct;

    move-result-object v0

    check-cast v0, LWUPSYNC/AccInfo;

    iput-object v0, p0, LWUPSYNC/PimPwdSetReq;->userInfo:LWUPSYNC/AccInfo;

    invoke-virtual {p1, v2, v2}, Lcom/qq/taf/jce/JceInputStream;->readString(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LWUPSYNC/PimPwdSetReq;->pimPwd:Ljava/lang/String;

    return-void
.end method

.method public final setPimPwd(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, LWUPSYNC/PimPwdSetReq;->pimPwd:Ljava/lang/String;

    return-void
.end method

.method public final setUserInfo(LWUPSYNC/AccInfo;)V
    .locals 0

    iput-object p1, p0, LWUPSYNC/PimPwdSetReq;->userInfo:LWUPSYNC/AccInfo;

    return-void
.end method

.method public final writeTo(Lcom/qq/taf/jce/JceOutputStream;)V
    .locals 2

    iget-object v0, p0, LWUPSYNC/PimPwdSetReq;->userInfo:LWUPSYNC/AccInfo;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Lcom/qq/taf/jce/JceStruct;I)V

    iget-object v0, p0, LWUPSYNC/PimPwdSetReq;->pimPwd:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/qq/taf/jce/JceOutputStream;->write(Ljava/lang/String;I)V

    return-void
.end method
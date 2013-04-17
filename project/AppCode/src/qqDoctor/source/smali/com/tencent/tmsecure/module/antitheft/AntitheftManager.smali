.class public final Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;
.super Lcom/tencent/tmsecure/common/BaseManager;


# instance fields
.field private a:Lbtp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmsecure/common/BaseManager;-><init>()V

    return-void
.end method


# virtual methods
.method public final encryptPassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_0

    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/tencent/tccdb/TccCryptor;->encrypt(Landroid/content/Context;[B[B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/tmsecure/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getBindQQNum()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Lbtp;

    invoke-virtual {v0}, Lbtp;->a()Lbtt;

    move-result-object v0

    iget-object v0, v0, Lbtt;->a:Lbtl;

    const-string v1, "qq_num"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getHelperNumber()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Lbtp;

    invoke-virtual {v0}, Lbtp;->a()Lbtt;

    move-result-object v0

    iget-object v0, v0, Lbtt;->a:Lbtl;

    const-string v1, "helper"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getPassword()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Lbtp;

    invoke-virtual {v0}, Lbtp;->a()Lbtt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbtt;->a(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final handleSmsCommand(Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Lbtp;

    invoke-virtual {v0, p1, p2, p3}, Lbtp;->a(Lcom/tencent/tmsecure/module/antitheft/IAntitheftTips;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lbtp;

    invoke-direct {v0}, Lbtp;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Lbtp;

    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Lbtp;

    invoke-virtual {v0, p1}, Lbtp;->onCreate(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Lbtp;

    invoke-virtual {p0, v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->setImpl(Lcom/tencent/tmsecure/common/BaseManager;)V

    return-void
.end method

.method public final reportSIMChangeToServer()V
    .locals 1

    invoke-static {}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Lbtp;

    invoke-virtual {v0}, Lbtp;->b()V

    goto :goto_0
.end method

.method public final setBindQQNum(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Lbtp;

    invoke-virtual {v0}, Lbtp;->a()Lbtt;

    move-result-object v0

    iget-object v0, v0, Lbtt;->a:Lbtl;

    const-string v1, "qq_num"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final setHelperNumber(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Lbtp;

    invoke-virtual {v0}, Lbtp;->a()Lbtt;

    move-result-object v0

    iget-object v0, v0, Lbtt;->a:Lbtl;

    const-string v1, "helper"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final setPassword(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    invoke-static {}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Lbtp;

    invoke-virtual {v1}, Lbtp;->a()Lbtt;

    move-result-object v1

    if-eqz p1, :cond_0

    iget-object v1, v1, Lbtt;->a:Lbtl;

    const-string v2, "password"

    if-nez p1, :cond_2

    :goto_1
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/tmsecure/common/TMSApplication;->getApplicaionContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/tencent/tccdb/TccCryptor;->encrypt(Landroid/content/Context;[B[B)[B

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/tencent/tmsecure/utils/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public final setWebServerNum(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->a:Lbtp;

    invoke-virtual {v0}, Lbtp;->a()Lbtt;

    move-result-object v0

    iget-object v0, v0, Lbtt;->a:Lbtl;

    const-string v1, "server_num"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lbtl;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

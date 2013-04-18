.class public abstract Lcom/keniu/security/commumgr/a/d;
.super Ljava/lang/Object;
.source "RpActionBase.java"

# interfaces
.implements Lcom/keniu/security/util/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/keniu/security/commumgr/a/p;)V
    .locals 2
    .parameter

    .prologue
    .line 13
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 14
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 15
    invoke-virtual {p0}, Lcom/keniu/security/commumgr/a/p;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 16
    sget-object v1, Lcom/keniu/security/commumgr/a/e;->u:Lcom/keniu/security/commumgr/a/r;

    invoke-virtual {v1, v0}, Lcom/keniu/security/commumgr/a/r;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :goto_0
    return-void

    .line 17
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final b()V
    .locals 5

    .prologue
    .line 25
    :try_start_0
    invoke-virtual {p0}, Lcom/keniu/security/commumgr/a/d;->a()V
    :try_end_0
    .catch Lcom/keniu/security/commumgr/a/p; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    :goto_0
    return-void

    .line 26
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/keniu/security/commumgr/a/d;->a(Lcom/keniu/security/commumgr/a/p;)V

    goto :goto_0

    .line 28
    :catch_1
    move-exception v0

    .line 29
    new-instance v1, Lcom/keniu/security/commumgr/a/p;

    sget-object v2, Lcom/keniu/security/commumgr/a/q;->a:Lcom/keniu/security/commumgr/a/q;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/keniu/security/commumgr/a/p;-><init>(Lcom/keniu/security/commumgr/a/q;[Ljava/lang/String;)V

    invoke-static {v1}, Lcom/keniu/security/commumgr/a/d;->a(Lcom/keniu/security/commumgr/a/p;)V

    goto :goto_0
.end method

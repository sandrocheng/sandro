.class final Lcom/ijinshan/kinghelper/firewall/core/t;
.super Ljava/lang/Object;
.source "GetLocationThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/os/Handler;

.field final synthetic d:Lcom/ijinshan/kinghelper/firewall/core/r;


# direct methods
.method constructor <init>(Lcom/ijinshan/kinghelper/firewall/core/r;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/core/t;->d:Lcom/ijinshan/kinghelper/firewall/core/r;

    iput-object p2, p0, Lcom/ijinshan/kinghelper/firewall/core/t;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/ijinshan/kinghelper/firewall/core/t;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ijinshan/kinghelper/firewall/core/t;->c:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 54
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/t;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/t;->d:Lcom/ijinshan/kinghelper/firewall/core/r;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/core/r;->a(Lcom/ijinshan/kinghelper/firewall/core/r;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/jxphone/mosecurity/d/a;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/t;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/core/t;->d:Lcom/ijinshan/kinghelper/firewall/core/r;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/core/r;->a(Lcom/ijinshan/kinghelper/firewall/core/r;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0186

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/jxphone/mosecurity/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v4

    const/4 v0, 0x1

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/core/t;->b:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 67
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/t;->c:Landroid/os/Handler;

    invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/t;->c:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 71
    :cond_1
    return-void
.end method

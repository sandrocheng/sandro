.class public final Lcom/jxphone/mosecurity/listener/b;
.super Landroid/telephony/PhoneStateListener;
.source "CallStateListener.java"


# instance fields
.field private final a:Lcom/jxphone/mosecurity/logic/a/g;

.field private b:Landroid/view/Display;

.field private c:Lcom/ijinshan/kinghelper/firewall/core/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 30
    invoke-static {p1}, Lcom/jxphone/mosecurity/logic/h;->b(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/listener/b;->a:Lcom/jxphone/mosecurity/logic/a/g;

    .line 31
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/jxphone/mosecurity/listener/b;->b:Landroid/view/Display;

    .line 33
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/core/m;

    invoke-direct {v0, p1}, Lcom/ijinshan/kinghelper/firewall/core/m;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/jxphone/mosecurity/listener/b;->c:Lcom/ijinshan/kinghelper/firewall/core/m;

    .line 34
    iget-object v0, p0, Lcom/jxphone/mosecurity/listener/b;->c:Lcom/ijinshan/kinghelper/firewall/core/m;

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/core/m;->a()V

    .line 35
    return-void
.end method


# virtual methods
.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 40
    if-ne p1, v3, :cond_3

    .line 41
    iget-object v0, p0, Lcom/jxphone/mosecurity/listener/b;->a:Lcom/jxphone/mosecurity/logic/a/g;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v3}, Lcom/jxphone/mosecurity/logic/a/g;->a(II)V

    .line 42
    const-string v0, "CallStateListener"

    const-string v1, ">>onCallStateChanged>>callLogic>>handleCall"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v0, p0, Lcom/jxphone/mosecurity/listener/b;->a:Lcom/jxphone/mosecurity/logic/a/g;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/jxphone/mosecurity/listener/b;->b:Landroid/view/Display;

    invoke-interface {v0, p2, v1, v2}, Lcom/jxphone/mosecurity/logic/a/g;->a(Ljava/lang/String;ILandroid/view/Display;)I

    move-result v0

    if-eq v3, v0, :cond_2

    .line 45
    sget-boolean v0, Lcom/jxphone/mosecurity/d/l;->b:Z

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/jxphone/mosecurity/listener/b;->c:Lcom/ijinshan/kinghelper/firewall/core/m;

    invoke-virtual {v0, p1, p2}, Lcom/ijinshan/kinghelper/firewall/core/m;->onCallStateChanged(ILjava/lang/String;)V

    .line 51
    :cond_2
    iget-object v0, p0, Lcom/jxphone/mosecurity/listener/b;->a:Lcom/jxphone/mosecurity/logic/a/g;

    invoke-interface {v0, v3}, Lcom/jxphone/mosecurity/logic/a/g;->a(I)V

    goto :goto_0

    .line 53
    :cond_3
    if-nez p1, :cond_6

    .line 54
    iget-object v0, p0, Lcom/jxphone/mosecurity/listener/b;->a:Lcom/jxphone/mosecurity/logic/a/g;

    invoke-interface {v0}, Lcom/jxphone/mosecurity/logic/a/g;->b()V

    .line 58
    :cond_4
    :goto_1
    sget-boolean v0, Lcom/jxphone/mosecurity/d/l;->b:Z

    if-eqz v0, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    :cond_5
    iget-object v0, p0, Lcom/jxphone/mosecurity/listener/b;->c:Lcom/ijinshan/kinghelper/firewall/core/m;

    invoke-virtual {v0, p1, p2}, Lcom/ijinshan/kinghelper/firewall/core/m;->onCallStateChanged(ILjava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    .line 56
    iget-object v0, p0, Lcom/jxphone/mosecurity/listener/b;->a:Lcom/jxphone/mosecurity/logic/a/g;

    invoke-interface {v0}, Lcom/jxphone/mosecurity/logic/a/g;->a()V

    goto :goto_1
.end method

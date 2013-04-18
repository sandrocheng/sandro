.class public final Lcom/ijinshan/kinghelper/firewall/core/q;
.super Ljava/lang/Object;
.source "FriendSmsRecvMonitor.java"

# interfaces
.implements Lcom/keniu/security/monitor/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/ijinshan/kinghelper/firewall/core/w;)I
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 39
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->e:Z

    if-eqz v0, :cond_0

    .line 40
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->a:I

    .line 80
    :goto_0
    return v0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->a:Landroid/content/Context;

    .line 43
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->c:Ljava/lang/String;

    .line 44
    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    invoke-static {v0}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/jxphone/mosecurity/logic/a/d;->a(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;

    move-result-object v2

    .line 46
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v2

    sget-object v3, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    if-ne v2, v3, :cond_3

    .line 47
    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v2

    .line 48
    invoke-static {v0}, Lcom/jxphone/mosecurity/logic/h;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/j;

    move-result-object v3

    .line 50
    new-instance v4, Lcom/jxphone/mosecurity/c/l;

    invoke-direct {v4}, Lcom/jxphone/mosecurity/c/l;-><init>()V

    .line 51
    invoke-virtual {v4, v1}, Lcom/jxphone/mosecurity/c/l;->a(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/jxphone/mosecurity/c/l;->b(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/jxphone/mosecurity/c/l;->a(J)V

    .line 54
    invoke-virtual {v4, v9}, Lcom/jxphone/mosecurity/c/l;->b(I)V

    .line 55
    sget-object v1, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v4, v1}, Lcom/jxphone/mosecurity/c/l;->a(Lcom/jxphone/mosecurity/c/c;)V

    .line 56
    invoke-interface {v3, v4}, Lcom/jxphone/mosecurity/logic/a/j;->b(Lcom/jxphone/mosecurity/c/l;)I

    move-result v1

    if-ltz v1, :cond_2

    .line 60
    invoke-virtual {v2}, Lcom/keniu/security/a;->m()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v1, v7

    move v3, v9

    .line 69
    :goto_1
    invoke-virtual {v2}, Lcom/keniu/security/a;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 70
    invoke-static {v0, v4, v1, v3}, Lcom/ijinshan/kinghelper/firewall/core/h;->a(Landroid/content/Context;Lcom/jxphone/mosecurity/c/l;IZ)V

    .line 72
    :cond_1
    const-string v0, "FriendSmsRecvMonitor>>"

    const-string v1, "OnRecvSMS>>FRIEND>>SMS_FILTER_RES_DENY"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->b:I

    goto :goto_0

    .line 63
    :pswitch_0
    const/4 v1, 0x2

    move v3, v8

    .line 64
    goto :goto_1

    :pswitch_1
    move v1, v7

    move v3, v8

    .line 67
    goto :goto_1

    .line 76
    :cond_2
    const-string v0, "FriendSmsRecvMonitor>>"

    const-string v1, "OnRecvSMS>>Other>>SMS_FILTER_RES_CONTINUE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->a:I

    goto :goto_0

    .line 80
    :cond_3
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->a:I

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 25
    check-cast p2, Lcom/ijinshan/kinghelper/firewall/core/w;

    .line 26
    iget-boolean v0, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->e:Z

    if-nez v0, :cond_2

    iget-object v0, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->a:Landroid/content/Context;

    iget-object v1, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->c:Ljava/lang/String;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/jxphone/mosecurity/logic/h;->c(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/d;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/jxphone/mosecurity/logic/a/d;->a(Ljava/lang/String;)Lcom/jxphone/mosecurity/c/b;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->e()Lcom/jxphone/mosecurity/c/c;

    move-result-object v2

    sget-object v3, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    if-ne v2, v3, :cond_2

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v2

    invoke-static {v0}, Lcom/jxphone/mosecurity/logic/h;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/j;

    move-result-object v3

    new-instance v4, Lcom/jxphone/mosecurity/c/l;

    invoke-direct {v4}, Lcom/jxphone/mosecurity/c/l;-><init>()V

    invoke-virtual {v4, v1}, Lcom/jxphone/mosecurity/c/l;->a(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcom/jxphone/mosecurity/c/l;->b(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/jxphone/mosecurity/c/l;->a(J)V

    invoke-virtual {v4, v9}, Lcom/jxphone/mosecurity/c/l;->b(I)V

    sget-object v1, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v4, v1}, Lcom/jxphone/mosecurity/c/l;->a(Lcom/jxphone/mosecurity/c/c;)V

    invoke-interface {v3, v4}, Lcom/jxphone/mosecurity/logic/a/j;->b(Lcom/jxphone/mosecurity/c/l;)I

    move-result v1

    if-ltz v1, :cond_1

    invoke-virtual {v2}, Lcom/keniu/security/a;->m()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    move v1, v8

    move v3, v9

    :goto_0
    invoke-virtual {v2}, Lcom/keniu/security/a;->q()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v4, v1, v3}, Lcom/ijinshan/kinghelper/firewall/core/h;->a(Landroid/content/Context;Lcom/jxphone/mosecurity/c/l;IZ)V

    :cond_0
    const-string v0, "FriendSmsRecvMonitor>>"

    const-string v1, "OnRecvSMS>>FRIEND>>SMS_FILTER_RES_DENY"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->b:I

    .line 28
    :goto_1
    sget v1, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->b:I

    if-ne v0, v1, :cond_3

    .line 29
    iget-object v0, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    move v0, v10

    .line 33
    :goto_2
    return v0

    :pswitch_0
    move v1, v10

    move v3, v7

    .line 26
    goto :goto_0

    :pswitch_1
    move v1, v8

    move v3, v7

    goto :goto_0

    :cond_1
    const-string v0, "FriendSmsRecvMonitor>>"

    const-string v1, "OnRecvSMS>>Other>>SMS_FILTER_RES_CONTINUE"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->a:I

    goto :goto_1

    :cond_3
    move v0, v7

    .line 33
    goto :goto_2

    .line 26
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

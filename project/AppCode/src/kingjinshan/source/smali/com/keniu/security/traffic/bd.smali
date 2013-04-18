.class final Lcom/keniu/security/traffic/bd;
.super Ljava/lang/Thread;
.source "TrafficMainActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficMainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficMainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 964
    iput-object p1, p0, Lcom/keniu/security/traffic/bd;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 968
    iget-object v0, p0, Lcom/keniu/security/traffic/bd;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    .line 970
    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    .line 971
    iget-object v5, v0, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 972
    iget-object v1, v0, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v6

    .line 973
    :cond_0
    iget-object v5, v0, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 974
    iget-object v2, v0, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    .line 975
    :cond_1
    iget-object v5, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 976
    iget-object v3, v0, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    .line 977
    :cond_2
    iget-object v5, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 978
    iget-object v0, v0, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v6

    .line 980
    :goto_0
    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v4

    invoke-virtual {v4, v1, v2, v3, v0}, Lcn/com/wali/zft/plugin;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 982
    if-eq v0, v7, :cond_3

    .line 983
    iget-object v0, p0, Lcom/keniu/security/traffic/bd;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->o(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 990
    :goto_1
    return-void

    .line 985
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/bd;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 987
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/a;->a(J)V

    .line 988
    iget-object v0, p0, Lcom/keniu/security/traffic/bd;->a:Lcom/keniu/security/traffic/TrafficMainActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficMainActivity;->o(Lcom/keniu/security/traffic/TrafficMainActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_4
    move-object v0, v4

    goto :goto_0
.end method

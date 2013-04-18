.class final Lcom/keniu/security/traffic/dq;
.super Landroid/os/Handler;
.source "TrafficXuanFuChuangListActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/keniu/security/traffic/dq;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Lcom/keniu/security/traffic/dq;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->a(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Lcom/keniu/security/util/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/keniu/security/traffic/dq;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->a(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Lcom/keniu/security/util/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/aw;->a()V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/dq;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->b(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "paused ------reurn"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    :goto_0
    return-void

    .line 109
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 111
    :pswitch_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "receiver msg COMPLETE"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/keniu/security/traffic/dq;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/keniu/security/traffic/dq;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Vector;

    invoke-static {v1, v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->a(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;Ljava/util/Vector;)Ljava/util/Vector;

    .line 114
    iget-object v0, p0, Lcom/keniu/security/traffic/dq;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->d(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Lcom/keniu/security/traffic/dn;

    move-result-object v0

    if-nez v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/keniu/security/traffic/dq;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    new-instance v1, Lcom/keniu/security/traffic/dn;

    iget-object v2, p0, Lcom/keniu/security/traffic/dq;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    iget-object v3, p0, Lcom/keniu/security/traffic/dq;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->e(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Ljava/util/Vector;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/keniu/security/traffic/dn;-><init>(Landroid/content/Context;Ljava/util/Vector;)V

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->a(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;Lcom/keniu/security/traffic/dn;)Lcom/keniu/security/traffic/dn;

    .line 117
    iget-object v0, p0, Lcom/keniu/security/traffic/dq;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->f(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/dq;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->d(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Lcom/keniu/security/traffic/dn;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/dq;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->d(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Lcom/keniu/security/traffic/dn;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/dq;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->e(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/dn;->a(Ljava/util/Vector;)V

    .line 120
    iget-object v0, p0, Lcom/keniu/security/traffic/dq;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->d(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Lcom/keniu/security/traffic/dn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/traffic/dn;->notifyDataSetChanged()V

    goto :goto_0

    .line 124
    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/traffic/dq;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->e(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Ljava/util/Vector;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/keniu/security/traffic/dq;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->e(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 126
    iget-object v0, p0, Lcom/keniu/security/traffic/dq;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->d(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Lcom/keniu/security/traffic/dn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/traffic/dn;->notifyDataSetChanged()V

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/dq;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->c(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

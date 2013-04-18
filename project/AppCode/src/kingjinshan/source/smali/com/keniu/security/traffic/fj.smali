.class final Lcom/keniu/security/traffic/fj;
.super Ljava/lang/Thread;
.source "TrafficZiFeiSubSettingActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/fi;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/fi;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 113
    iget-object v0, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v0, v0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 117
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 118
    iget-object v1, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v1, v1, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    iput-object v0, v1, Lcom/keniu/security/traffic/y;->p:Ljava/lang/String;

    .line 119
    if-eqz v0, :cond_0

    .line 120
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v0, v0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v1, v1, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    const v2, 0x7f0b03c9

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v0, v0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v0, v0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->a(Landroid/content/Context;)V

    .line 130
    iget-object v0, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v0, v0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    iget-object v1, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v1, v1, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    iget-object v1, v1, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v0, v0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-object v0, v0, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v7

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->e(Ljava/lang/String;)V

    .line 145
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v0, v0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v1, v1, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    const v2, 0x7f0b03cb

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 148
    iget-object v0, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v0, v0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v1, v1, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    const v2, 0x7f0b03cc

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 151
    iget-object v0, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v0, v0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v1, v1, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    const v2, 0x7f0b03cd

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 154
    iget-object v0, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v0, v0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v1, v1, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    const v2, 0x7f0b03ce

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 158
    invoke-static {}, Lcn/com/wali/zft/plugin;->getInstance()Lcn/com/wali/zft/plugin;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v1, v1, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    iget-object v1, v1, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v6

    iget-object v2, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v2, v2, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v2}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v2

    iget-object v2, v2, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v3, v3, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v3

    iget-object v3, v3, Lcom/keniu/security/traffic/y;->n:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    iget-object v4, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v4, v4, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v4}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v4

    iget-object v4, v4, Lcom/keniu/security/traffic/y;->m:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/com/wali/zft/plugin;->update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 163
    if-eq v0, v7, :cond_3

    .line 165
    iget-object v1, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v1, v1, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->e(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 167
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update failedfailed id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 180
    :goto_1
    return-void

    .line 137
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v1, v1, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    iget-object v1, v1, Lcom/keniu/security/traffic/y;->k:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v1, v1, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    iget-object v1, v1, Lcom/keniu/security/traffic/y;->l:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dc;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v0, v0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/a;->a(Landroid/content/Context;)Lcom/keniu/security/a;

    move-result-object v0

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/a;->a(J)V

    .line 176
    iget-object v0, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v0, v0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;->e(Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 177
    iget-object v0, p0, Lcom/keniu/security/traffic/fj;->a:Lcom/keniu/security/traffic/fi;

    iget-object v0, v0, Lcom/keniu/security/traffic/fi;->a:Lcom/keniu/security/traffic/TrafficZiFeiSubSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/sync/l;->a(Landroid/content/Context;)V

    goto :goto_1
.end method

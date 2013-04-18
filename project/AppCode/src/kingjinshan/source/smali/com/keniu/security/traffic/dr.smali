.class final Lcom/keniu/security/traffic/dr;
.super Ljava/lang/Object;
.source "TrafficXuanFuChuangListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 188
    iput-object p1, p0, Lcom/keniu/security/traffic/dr;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p2, p0, Lcom/keniu/security/traffic/dr;->b:Landroid/content/Context;

    .line 190
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x3e8

    const/4 v8, 0x1

    .line 195
    iget-object v0, p0, Lcom/keniu/security/traffic/dr;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->b(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "paused ------reurn"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 264
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/dr;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/z;->g(Landroid/content/Context;)Ljava/util/Vector;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/dr;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->g(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/dr;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->e(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 210
    :cond_2
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 212
    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 213
    new-instance v3, Lcom/keniu/security/traffic/do;

    invoke-direct {v3}, Lcom/keniu/security/traffic/do;-><init>()V

    .line 214
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 215
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v4, v3, Lcom/keniu/security/traffic/do;->f:I

    .line 216
    iget-object v4, p0, Lcom/keniu/security/traffic/dr;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-static {v4}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->h(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v3, Lcom/keniu/security/traffic/do;->a:Landroid/graphics/drawable/Drawable;

    .line 218
    iget-object v4, p0, Lcom/keniu/security/traffic/dr;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-static {v4}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->h(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/keniu/security/traffic/do;->b:Ljava/lang/String;

    .line 220
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, v3, Lcom/keniu/security/traffic/do;->e:Ljava/lang/String;

    .line 221
    invoke-static {}, Lcom/hoi/netstat/f;->a()Lcom/hoi/netstat/g;

    move-result-object v0

    .line 222
    iget v4, v3, Lcom/keniu/security/traffic/do;->f:I

    invoke-interface {v0, v4}, Lcom/hoi/netstat/g;->a(I)J

    move-result-wide v4

    iget v6, v3, Lcom/keniu/security/traffic/do;->f:I

    invoke-interface {v0, v6}, Lcom/hoi/netstat/g;->b(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/keniu/security/traffic/do;->c:J

    .line 225
    invoke-virtual {v1, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 229
    :cond_3
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_2
    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 236
    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 238
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/do;

    .line 239
    invoke-static {}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->a()Lcom/hoi/netstat/g;

    move-result-object v3

    iget v4, v0, Lcom/keniu/security/traffic/do;->f:I

    invoke-interface {v3, v4}, Lcom/hoi/netstat/g;->a(I)J

    move-result-wide v3

    invoke-static {}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->a()Lcom/hoi/netstat/g;

    move-result-object v5

    iget v6, v0, Lcom/keniu/security/traffic/do;->f:I

    invoke-interface {v5, v6}, Lcom/hoi/netstat/g;->b(I)J

    move-result-wide v5

    add-long/2addr v3, v5

    iput-wide v3, v0, Lcom/keniu/security/traffic/do;->d:J

    .line 241
    iget-object v3, v0, Lcom/keniu/security/traffic/do;->e:Ljava/lang/String;

    const-string v4, "com.ijinshan.mguard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 243
    iget-object v3, p0, Lcom/keniu/security/traffic/dr;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-static {v3, v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->a(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;Lcom/keniu/security/traffic/do;)Lcom/keniu/security/traffic/do;

    .line 245
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 230
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 250
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/traffic/dr;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->i(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Lcom/keniu/security/traffic/do;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 251
    iget-object v0, p0, Lcom/keniu/security/traffic/dr;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->i(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Lcom/keniu/security/traffic/do;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, p0, Lcom/keniu/security/traffic/dr;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->a(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;Lcom/keniu/security/traffic/do;)Lcom/keniu/security/traffic/do;

    .line 255
    :cond_6
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_7

    .line 256
    iget-object v0, p0, Lcom/keniu/security/traffic/dr;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->g(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v8, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 260
    :cond_7
    iget-object v0, p0, Lcom/keniu/security/traffic/dr;->a:Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;->g(Lcom/keniu/security/traffic/TrafficXuanFuChuangListActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 263
    iget-object v0, p0, Lcom/keniu/security/traffic/dr;->b:Landroid/content/Context;

    invoke-static {v0, p0, v9, v10}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/Runnable;J)V

    goto/16 :goto_0
.end method

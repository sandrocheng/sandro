.class public final Lcom/keniu/security/main/cb;
.super Lcom/keniu/security/main/bs;
.source "ModuleTraffic.java"


# static fields
.field private static u:J


# instance fields
.field private v:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/keniu/security/main/bs;-><init>()V

    return-void
.end method

.method static synthetic a(J)J
    .locals 0
    .parameter

    .prologue
    .line 20
    sput-wide p0, Lcom/keniu/security/main/cb;->u:J

    return-wide p0
.end method

.method static synthetic a(Lcom/keniu/security/main/cb;)Z
    .locals 1
    .parameter

    .prologue
    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/keniu/security/main/cb;->v:Z

    return v0
.end method

.method public static f()Z
    .locals 6

    .prologue
    .line 196
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    sget v1, Lcom/keniu/security/main/bn;->e:I

    const-string v2, "param1"

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/main/bn;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 198
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xf731400

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 200
    const/4 v0, 0x1

    .line 202
    :goto_1
    return v0

    .line 196
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 202
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static g()V
    .locals 4

    .prologue
    .line 206
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 208
    sget v2, Lcom/keniu/security/main/bn;->e:I

    const-string v3, "param1"

    invoke-virtual {v0, v2, v3, v1}, Lcom/keniu/security/main/bn;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method private static h()J
    .locals 3

    .prologue
    .line 185
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    .line 186
    sget v1, Lcom/keniu/security/main/bn;->e:I

    const-string v2, "param1"

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/main/bn;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 192
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Lcom/keniu/security/main/bs;->a()I

    move-result v0

    return v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 28
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    .line 29
    const-string v1, "main"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 30
    invoke-virtual {v0}, Lcom/keniu/security/main/bn;->d()Landroid/content/Context;

    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    .line 33
    iget-wide v2, v1, Lcom/keniu/security/traffic/y;->d:J

    sget-wide v4, Lcom/keniu/security/main/cb;->u:J

    sub-long/2addr v2, v4

    .line 34
    cmp-long v4, v2, v9

    if-gez v4, :cond_0

    .line 35
    const v1, 0x7f0b081b

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 37
    new-array v1, v8, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    neg-long v2, v2

    invoke-static {v2, v3}, Lcom/keniu/security/util/ax;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 109
    :goto_0
    return-object v0

    .line 39
    :cond_0
    iget-wide v4, v1, Lcom/keniu/security/traffic/y;->g:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 40
    const v1, 0x7f0b081a

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 42
    new-array v1, v8, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2, v3}, Lcom/keniu/security/util/ax;->b(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 45
    :cond_1
    const v1, 0x7f0b0819

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    new-array v1, v8, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v3, Lcom/keniu/security/main/cb;->u:J

    invoke-static {v3, v4}, Lcom/keniu/security/util/ax;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 50
    :cond_2
    const-string v1, "process_left"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    const v1, 0x7f0b081c

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_3
    const-string v1, "process_right"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 53
    const v1, 0x7f0b0803

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 54
    :cond_4
    const-string v1, "description"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 56
    invoke-virtual {v0}, Lcom/keniu/security/main/bn;->d()Landroid/content/Context;

    move-result-object v1

    .line 57
    invoke-static {v1}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v2

    .line 59
    invoke-static {v1}, Lcom/keniu/security/traffic/y;->d(Landroid/content/Context;)Z

    move-result v3

    .line 60
    invoke-static {v1}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    invoke-static {}, Lcom/keniu/security/traffic/y;->b()Z

    move-result v4

    .line 63
    iget-boolean v5, v2, Lcom/keniu/security/traffic/y;->a:Z

    if-nez v5, :cond_5

    .line 64
    const v0, 0x7f0b02b3

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/keniu/security/util/ae;->c:Lcom/keniu/security/util/ae;

    invoke-static {v0, v1}, Lcom/keniu/security/util/ad;->a(Ljava/lang/CharSequence;Lcom/keniu/security/util/ae;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 67
    :cond_5
    if-nez v3, :cond_6

    if-nez v4, :cond_6

    .line 69
    const-string v0, "\u672a\u8bbe\u7f6e\u8fd0\u8425\u5546\u548c\u5957\u9910\u4fe1\u606f"

    sget-object v1, Lcom/keniu/security/util/ae;->c:Lcom/keniu/security/util/ae;

    invoke-static {v0, v1}, Lcom/keniu/security/util/ad;->a(Ljava/lang/CharSequence;Lcom/keniu/security/util/ae;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 71
    :cond_6
    if-nez v3, :cond_7

    if-eqz v4, :cond_7

    .line 73
    const-string v0, "\u672a\u8bbe\u7f6e\u5957\u9910\u4fe1\u606f"

    sget-object v1, Lcom/keniu/security/util/ae;->c:Lcom/keniu/security/util/ae;

    invoke-static {v0, v1}, Lcom/keniu/security/util/ad;->a(Ljava/lang/CharSequence;Lcom/keniu/security/util/ae;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 75
    :cond_7
    if-eqz v3, :cond_8

    if-nez v4, :cond_8

    .line 78
    const-string v0, "\u672a\u8bbe\u7f6e\u8fd0\u8425\u5546\u4fe1\u606f"

    sget-object v1, Lcom/keniu/security/util/ae;->c:Lcom/keniu/security/util/ae;

    invoke-static {v0, v1}, Lcom/keniu/security/util/ad;->a(Ljava/lang/CharSequence;Lcom/keniu/security/util/ae;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 82
    :cond_8
    iget-wide v3, v2, Lcom/keniu/security/traffic/y;->d:J

    sget-wide v5, Lcom/keniu/security/main/cb;->u:J

    sub-long/2addr v3, v5

    .line 83
    cmp-long v1, v3, v9

    if-gez v1, :cond_9

    .line 84
    const v1, 0x7f0b081e

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 86
    new-array v1, v8, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    neg-long v3, v3

    invoke-static {v3, v4}, Lcom/keniu/security/util/ax;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/keniu/security/util/ae;->c:Lcom/keniu/security/util/ae;

    invoke-static {v0, v1}, Lcom/keniu/security/util/ad;->a(Ljava/lang/CharSequence;Lcom/keniu/security/util/ae;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 91
    :cond_9
    iget-wide v5, v2, Lcom/keniu/security/traffic/y;->g:J

    cmp-long v1, v5, v9

    if-eqz v1, :cond_a

    cmp-long v1, v3, v9

    if-ltz v1, :cond_a

    iget-wide v1, v2, Lcom/keniu/security/traffic/y;->g:J

    cmp-long v1, v3, v1

    if-gez v1, :cond_a

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u672c\u6708\u6d41\u91cf\u5269\u4f59"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v3, v4}, Lcom/keniu/security/util/ax;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB\uff0c\u8bf7\u8c28\u614e\u4f7f\u7528"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/keniu/security/util/ae;->f:Lcom/keniu/security/util/ae;

    invoke-static {v0, v1}, Lcom/keniu/security/util/ad;->a(Ljava/lang/CharSequence;Lcom/keniu/security/util/ae;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 99
    :cond_a
    const v1, 0x7f0b081f

    invoke-virtual {v0, v1}, Lcom/keniu/security/main/bn;->c(I)Ljava/lang/String;

    move-result-object v0

    .line 101
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-wide v5, Lcom/keniu/security/main/cb;->u:J

    invoke-static {v5, v6}, Lcom/keniu/security/util/ax;->a(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "MB"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3, v4}, Lcom/keniu/security/util/ax;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 109
    :cond_b
    sget v1, Lcom/keniu/security/main/bn;->e:I

    invoke-virtual {v0, v1, p1}, Lcom/keniu/security/main/bn;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public final a(Landroid/content/Context;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 215
    if-nez p2, :cond_1

    .line 217
    :try_start_0
    const-string v0, "5"

    invoke-static {p1, v0}, Lcom/jxphone/mosecurity/a/a;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 220
    const-class v1, Lcom/keniu/security/traffic/TrafficTabActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 221
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 222
    invoke-static {}, Lcom/keniu/security/main/cb;->g()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    if-ne p2, v0, :cond_0

    .line 226
    invoke-static {}, Lcom/keniu/security/main/cb;->g()V

    .line 227
    invoke-virtual {p0, v0}, Lcom/keniu/security/main/cb;->a(I)V

    goto :goto_0

    .line 224
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x2

    return v0
.end method

.method public final c()I
    .locals 2

    .prologue
    .line 242
    invoke-super {p0}, Lcom/keniu/security/main/bs;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 243
    const/4 v0, 0x1

    .line 245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 23
    sget v0, Lcom/keniu/security/main/bn;->e:I

    return v0
.end method

.method public final e()V
    .locals 6

    .prologue
    .line 127
    invoke-static {}, Lcom/keniu/security/main/bn;->a()Lcom/keniu/security/main/bn;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/keniu/security/main/bn;->d()Landroid/content/Context;

    move-result-object v0

    .line 129
    invoke-static {v0}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v1

    .line 131
    new-instance v2, Lcom/keniu/security/main/cc;

    invoke-direct {v2, p0, v1, v0}, Lcom/keniu/security/main/cc;-><init>(Lcom/keniu/security/main/cb;Lcom/keniu/security/traffic/y;Landroid/content/Context;)V

    .line 160
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/keniu/security/main/cb;->v:Z

    .line 161
    invoke-static {v0, v2}, Lcom/keniu/security/traffic/dd;->a(Landroid/content/Context;Ljava/lang/Runnable;)V

    .line 163
    monitor-enter v2

    .line 164
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lcom/keniu/security/main/cb;->v:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 166
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v3

    goto :goto_0

    .line 170
    :cond_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 172
    invoke-static {v0}, Lcom/keniu/security/traffic/y;->d(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/cb;->a(I)V

    .line 182
    :cond_1
    :goto_1
    return-void

    .line 170
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 177
    :cond_2
    iget-wide v2, v1, Lcom/keniu/security/traffic/y;->d:J

    sget-wide v4, Lcom/keniu/security/main/cb;->u:J

    sub-long/2addr v2, v4

    .line 178
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    iget-wide v0, v1, Lcom/keniu/security/traffic/y;->g:J

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    .line 179
    :cond_3
    invoke-static {}, Lcom/keniu/security/main/cb;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/keniu/security/main/cb;->a(I)V

    goto :goto_1
.end method

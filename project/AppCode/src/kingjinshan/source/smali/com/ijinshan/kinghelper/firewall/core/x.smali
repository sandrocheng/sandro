.class public final Lcom/ijinshan/kinghelper/firewall/core/x;
.super Ljava/lang/Object;
.source "SmsRecvMonitor.java"

# interfaces
.implements Lcom/keniu/security/monitor/b;


# static fields
.field private static final a:Ljava/lang/String; = "SmsRecvMonitor"

.field private static final b:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/ijinshan/kinghelper/firewall/core/w;)I
    .locals 8
    .parameter

    .prologue
    .line 328
    sget v6, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->a:I

    .line 329
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->a:Landroid/content/Context;

    .line 331
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->b:Landroid/content/Intent;

    const-string v2, "data"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 334
    :try_start_0
    new-instance v2, Lcom/ijinshan/kinghelper/firewall/core/d;

    invoke-direct {v2, v0}, Lcom/ijinshan/kinghelper/firewall/core/d;-><init>([B)V

    .line 335
    invoke-virtual {v2}, Lcom/ijinshan/kinghelper/firewall/core/d;->a()Lcom/ijinshan/kinghelper/firewall/core/v;

    move-result-object v7

    .line 336
    if-eqz v7, :cond_1

    .line 337
    iget-object v0, v7, Lcom/ijinshan/kinghelper/firewall/core/v;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 338
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 339
    iget-object v0, v7, Lcom/ijinshan/kinghelper/firewall/core/v;->e:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 342
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/core/x;->a(Z)I

    move-result v4

    const/4 v3, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/ijinshan/kinghelper/firewall/core/x;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v0

    .line 343
    if-eqz v0, :cond_1

    .line 344
    invoke-static {v2, v7, v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Ljava/lang/String;Lcom/ijinshan/kinghelper/firewall/core/v;Lcom/ijinshan/kinghelper/firewall/a/g;)J

    move-result-wide v2

    .line 346
    sget v0, Lcom/ijinshan/kinghelper/firewall/a/a;->h:I

    invoke-static {v1, v2, v3}, Lcom/ijinshan/kinghelper/firewall/core/h;->a(Landroid/content/Context;J)V

    .line 349
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->b:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :try_start_1
    const-string v2, "bkwapmms"

    invoke-static {v1, v2}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 365
    :goto_0
    return v0

    .line 357
    :cond_0
    :try_start_2
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->b:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v6

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_0
.end method

.method private static a(Z)I
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 287
    if-eqz p0, :cond_5

    .line 288
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->f()Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dg;->a:Lcom/ijinshan/kinghelper/firewall/dg;

    if-ne v0, v1, :cond_0

    move v0, v2

    .line 316
    :goto_0
    return v0

    .line 290
    :cond_0
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->f()Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dg;->b:Lcom/ijinshan/kinghelper/firewall/dg;

    if-ne v0, v1, :cond_1

    move v0, v3

    .line 291
    goto :goto_0

    .line 292
    :cond_1
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->f()Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dg;->e:Lcom/ijinshan/kinghelper/firewall/dg;

    if-ne v0, v1, :cond_2

    move v0, v4

    .line 293
    goto :goto_0

    .line 294
    :cond_2
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->f()Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dg;->f:Lcom/ijinshan/kinghelper/firewall/dg;

    if-ne v0, v1, :cond_3

    move v0, v5

    .line 295
    goto :goto_0

    .line 296
    :cond_3
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->f()Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dg;->c:Lcom/ijinshan/kinghelper/firewall/dg;

    if-ne v0, v1, :cond_4

    move v0, v6

    .line 297
    goto :goto_0

    .line 298
    :cond_4
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->f()Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/dg;->d:Lcom/ijinshan/kinghelper/firewall/dg;

    if-ne v0, v1, :cond_b

    .line 299
    const/4 v0, 0x6

    goto :goto_0

    .line 302
    :cond_5
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/df;->a:Lcom/ijinshan/kinghelper/firewall/df;

    if-ne v0, v1, :cond_6

    move v0, v2

    .line 303
    goto :goto_0

    .line 304
    :cond_6
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/df;->b:Lcom/ijinshan/kinghelper/firewall/df;

    if-ne v0, v1, :cond_7

    move v0, v3

    .line 305
    goto :goto_0

    .line 306
    :cond_7
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/df;->e:Lcom/ijinshan/kinghelper/firewall/df;

    if-ne v0, v1, :cond_8

    move v0, v4

    .line 307
    goto :goto_0

    .line 308
    :cond_8
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/df;->f:Lcom/ijinshan/kinghelper/firewall/df;

    if-ne v0, v1, :cond_9

    move v0, v5

    .line 309
    goto :goto_0

    .line 310
    :cond_9
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/df;->c:Lcom/ijinshan/kinghelper/firewall/df;

    if-ne v0, v1, :cond_a

    move v0, v6

    .line 311
    goto :goto_0

    .line 312
    :cond_a
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v0

    sget-object v1, Lcom/ijinshan/kinghelper/firewall/df;->d:Lcom/ijinshan/kinghelper/firewall/df;

    if-ne v0, v1, :cond_b

    .line 313
    const/4 v0, 0x6

    goto :goto_0

    .line 316
    :cond_b
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/a/g;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 321
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->a(Landroid/content/Context;)Z

    move-result v0

    .line 323
    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/core/x;->a(Z)I

    move-result v4

    .line 324
    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/ijinshan/kinghelper/firewall/core/x;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/a/g;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 249
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 252
    const-string v0, "SmsRecvMonitor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBlockingSms=InterceptMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v3

    .line 269
    :goto_0
    return-object v0

    .line 261
    :cond_0
    invoke-static {p1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->d()Z

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v3

    .line 264
    goto :goto_0

    .line 266
    :cond_1
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->a(Landroid/content/Context;)Z

    move-result v0

    .line 268
    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/core/x;->a(Z)I

    move-result v4

    .line 269
    const/4 v5, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lcom/ijinshan/kinghelper/firewall/core/x;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/ijinshan/kinghelper/firewall/a/g;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v7, 0x7f0b010a

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 46
    if-eqz p0, :cond_1

    move v0, v3

    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v1, p4, 0x64

    add-int/2addr v0, v1

    .line 47
    if-ne p4, v3, :cond_9

    .line 48
    invoke-static {p1}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 49
    if-nez p5, :cond_8

    .line 50
    invoke-static {p2, p3, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    iput-boolean p0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    .line 56
    iget v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    if-gez v2, :cond_2

    .line 57
    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->b:I

    :cond_0
    :goto_1
    move-object v0, v1

    .line 244
    :goto_2
    return-object v0

    :cond_1
    move v0, v4

    .line 46
    goto :goto_0

    .line 58
    :cond_2
    iget v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    if-nez v2, :cond_3

    iget v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    if-ne v2, v5, :cond_3

    .line 60
    add-int/lit8 v0, v0, 0x2

    iput v0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->b:I

    goto :goto_1

    .line 61
    :cond_3
    iget v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    if-lez v2, :cond_4

    iget v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    if-ne v2, v3, :cond_4

    .line 63
    add-int/lit8 v0, v0, 0x3

    iput v0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->b:I

    goto :goto_1

    .line 64
    :cond_4
    iget v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    if-nez v2, :cond_5

    iget v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    const/16 v3, 0x100

    if-ne v2, v3, :cond_5

    .line 66
    add-int/lit8 v0, v0, 0x4

    iput v0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->b:I

    goto :goto_1

    .line 67
    :cond_5
    iget v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    if-lez v2, :cond_7

    iget v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    if-eq v2, v5, :cond_6

    iget v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    if-ne v2, v6, :cond_7

    .line 69
    :cond_6
    add-int/lit8 v0, v0, 0x5

    iput v0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->b:I

    goto :goto_1

    .line 71
    :cond_7
    add-int/lit8 v0, v0, 0x0

    iput v0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->b:I

    goto :goto_1

    .line 76
    :cond_8
    invoke-static {p2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v1

    .line 78
    if-eqz v1, :cond_17

    .line 79
    iput-boolean p0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    .line 80
    add-int/lit8 v0, v0, 0x5

    iput v0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->b:I

    move-object v0, v1

    .line 81
    goto :goto_2

    .line 85
    :cond_9
    if-ne p4, v5, :cond_b

    .line 86
    invoke-static {p1}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 87
    invoke-static {p2, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v1

    .line 89
    invoke-static {p1}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 90
    if-eqz v1, :cond_a

    .line 91
    iput-boolean p0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    .line 92
    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->b:I

    :cond_a
    move-object v0, v1

    .line 94
    goto :goto_2

    .line 95
    :cond_b
    if-ne p4, v6, :cond_f

    .line 96
    invoke-static {p1}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 97
    invoke-static {p2, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->c(Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v1

    .line 99
    if-eqz v1, :cond_c

    .line 100
    iput-boolean p0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    .line 102
    iget v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    if-lez v2, :cond_d

    .line 103
    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->b:I

    :cond_c
    :goto_3
    move-object v0, v1

    .line 109
    goto :goto_2

    .line 104
    :cond_d
    iget v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    if-nez v2, :cond_e

    .line 105
    add-int/lit8 v0, v0, 0x2

    iput v0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->b:I

    goto :goto_3

    .line 107
    :cond_e
    add-int/lit8 v0, v0, 0x0

    iput v0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->b:I

    goto :goto_3

    .line 110
    :cond_f
    const/4 v1, 0x4

    if-ne p4, v1, :cond_14

    .line 112
    invoke-static {p1}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 113
    invoke-static {p2, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 116
    if-nez v1, :cond_10

    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->d(Z)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 119
    invoke-static {p2, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v2

    .line 121
    if-eqz v2, :cond_10

    .line 122
    iput-boolean p0, v2, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    .line 123
    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lcom/ijinshan/kinghelper/firewall/a/g;->b:I

    move-object v0, v2

    .line 124
    goto/16 :goto_2

    .line 127
    :cond_10
    if-nez v1, :cond_11

    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->e(Z)Z

    move-result v2

    if-eqz v2, :cond_11

    if-nez p5, :cond_11

    .line 131
    invoke-static {p1, p2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 133
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v1}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    .line 134
    iput v4, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    .line 135
    iput v6, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    .line 136
    const v2, 0x7f0b010d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    .line 138
    const-string v2, ""

    iput-object v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    .line 139
    iput v5, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    .line 140
    const v2, 0x7f0b010d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    .line 142
    iput v5, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    .line 143
    iput-boolean p0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    .line 144
    add-int/lit8 v0, v0, 0x2

    iput v0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->b:I

    move-object v0, v1

    .line 145
    goto/16 :goto_2

    .line 149
    :cond_11
    if-nez v1, :cond_12

    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->g(Z)Z

    move-result v2

    if-eqz v2, :cond_12

    if-nez p5, :cond_12

    .line 153
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->h()Ljava/lang/String;

    move-result-object v2

    .line 155
    invoke-static {v2, p3}, Lcom/ijinshan/kinghelper/a/i;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 156
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v1}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    .line 157
    iput v4, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    .line 158
    iput v6, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    .line 159
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    .line 161
    iput-object v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    .line 162
    iput v5, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    .line 163
    invoke-virtual {p1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    .line 165
    iput v5, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    .line 166
    iput-boolean p0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    .line 167
    add-int/lit8 v0, v0, 0x3

    iput v0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->b:I

    move-object v0, v1

    .line 168
    goto/16 :goto_2

    .line 172
    :cond_12
    if-nez v1, :cond_13

    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->c(Z)Z

    move-result v2

    if-eqz v2, :cond_13

    if-nez p5, :cond_13

    .line 177
    invoke-static {p1, p2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    invoke-static {p2}, Lcom/ijinshan/kinghelper/firewall/a/e;->f(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    .line 180
    invoke-static {p2, p3, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v2

    .line 183
    if-eqz v2, :cond_13

    .line 184
    iput-boolean p0, v2, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    .line 185
    add-int/lit8 v0, v0, 0x4

    iput v0, v2, Lcom/ijinshan/kinghelper/firewall/a/g;->b:I

    move-object v0, v2

    .line 186
    goto/16 :goto_2

    .line 190
    :cond_13
    if-nez v1, :cond_17

    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->j(Z)Z

    move-result v1

    if-eqz v1, :cond_17

    if-eqz p5, :cond_17

    .line 192
    invoke-static {p2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v1

    .line 194
    if-eqz v1, :cond_17

    .line 195
    iput-boolean p0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    .line 196
    add-int/lit8 v0, v0, 0x5

    iput v0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->b:I

    move-object v0, v1

    .line 197
    goto/16 :goto_2

    .line 200
    :cond_14
    const/4 v1, 0x5

    if-ne p4, v1, :cond_16

    .line 202
    invoke-static {p1}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 203
    invoke-static {p2, v3}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;Z)Z

    move-result v1

    .line 205
    if-nez v1, :cond_15

    .line 206
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v1}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    .line 207
    iput-boolean p0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    .line 209
    iput v4, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    .line 210
    iput v6, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    .line 211
    const v2, 0x7f0b010b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    .line 213
    const-string v2, ""

    iput-object v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    .line 214
    iput v3, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    .line 215
    const v2, 0x7f0b010b

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    .line 217
    iput v5, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    .line 218
    iput-boolean p0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    .line 219
    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->b:I

    move-object v0, v1

    .line 221
    goto/16 :goto_2

    .line 223
    :cond_15
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 224
    :cond_16
    const/4 v1, 0x6

    if-ne p4, v1, :cond_17

    .line 226
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v1}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    .line 227
    iput-boolean p0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    .line 229
    iput v4, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    .line 230
    iput v6, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    .line 231
    const v2, 0x7f0b010c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    .line 233
    const-string v2, ""

    iput-object v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    .line 234
    iput v3, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    .line 235
    const v2, 0x7f0b010c

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    .line 237
    iput v5, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    .line 238
    iput-boolean p0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    .line 239
    add-int/lit8 v0, v0, 0x1

    iput v0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->b:I

    move-object v0, v1

    .line 241
    goto/16 :goto_2

    .line 244
    :cond_17
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method private static b(Lcom/ijinshan/kinghelper/firewall/core/w;)I
    .locals 7
    .parameter

    .prologue
    .line 369
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->a:I

    .line 370
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->c:Ljava/lang/String;

    .line 371
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    .line 372
    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->a:Landroid/content/Context;

    .line 374
    invoke-static {v3}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->a(Landroid/content/Context;)Z

    move-result v4

    .line 377
    sget-object v5, Lcom/ijinshan/kinghelper/firewall/df;->a:Lcom/ijinshan/kinghelper/firewall/df;

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v6

    if-eq v5, v6, :cond_2

    .line 378
    sget-object v5, Lcom/ijinshan/kinghelper/firewall/df;->f:Lcom/ijinshan/kinghelper/firewall/df;

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v6

    if-eq v5, v6, :cond_1

    .line 400
    :cond_0
    :goto_0
    return v0

    .line 382
    :cond_1
    invoke-static {v4}, Lcom/ijinshan/kinghelper/firewall/dd;->h(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 391
    :cond_2
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    .line 392
    const/4 v4, 0x0

    iput v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    .line 393
    const v4, 0x7f0b020e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    .line 394
    iget-object v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    iput-object v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    .line 395
    invoke-static {v1, v2, v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ijinshan/kinghelper/firewall/a/g;)J

    move-result-wide v0

    .line 397
    sget v2, Lcom/ijinshan/kinghelper/firewall/a/a;->i:I

    invoke-static {v3, v0, v1}, Lcom/ijinshan/kinghelper/firewall/core/h;->a(Landroid/content/Context;J)V

    .line 399
    const-string v0, "bkwappush"

    invoke-static {v3, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    .line 400
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->b:I

    goto :goto_0
.end method

.method private static c(Lcom/ijinshan/kinghelper/firewall/core/w;)I
    .locals 12
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 404
    sget v6, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->a:I

    .line 406
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->e:Z

    if-eqz v0, :cond_4

    .line 408
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->d()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    .line 462
    :cond_0
    :goto_0
    return v0

    .line 411
    :cond_1
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->h:Z

    if-eqz v0, :cond_2

    .line 412
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/core/x;->a(Lcom/ijinshan/kinghelper/firewall/core/w;)I

    move-result v0

    goto :goto_0

    .line 414
    :cond_2
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->a:I

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->a(Landroid/content/Context;)Z

    move-result v4

    sget-object v6, Lcom/ijinshan/kinghelper/firewall/df;->a:Lcom/ijinshan/kinghelper/firewall/df;

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v7

    if-eq v6, v7, :cond_3

    sget-object v6, Lcom/ijinshan/kinghelper/firewall/df;->f:Lcom/ijinshan/kinghelper/firewall/df;

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v7

    if-ne v6, v7, :cond_0

    invoke-static {v4}, Lcom/ijinshan/kinghelper/firewall/dd;->h(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_3
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    iput v5, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    const v4, 0x7f0b020e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    iget-object v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    iput-object v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ijinshan/kinghelper/firewall/a/g;)J

    move-result-wide v0

    sget v2, Lcom/ijinshan/kinghelper/firewall/a/a;->i:I

    invoke-static {v3, v0, v1}, Lcom/ijinshan/kinghelper/firewall/core/h;->a(Landroid/content/Context;J)V

    const-string v0, "bkwappush"

    invoke-static {v3, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    sget v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->b:I

    goto :goto_0

    .line 417
    :cond_4
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->a:Landroid/content/Context;

    .line 418
    iget-object v7, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->c:Ljava/lang/String;

    .line 419
    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 422
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    const-string v0, "SmsRecvMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBlockingSms=InterceptMode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v10

    .line 423
    :goto_1
    const-string v2, "SmsRecvMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive isBlockingSms cost:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const-string v2, "SmsRecvMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive a message,match rules:rule="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    if-eqz v0, :cond_9

    .line 431
    sget v2, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->b:I

    .line 433
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 435
    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/core/w;->f:[Landroid/telephony/SmsMessage;

    invoke-static {v4, v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a([Landroid/telephony/SmsMessage;Lcom/ijinshan/kinghelper/firewall/a/g;)J

    move-result-wide v4

    .line 438
    sget v6, Lcom/ijinshan/kinghelper/firewall/a/a;->g:I

    invoke-static {v1, v4, v5}, Lcom/ijinshan/kinghelper/firewall/core/h;->a(Landroid/content/Context;J)V

    .line 442
    iget v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->b:I

    invoke-static {v1, v4}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;I)V

    .line 445
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->j()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 447
    invoke-static {v1}, Lcom/keniu/security/util/at;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 448
    iget v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    const/16 v5, 0x100

    if-ne v4, v5, :cond_8

    .line 449
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xc

    const-string v4, ""

    invoke-static {v1, v7, v0, v3, v4}, Lcom/ijinshan/kinghelper/firewall/core/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 459
    :cond_5
    :goto_2
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/ijinshan/kinghelper/firewall/core/FirewallSmsTipDialog;->a(Landroid/content/Context;Z)V

    move v0, v2

    goto/16 :goto_0

    .line 422
    :cond_6
    invoke-static {v7}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->d()Z

    move-result v0

    if-nez v0, :cond_7

    move-object v0, v10

    goto/16 :goto_1

    :cond_7
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/core/x;->a(Z)I

    move-result v4

    invoke-static/range {v0 .. v5}, Lcom/ijinshan/kinghelper/firewall/core/x;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v0

    goto/16 :goto_1

    .line 452
    :cond_8
    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_5

    .line 453
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xd

    const-string v4, ""

    invoke-static {v1, v7, v0, v3, v4}, Lcom/ijinshan/kinghelper/firewall/core/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2

    :cond_9
    move v0, v6

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v5, 0x0

    .line 275
    check-cast p2, Lcom/ijinshan/kinghelper/firewall/core/w;

    .line 276
    sget v6, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->a:I

    iget-boolean v0, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->e:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->d()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/ijinshan/kinghelper/firewall/core/x;->a(Lcom/ijinshan/kinghelper/firewall/core/w;)I

    move-result v0

    .line 278
    :cond_0
    :goto_0
    sget v1, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->b:I

    if-ne v0, v1, :cond_8

    .line 279
    iget-object v0, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->g:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver;->abortBroadcast()V

    .line 280
    const/4 v0, 0x2

    .line 282
    :goto_1
    return v0

    .line 276
    :cond_1
    sget v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->a:I

    iget-object v1, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->c:Ljava/lang/String;

    iget-object v2, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    iget-object v3, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->a(Landroid/content/Context;)Z

    move-result v4

    sget-object v6, Lcom/ijinshan/kinghelper/firewall/df;->a:Lcom/ijinshan/kinghelper/firewall/df;

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v7

    if-eq v6, v7, :cond_2

    sget-object v6, Lcom/ijinshan/kinghelper/firewall/df;->f:Lcom/ijinshan/kinghelper/firewall/df;

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v7

    if-ne v6, v7, :cond_0

    invoke-static {v4}, Lcom/ijinshan/kinghelper/firewall/dd;->h(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    iput v5, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    const v4, 0x7f0b020e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    iget-object v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    iput-object v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ijinshan/kinghelper/firewall/a/g;)J

    move-result-wide v0

    sget v2, Lcom/ijinshan/kinghelper/firewall/a/a;->i:I

    invoke-static {v3, v0, v1}, Lcom/ijinshan/kinghelper/firewall/core/h;->a(Landroid/content/Context;J)V

    const-string v0, "bkwappush"

    invoke-static {v3, v0}, Lcom/jxphone/mosecurity/a/a;->i(Landroid/content/Context;Ljava/lang/String;)V

    sget v0, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->b:I

    goto :goto_0

    :cond_3
    iget-object v1, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->a:Landroid/content/Context;

    iget-object v7, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->c:Ljava/lang/String;

    iget-object v3, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    const-string v0, "SmsRecvMonitor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBlockingSms=InterceptMode="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v10

    :goto_2
    const-string v2, "SmsRecvMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "receive isBlockingSms cost:"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, "ms"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SmsRecvMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "receive a message,match rules:rule="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_9

    sget v2, Lcom/ijinshan/kinghelper/firewall/core/SmsFirewallBroadcastReceiver;->b:I

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    iget-object v4, p2, Lcom/ijinshan/kinghelper/firewall/core/w;->f:[Landroid/telephony/SmsMessage;

    invoke-static {v4, v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a([Landroid/telephony/SmsMessage;Lcom/ijinshan/kinghelper/firewall/a/g;)J

    move-result-wide v8

    sget v4, Lcom/ijinshan/kinghelper/firewall/a/a;->g:I

    invoke-static {v1, v8, v9}, Lcom/ijinshan/kinghelper/firewall/core/h;->a(Landroid/content/Context;J)V

    iget v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->b:I

    invoke-static {v1, v4}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;I)V

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->j()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v1}, Lcom/keniu/security/util/at;->b(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    const/16 v6, 0x100

    if-ne v4, v6, :cond_7

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xc

    const-string v4, ""

    invoke-static {v1, v7, v0, v3, v4}, Lcom/ijinshan/kinghelper/firewall/core/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_4
    :goto_3
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/ijinshan/kinghelper/firewall/core/FirewallSmsTipDialog;->a(Landroid/content/Context;Z)V

    move v0, v2

    goto/16 :goto_0

    :cond_5
    invoke-static {v7}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->d()Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v10

    goto/16 :goto_2

    :cond_6
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->a(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/core/x;->a(Z)I

    move-result v4

    invoke-static/range {v0 .. v5}, Lcom/ijinshan/kinghelper/firewall/core/x;->a(ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v0

    goto/16 :goto_2

    :cond_7
    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xd

    const-string v4, ""

    invoke-static {v1, v7, v0, v3, v4}, Lcom/ijinshan/kinghelper/firewall/core/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_3

    :cond_8
    move v0, v5

    .line 282
    goto/16 :goto_1

    :cond_9
    move v0, v6

    goto/16 :goto_0
.end method

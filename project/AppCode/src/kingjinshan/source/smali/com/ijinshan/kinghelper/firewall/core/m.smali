.class public final Lcom/ijinshan/kinghelper/firewall/core/m;
.super Landroid/telephony/PhoneStateListener;
.source "FirewallTelephonyListener.java"


# static fields
.field private static final a:I = 0xbb8

.field private static final b:Ljava/lang/String; = "FirewallTelephonyListener"

.field private static final c:Z = true


# instance fields
.field private d:Landroid/content/Context;

.field private e:Lcom/android/internal/telephony/ITelephony;

.field private f:J

.field private g:J

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Landroid/os/Handler;

.field private final k:Lcom/jxphone/mosecurity/logic/a/g;

.field private l:Z

.field private m:Landroid/media/AudioManager;

.field private n:Z

.field private o:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 50
    iput-wide v2, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->f:J

    .line 51
    iput-wide v2, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->g:J

    .line 52
    iput-boolean v1, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->h:Z

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->j:Landroid/os/Handler;

    .line 57
    iput-boolean v1, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->l:Z

    .line 60
    iput-boolean v1, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->n:Z

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->o:I

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->d:Landroid/content/Context;

    .line 65
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->e:Lcom/android/internal/telephony/ITelephony;

    .line 67
    invoke-static {p1}, Lcom/jxphone/mosecurity/logic/h;->b(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->k:Lcom/jxphone/mosecurity/logic/a/g;

    .line 68
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->d:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->m:Landroid/media/AudioManager;

    .line 69
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/core/m;)Landroid/os/Handler;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->j:Landroid/os/Handler;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Lcom/ijinshan/kinghelper/firewall/a/g;
    .locals 9
    .parameter
    .parameter

    .prologue
    const v8, 0x7f0b010b

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 361
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 363
    invoke-static {p1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->a(Landroid/content/Context;)Z

    move-result v1

    .line 367
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->d()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v0, v7

    .line 624
    :cond_0
    :goto_0
    return-object v0

    .line 370
    :cond_1
    if-eqz v1, :cond_b

    .line 371
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->f()Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v2

    sget-object v3, Lcom/ijinshan/kinghelper/firewall/dg;->b:Lcom/ijinshan/kinghelper/firewall/dg;

    if-ne v2, v3, :cond_2

    .line 372
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 373
    invoke-static {v0, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_0

    .line 377
    iput-boolean v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    goto :goto_0

    .line 379
    :cond_2
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->f()Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v2

    sget-object v3, Lcom/ijinshan/kinghelper/firewall/dg;->e:Lcom/ijinshan/kinghelper/firewall/dg;

    if-ne v2, v3, :cond_3

    .line 380
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 381
    invoke-static {v0, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->c(Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v0

    .line 384
    if-eqz v0, :cond_0

    .line 385
    iput-boolean v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    goto :goto_0

    .line 387
    :cond_3
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->f()Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v2

    sget-object v3, Lcom/ijinshan/kinghelper/firewall/dg;->c:Lcom/ijinshan/kinghelper/firewall/dg;

    if-ne v2, v3, :cond_5

    .line 388
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 389
    invoke-static {v0, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 391
    if-nez v0, :cond_4

    .line 392
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    .line 394
    iput v6, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    .line 395
    iput v5, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    .line 396
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    .line 398
    const-string v1, ""

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    .line 399
    iput v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    .line 400
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    .line 402
    iput v5, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    .line 403
    iput-boolean v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    goto :goto_0

    :cond_4
    move-object v0, v7

    .line 407
    goto :goto_0

    .line 408
    :cond_5
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->f()Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v2

    sget-object v3, Lcom/ijinshan/kinghelper/firewall/dg;->d:Lcom/ijinshan/kinghelper/firewall/dg;

    if-ne v2, v3, :cond_6

    .line 410
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 411
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    .line 413
    iput v6, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    .line 414
    iput v5, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    .line 415
    const v1, 0x7f0b010c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    .line 417
    const-string v1, ""

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    .line 418
    iput v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    .line 419
    const v1, 0x7f0b010c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    .line 421
    iput v5, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    .line 422
    iput-boolean v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    goto/16 :goto_0

    .line 425
    :cond_6
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->f()Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v2

    sget-object v3, Lcom/ijinshan/kinghelper/firewall/dg;->f:Lcom/ijinshan/kinghelper/firewall/dg;

    if-ne v2, v3, :cond_16

    .line 426
    invoke-static {v0, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 428
    if-eqz v2, :cond_7

    move-object v0, v7

    .line 429
    goto/16 :goto_0

    .line 431
    :cond_7
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dd;->d(Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 433
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 434
    invoke-static {v0, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v2

    .line 438
    if-eqz v2, :cond_8

    .line 439
    iput-boolean v4, v2, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    move-object v0, v2

    .line 440
    goto/16 :goto_0

    .line 443
    :cond_8
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dd;->f(Z)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 445
    invoke-static {p0, v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 447
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    .line 448
    iput v6, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    .line 449
    iput v5, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    .line 450
    const v1, 0x7f0b010d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    .line 452
    const-string v1, ""

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    .line 453
    iput v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    .line 454
    const v1, 0x7f0b010d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    .line 456
    iput v5, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    .line 457
    iput-boolean v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    goto/16 :goto_0

    .line 462
    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/jxphone/mosecurity/d/l;->d()Z

    move-result v2

    if-nez v2, :cond_a

    .line 465
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dd;->i(Z)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 466
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    .line 467
    iput v6, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    .line 468
    iput v5, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    .line 469
    const v1, 0x7f0b010e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    .line 471
    const-string v1, ""

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    .line 472
    iput v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    .line 473
    const v1, 0x7f0b010e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    .line 475
    iput v5, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    .line 476
    iput-boolean v6, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    goto/16 :goto_0

    .line 481
    :cond_a
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dd;->c(Z)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 482
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 483
    invoke-static {v0, v7, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v0

    .line 486
    if-eqz v0, :cond_16

    .line 487
    iput-boolean v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    goto/16 :goto_0

    .line 492
    :cond_b
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->f()Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v2

    sget-object v3, Lcom/ijinshan/kinghelper/firewall/dg;->a:Lcom/ijinshan/kinghelper/firewall/dg;

    if-ne v2, v3, :cond_c

    .line 493
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 494
    invoke-static {v0, v7, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v0

    .line 497
    if-eqz v0, :cond_0

    .line 498
    iput-boolean v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    goto/16 :goto_0

    .line 501
    :cond_c
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v2

    sget-object v3, Lcom/ijinshan/kinghelper/firewall/df;->b:Lcom/ijinshan/kinghelper/firewall/df;

    if-ne v2, v3, :cond_d

    .line 502
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 503
    invoke-static {v0, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v0

    goto/16 :goto_0

    .line 507
    :cond_d
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v2

    sget-object v3, Lcom/ijinshan/kinghelper/firewall/df;->e:Lcom/ijinshan/kinghelper/firewall/df;

    if-ne v2, v3, :cond_e

    .line 508
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 509
    invoke-static {v0, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->c(Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v0

    goto/16 :goto_0

    .line 513
    :cond_e
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v2

    sget-object v3, Lcom/ijinshan/kinghelper/firewall/df;->c:Lcom/ijinshan/kinghelper/firewall/df;

    if-ne v2, v3, :cond_10

    .line 514
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 515
    invoke-static {v0, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 517
    if-nez v0, :cond_f

    .line 518
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    .line 520
    iput v6, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    .line 521
    iput v5, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    .line 522
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    .line 524
    const-string v1, ""

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    .line 525
    iput v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    .line 526
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    .line 528
    iput v5, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    .line 529
    iput-boolean v6, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    goto/16 :goto_0

    :cond_f
    move-object v0, v7

    .line 533
    goto/16 :goto_0

    .line 534
    :cond_10
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v2

    sget-object v3, Lcom/ijinshan/kinghelper/firewall/df;->d:Lcom/ijinshan/kinghelper/firewall/df;

    if-ne v2, v3, :cond_11

    .line 536
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 537
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    .line 539
    iput v6, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    .line 540
    iput v5, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    .line 541
    const v1, 0x7f0b010c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    .line 543
    const-string v1, ""

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    .line 544
    iput v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    .line 545
    const v1, 0x7f0b010c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    .line 547
    iput v5, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    .line 548
    iput-boolean v6, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    goto/16 :goto_0

    .line 551
    :cond_11
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v2

    sget-object v3, Lcom/ijinshan/kinghelper/firewall/df;->f:Lcom/ijinshan/kinghelper/firewall/df;

    if-ne v2, v3, :cond_17

    .line 552
    invoke-static {v0, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;Z)Z

    move-result v2

    .line 554
    if-eqz v2, :cond_12

    move-object v0, v7

    .line 555
    goto/16 :goto_0

    .line 557
    :cond_12
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dd;->d(Z)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 559
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 560
    invoke-static {v0, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v2

    .line 564
    if-eqz v2, :cond_13

    move-object v0, v2

    .line 565
    goto/16 :goto_0

    .line 568
    :cond_13
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dd;->f(Z)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 570
    invoke-static {p0, v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 572
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    .line 573
    iput v6, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    .line 574
    iput v5, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    .line 575
    const v1, 0x7f0b010d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    .line 577
    const-string v1, ""

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    .line 578
    iput v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    .line 579
    const v1, 0x7f0b010d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    .line 581
    iput v5, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    goto/16 :goto_0

    .line 586
    :cond_14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {}, Lcom/jxphone/mosecurity/d/l;->d()Z

    move-result v2

    if-nez v2, :cond_15

    .line 589
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dd;->i(Z)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 590
    new-instance v0, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v0}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    .line 591
    iput v6, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    .line 592
    iput v5, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    .line 593
    const v1, 0x7f0b010e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    .line 595
    const-string v1, ""

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    .line 596
    iput v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    .line 597
    const v1, 0x7f0b010e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    .line 599
    iput v5, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    .line 600
    iput-boolean v6, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    goto/16 :goto_0

    .line 605
    :cond_15
    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/dd;->c(Z)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 606
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 607
    invoke-static {v0, v7, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v0

    .line 610
    if-nez v0, :cond_0

    :cond_16
    move-object v0, v7

    .line 624
    goto/16 :goto_0

    .line 614
    :cond_17
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v1

    sget-object v2, Lcom/ijinshan/kinghelper/firewall/df;->a:Lcom/ijinshan/kinghelper/firewall/df;

    if-ne v1, v2, :cond_16

    .line 615
    invoke-static {p0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 616
    invoke-static {v0, v7, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v0

    .line 619
    if-eqz v0, :cond_0

    .line 620
    iput-boolean v4, v0, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    goto/16 :goto_0

    :cond_18
    move-object v0, v7

    goto/16 :goto_0

    :cond_19
    move-object v0, v7

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 323
    invoke-static {p1, v3}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->d:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/ijinshan/kinghelper/firewall/a/e;->g(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    invoke-static {p1}, Lcom/ijinshan/kinghelper/firewall/a/e;->f(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 331
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->d:Landroid/content/Context;

    const-class v2, Lcom/jxphone/mosecurity/logic/PhoneCallWarningDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 333
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 334
    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->d:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 340
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/ijinshan/kinghelper/firewall/core/m;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->d:Landroid/content/Context;

    return-object v0
.end method

.method private static b()V
    .locals 0

    .prologue
    .line 76
    return-void
.end method

.method static synthetic c(Lcom/ijinshan/kinghelper/firewall/core/m;)Lcom/jxphone/mosecurity/logic/a/g;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->k:Lcom/jxphone/mosecurity/logic/a/g;

    return-object v0
.end method

.method private c()V
    .locals 4

    .prologue
    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->e:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    .line 349
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->e:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V

    .line 351
    const-string v0, "FirewallTelephonyListener"

    const-string v1, "blockingCall>>"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_0
    return-void

    .line 352
    :catch_0
    move-exception v0

    .line 354
    const-string v1, "FirewallTelephonyListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    .line 73
    return-void
.end method

.method public final onCallStateChanged(ILjava/lang/String;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 115
    const-string v0, "FirewallTelephonyListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action=onCallStateChanged>STATE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",INCOMING_NUMBER="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mOffHook="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->l:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->a(Landroid/content/Context;)Z

    .line 121
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    .line 126
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 128
    :pswitch_0
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->k:Lcom/jxphone/mosecurity/logic/a/g;

    invoke-interface {v0, v7}, Lcom/jxphone/mosecurity/logic/a/g;->a(I)V

    .line 129
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->h:Z

    if-eqz v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    invoke-static {}, Lcom/jxphone/mosecurity/d/l;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/core/FirewallHideNumberTipDialog;->a(Landroid/content/Context;)V

    .line 133
    :cond_2
    iput-boolean v9, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->h:Z

    .line 135
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 136
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->i:Ljava/lang/String;

    .line 140
    :goto_1
    iput-object v10, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->i:Ljava/lang/String;

    .line 143
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 144
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 146
    iget-wide v3, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->f:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    iget-boolean v3, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->l:Z

    if-nez v3, :cond_4

    .line 147
    iget-wide v3, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->f:J

    sub-long v3, v1, v3

    .line 148
    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->f:J

    .line 149
    const-string v5, "FirewallTelephonyListener"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u54cd\u4e00\u58f0\u7535\u8bdd\u5224\u65ad\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-wide/16 v5, 0xbb8

    cmp-long v3, v3, v5

    if-gez v3, :cond_4

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->d:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0, v8}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/e;->g(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 161
    new-instance v3, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v3}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    .line 162
    iput v9, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    .line 163
    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->d:Landroid/content/Context;

    const v5, 0x7f0b010f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    .line 165
    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->d:Landroid/content/Context;

    const v5, 0x7f0b010f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    .line 167
    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->d:Landroid/content/Context;

    invoke-static {v4}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 168
    invoke-static {v0, v3}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Ljava/lang/String;Lcom/ijinshan/kinghelper/firewall/a/g;)J

    .line 171
    iget-object v4, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->d:Landroid/content/Context;

    invoke-static {v4, v3}, Lcom/ijinshan/kinghelper/firewall/core/h;->a(Landroid/content/Context;Lcom/ijinshan/kinghelper/firewall/a/g;)V

    .line 173
    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->d:Landroid/content/Context;

    invoke-static {v3, v9}, Lcom/ijinshan/kinghelper/firewall/core/FirewallSmsTipDialog;->a(Landroid/content/Context;Z)V

    .line 176
    :try_start_0
    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->e:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_2
    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->d:Landroid/content/Context;

    const-string v4, "1"

    invoke-static {v3, v4}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 185
    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->d:Landroid/content/Context;

    const-string v4, ""

    const/16 v5, 0xe

    const-string v6, ""

    invoke-static {v3, v0, v4, v5, v6}, Lcom/ijinshan/kinghelper/firewall/core/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 187
    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->j:Landroid/os/Handler;

    new-instance v4, Lcom/ijinshan/kinghelper/firewall/core/o;

    invoke-direct {v4, p0, v0}, Lcom/ijinshan/kinghelper/firewall/core/o;-><init>(Lcom/ijinshan/kinghelper/firewall/core/m;Ljava/lang/String;)V

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 193
    :cond_4
    iget-wide v3, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->g:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    .line 194
    iget-wide v3, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->g:J

    sub-long/2addr v1, v3

    .line 195
    const-wide/16 v3, -0x1

    iput-wide v3, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->g:J

    .line 196
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->s()Ljava/lang/String;

    move-result-object v3

    .line 197
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 198
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 212
    :cond_5
    :goto_3
    iput-boolean v9, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->l:Z

    goto/16 :goto_0

    .line 138
    :cond_6
    invoke-static {p2}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 177
    :catch_0
    move-exception v3

    .line 179
    const-string v4, "FirewallTelephonyListener"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 200
    :pswitch_1
    const-wide/16 v3, 0x3a98

    cmp-long v1, v1, v3

    if-gez v1, :cond_5

    .line 202
    invoke-direct {p0, v0}, Lcom/ijinshan/kinghelper/firewall/core/m;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 206
    :pswitch_2
    const-wide/16 v3, 0x7530

    cmp-long v1, v1, v3

    if-gez v1, :cond_5

    .line 208
    invoke-direct {p0, v0}, Lcom/ijinshan/kinghelper/firewall/core/m;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 223
    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->g:J

    .line 224
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 225
    invoke-static {p2}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->i:Ljava/lang/String;

    .line 226
    iput-boolean v9, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->h:Z

    .line 228
    :cond_7
    iput-boolean v8, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->l:Z

    goto/16 :goto_0

    .line 233
    :pswitch_4
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->k:Lcom/jxphone/mosecurity/logic/a/g;

    invoke-interface {v0, v9, v7}, Lcom/jxphone/mosecurity/logic/a/g;->a(II)V

    .line 234
    invoke-static {p2}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->i:Ljava/lang/String;

    .line 236
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 237
    iput-boolean v8, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->h:Z

    .line 243
    :goto_4
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 244
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/dd;->a(Landroid/content/Context;)V

    invoke-static {v3}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/FirewallSettingsNightActivity;->a(Landroid/content/Context;)Z

    move-result v4

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->d()Z

    move-result v5

    if-eqz v5, :cond_22

    if-eqz v4, :cond_18

    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->f()Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v5

    sget-object v6, Lcom/ijinshan/kinghelper/firewall/dg;->b:Lcom/ijinshan/kinghelper/firewall/dg;

    if-ne v5, v6, :cond_10

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-static {v3, v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 245
    :cond_8
    :goto_5
    :try_start_2
    const-string v3, "FirewallTelephonyListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCallStateChanged>>isblockingcall cost:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long v0, v5, v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms,rule="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    move-object v1, v2

    .line 252
    :goto_6
    if-eqz v1, :cond_25

    .line 253
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->m:Landroid/media/AudioManager;

    if-nez v0, :cond_9

    .line 254
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->d:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->m:Landroid/media/AudioManager;

    .line 256
    :cond_9
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->m:Landroid/media/AudioManager;

    if-eqz v0, :cond_b

    .line 258
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->m:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    iput v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->o:I

    .line 259
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->o:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_a

    .line 260
    iput-boolean v8, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->n:Z

    .line 261
    :cond_a
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->m:Landroid/media/AudioManager;

    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 264
    :cond_b
    :try_start_3
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->e:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->endCall()Z

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->e:Lcom/android/internal/telephony/ITelephony;

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V

    const-string v0, "FirewallTelephonyListener"

    const-string v2, "blockingCall>>"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 265
    :goto_7
    iget-boolean v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->n:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->m:Landroid/media/AudioManager;

    if-eqz v0, :cond_d

    .line 266
    iget v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->o:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_c

    .line 267
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->m:Landroid/media/AudioManager;

    iget v2, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->o:I

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 268
    :cond_c
    iput-boolean v9, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->n:Z

    .line 271
    :cond_d
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->k:Lcom/jxphone/mosecurity/logic/a/g;

    invoke-interface {v0, v7}, Lcom/jxphone/mosecurity/logic/a/g;->a(I)V

    .line 273
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;)V

    .line 274
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Ljava/lang/String;Lcom/ijinshan/kinghelper/firewall/a/g;)J

    move-result-wide v2

    .line 277
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_e

    .line 278
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->j:Landroid/os/Handler;

    new-instance v2, Lcom/ijinshan/kinghelper/firewall/core/o;

    invoke-direct {v2, p0, p2}, Lcom/ijinshan/kinghelper/firewall/core/o;-><init>(Lcom/ijinshan/kinghelper/firewall/core/m;Ljava/lang/String;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 282
    :cond_e
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->d:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/core/h;->a(Landroid/content/Context;Lcom/ijinshan/kinghelper/firewall/a/g;)V

    .line 284
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->d:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/ijinshan/kinghelper/firewall/core/FirewallSmsTipDialog;->a(Landroid/content/Context;Z)V

    .line 286
    iget v0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    if-ne v0, v8, :cond_0

    .line 288
    iget v0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    if-lez v0, :cond_24

    .line 289
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->d:Landroid/content/Context;

    const-string v1, "4"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 239
    :cond_f
    iput-boolean v9, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->h:Z

    goto/16 :goto_4

    .line 244
    :cond_10
    :try_start_4
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->f()Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v5

    sget-object v6, Lcom/ijinshan/kinghelper/firewall/dg;->e:Lcom/ijinshan/kinghelper/firewall/dg;

    if-ne v5, v6, :cond_11

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-static {v3, v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->c(Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_5

    .line 249
    :catch_1
    move-exception v0

    move-object v1, v10

    .line 250
    :goto_8
    const-string v2, "FirewallTelephonyListener"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_6

    .line 244
    :cond_11
    :try_start_5
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->f()Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v5

    sget-object v6, Lcom/ijinshan/kinghelper/firewall/dg;->c:Lcom/ijinshan/kinghelper/firewall/dg;

    if-ne v5, v6, :cond_13

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_12

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v3}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    const/4 v4, 0x0

    iput v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    const/4 v4, 0x2

    iput v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    const v4, 0x7f0b010b

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    const/4 v4, 0x1

    iput v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    const v4, 0x7f0b010b

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    const/4 v2, 0x2

    iput v2, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    move-object v2, v3

    goto/16 :goto_5

    :cond_12
    move-object v2, v10

    goto/16 :goto_5

    :cond_13
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->f()Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v5

    sget-object v6, Lcom/ijinshan/kinghelper/firewall/dg;->d:Lcom/ijinshan/kinghelper/firewall/dg;

    if-ne v5, v6, :cond_14

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v3}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    const/4 v4, 0x0

    iput v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    const/4 v4, 0x2

    iput v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    const v4, 0x7f0b010c

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    const/4 v4, 0x1

    iput v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    const v4, 0x7f0b010c

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    const/4 v2, 0x2

    iput v2, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    move-object v2, v3

    goto/16 :goto_5

    :cond_14
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->f()Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v5

    sget-object v6, Lcom/ijinshan/kinghelper/firewall/dg;->f:Lcom/ijinshan/kinghelper/firewall/dg;

    if-ne v5, v6, :cond_22

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_22

    invoke-static {v4}, Lcom/ijinshan/kinghelper/firewall/dd;->d(Z)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v5

    if-eqz v5, :cond_15

    const/4 v2, 0x1

    iput-boolean v2, v5, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    move-object v2, v5

    goto/16 :goto_5

    :cond_15
    invoke-static {v4}, Lcom/ijinshan/kinghelper/firewall/dd;->f(Z)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-static {v2, v3}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_16

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v3}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    const/4 v4, 0x0

    iput v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    const/4 v4, 0x2

    iput v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    const v4, 0x7f0b010d

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    const/4 v4, 0x1

    iput v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    const v4, 0x7f0b010d

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    const/4 v2, 0x2

    iput v2, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    move-object v2, v3

    goto/16 :goto_5

    :cond_16
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-static {}, Lcom/jxphone/mosecurity/d/l;->d()Z

    move-result v5

    if-nez v5, :cond_17

    invoke-static {v4}, Lcom/ijinshan/kinghelper/firewall/dd;->i(Z)Z

    move-result v3

    if-eqz v3, :cond_28

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v3}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    const/4 v4, 0x0

    iput v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    const/4 v4, 0x2

    iput v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    const v4, 0x7f0b010e

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    const/4 v4, 0x1

    iput v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    const v4, 0x7f0b010e

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    const/4 v2, 0x2

    iput v2, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    move-object v2, v3

    goto/16 :goto_5

    :cond_17
    invoke-static {v4}, Lcom/ijinshan/kinghelper/firewall/dd;->c(Z)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v2

    if-eqz v2, :cond_22

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    goto/16 :goto_5

    :cond_18
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->f()Lcom/ijinshan/kinghelper/firewall/dg;

    move-result-object v5

    sget-object v6, Lcom/ijinshan/kinghelper/firewall/dg;->a:Lcom/ijinshan/kinghelper/firewall/dg;

    if-ne v5, v6, :cond_19

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    goto/16 :goto_5

    :cond_19
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v5

    sget-object v6, Lcom/ijinshan/kinghelper/firewall/df;->b:Lcom/ijinshan/kinghelper/firewall/df;

    if-ne v5, v6, :cond_1a

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-static {v3, v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v2

    goto/16 :goto_5

    :cond_1a
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v5

    sget-object v6, Lcom/ijinshan/kinghelper/firewall/df;->e:Lcom/ijinshan/kinghelper/firewall/df;

    if-ne v5, v6, :cond_1b

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-static {v3, v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->c(Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v2

    goto/16 :goto_5

    :cond_1b
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v5

    sget-object v6, Lcom/ijinshan/kinghelper/firewall/df;->c:Lcom/ijinshan/kinghelper/firewall/df;

    if-ne v5, v6, :cond_1d

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1c

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v3}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    const/4 v4, 0x0

    iput v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    const/4 v4, 0x2

    iput v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    const v4, 0x7f0b010b

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    const/4 v4, 0x1

    iput v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    const v4, 0x7f0b010b

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    const/4 v2, 0x2

    iput v2, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    move-object v2, v3

    goto/16 :goto_5

    :cond_1c
    move-object v2, v10

    goto/16 :goto_5

    :cond_1d
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v5

    sget-object v6, Lcom/ijinshan/kinghelper/firewall/df;->d:Lcom/ijinshan/kinghelper/firewall/df;

    if-ne v5, v6, :cond_1e

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v3}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    const/4 v4, 0x0

    iput v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    const/4 v4, 0x2

    iput v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    const v4, 0x7f0b010c

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    const/4 v4, 0x1

    iput v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    const v4, 0x7f0b010c

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    const/4 v2, 0x2

    iput v2, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    move-object v2, v3

    goto/16 :goto_5

    :cond_1e
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v5

    sget-object v6, Lcom/ijinshan/kinghelper/firewall/df;->f:Lcom/ijinshan/kinghelper/firewall/df;

    if-ne v5, v6, :cond_23

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_22

    invoke-static {v4}, Lcom/ijinshan/kinghelper/firewall/dd;->d(Z)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v5

    if-eqz v5, :cond_1f

    move-object v2, v5

    goto/16 :goto_5

    :cond_1f
    invoke-static {v4}, Lcom/ijinshan/kinghelper/firewall/dd;->f(Z)Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-static {v2, v3}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_20

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v3}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    const/4 v4, 0x0

    iput v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    const/4 v4, 0x2

    iput v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    const v4, 0x7f0b010d

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    const/4 v4, 0x1

    iput v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    const v4, 0x7f0b010d

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    const/4 v2, 0x2

    iput v2, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    move-object v2, v3

    goto/16 :goto_5

    :cond_20
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static {}, Lcom/jxphone/mosecurity/d/l;->d()Z

    move-result v5

    if-nez v5, :cond_21

    invoke-static {v4}, Lcom/ijinshan/kinghelper/firewall/dd;->i(Z)Z

    move-result v3

    if-eqz v3, :cond_27

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/a/g;

    invoke-direct {v3}, Lcom/ijinshan/kinghelper/firewall/a/g;-><init>()V

    const/4 v4, 0x0

    iput v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    const/4 v4, 0x2

    iput v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->d:I

    const v4, 0x7f0b010e

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->h:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->f:Ljava/lang/String;

    const/4 v4, 0x1

    iput v4, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->e:I

    const v4, 0x7f0b010e

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->g:Ljava/lang/String;

    const/4 v2, 0x2

    iput v2, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->c:I

    const/4 v2, 0x0

    iput-boolean v2, v3, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z

    move-object v2, v3

    goto/16 :goto_5

    :cond_21
    invoke-static {v4}, Lcom/ijinshan/kinghelper/firewall/dd;->c(Z)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->b(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v2

    if-nez v2, :cond_8

    :cond_22
    move-object v2, v10

    goto/16 :goto_5

    :cond_23
    invoke-static {}, Lcom/ijinshan/kinghelper/firewall/dd;->g()Lcom/ijinshan/kinghelper/firewall/df;

    move-result-object v4

    sget-object v5, Lcom/ijinshan/kinghelper/firewall/df;->a:Lcom/ijinshan/kinghelper/firewall/df;

    if-ne v4, v5, :cond_22

    invoke-static {v2}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/ijinshan/kinghelper/firewall/a/g;

    move-result-object v2

    if-eqz v2, :cond_8

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/ijinshan/kinghelper/firewall/a/g;->a:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_5

    .line 264
    :catch_2
    move-exception v0

    const-string v2, "FirewallTelephonyListener"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 291
    :cond_24
    iget v0, v1, Lcom/ijinshan/kinghelper/firewall/a/g;->i:I

    if-gez v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->d:Landroid/content/Context;

    const-string v1, "3"

    invoke-static {v0, v1}, Lcom/jxphone/mosecurity/a/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 298
    :cond_25
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->i:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ijinshan/kinghelper/firewall/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 303
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->f:J

    .line 305
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->j:Landroid/os/Handler;

    new-instance v1, Lcom/ijinshan/kinghelper/firewall/core/n;

    invoke-direct {v1, p0}, Lcom/ijinshan/kinghelper/firewall/core/n;-><init>(Lcom/ijinshan/kinghelper/firewall/core/m;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 312
    :cond_26
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/core/m;->k:Lcom/jxphone/mosecurity/logic/a/g;

    invoke-interface {v0, v7}, Lcom/jxphone/mosecurity/logic/a/g;->a(I)V

    goto/16 :goto_0

    .line 249
    :catch_3
    move-exception v0

    move-object v1, v2

    goto/16 :goto_8

    :cond_27
    move-object v2, v10

    goto/16 :goto_5

    :cond_28
    move-object v2, v10

    goto/16 :goto_5

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 198
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

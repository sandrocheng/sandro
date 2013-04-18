.class final Lcom/keniu/security/i/r;
.super Ljava/lang/Thread;
.source "FileWatchManager.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/i/o;

.field private b:Landroid/os/Handler;

.field private c:Landroid/os/Looper;


# direct methods
.method constructor <init>(Lcom/keniu/security/i/o;)V
    .locals 0
    .parameter

    .prologue
    .line 178
    iput-object p1, p0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private a(Landroid/content/pm/ApplicationInfo;)Lcom/keniu/security/d/d;
    .locals 12
    .parameter

    .prologue
    const-wide/16 v4, 0x1

    const/4 v9, 0x2

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x1

    .line 438
    new-instance v10, Lcom/keniu/security/malware/bd;

    invoke-direct {v10}, Lcom/keniu/security/malware/bd;-><init>()V

    .line 439
    iget-object v0, p0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    invoke-static {v0}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcom/keniu/security/malware/bd;->a(Landroid/content/Context;)V

    .line 440
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v10, v0, v3}, Lcom/keniu/security/malware/bd;->a(Ljava/lang/String;I)Lcom/keniu/security/d/d;

    move-result-object v11

    .line 442
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lcom/keniu/security/d/d;->c()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    invoke-static {v0}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keniu/security/util/at;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 446
    new-instance v0, Lcom/keniu/security/d/d;

    invoke-direct {v0}, Lcom/keniu/security/d/d;-><init>()V

    .line 447
    iput v3, v0, Lcom/keniu/security/d/d;->s:I

    .line 487
    :goto_0
    invoke-virtual {v10}, Lcom/keniu/security/malware/bd;->a()V

    .line 488
    return-object v0

    .line 449
    :cond_1
    new-instance v0, Lcom/keniu/security/d/d;

    invoke-direct {v0}, Lcom/keniu/security/d/d;-><init>()V

    .line 450
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 451
    new-instance v2, Lcom/keniu/security/malware/AppMettle;

    invoke-direct {v2, p1, v0}, Lcom/keniu/security/malware/AppMettle;-><init>(Landroid/content/pm/ApplicationInfo;Lcom/keniu/security/d/d;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    new-array v0, v3, [Z

    aput-boolean v8, v0, v8

    .line 453
    invoke-virtual {v10, v1, v0}, Lcom/keniu/security/malware/bd;->a(Ljava/util/List;[Z)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/d/d;

    .line 455
    if-eqz p0, :cond_2

    .line 456
    iput-boolean v3, p0, Lcom/keniu/security/d/d;->w:Z

    .line 458
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    const-string v1, "/sdcard/"

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_3

    .line 459
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v10, v9, p0, p1, v3}, Lcom/keniu/security/malware/bd;->a(ILcom/keniu/security/d/d;Landroid/content/pm/ApplicationInfo;Z)V

    .line 467
    :goto_1
    invoke-virtual {p0}, Lcom/keniu/security/d/d;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    move-wide v8, v6

    invoke-static/range {v0 .. v9}, Lcom/keniu/security/main/bu;->a(JJJJJ)V

    :cond_2
    move-object v0, p0

    .line 472
    goto :goto_0

    .line 463
    :cond_3
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v10, v3, p0, p1, v3}, Lcom/keniu/security/malware/bd;->a(ILcom/keniu/security/d/d;Landroid/content/pm/ApplicationInfo;Z)V

    goto :goto_1

    .line 475
    :cond_4
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    const-string v1, "/sdcard/"

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_6

    .line 476
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v10, v9, v11, p1, v8}, Lcom/keniu/security/malware/bd;->a(ILcom/keniu/security/d/d;Landroid/content/pm/ApplicationInfo;Z)V

    .line 482
    :goto_2
    invoke-virtual {v11}, Lcom/keniu/security/d/d;->b()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 483
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    move-wide v8, v6

    invoke-static/range {v0 .. v9}, Lcom/keniu/security/main/bu;->a(JJJJJ)V

    :cond_5
    move-object v0, v11

    goto :goto_0

    .line 479
    :cond_6
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v10, v3, v11, p1, v8}, Lcom/keniu/security/malware/bd;->a(ILcom/keniu/security/d/d;Landroid/content/pm/ApplicationInfo;Z)V

    goto :goto_2
.end method

.method private a(ILandroid/content/pm/ApplicationInfo;Lcom/keniu/security/i/b;)V
    .locals 20
    .parameter
    .parameter
    .parameter

    .prologue
    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    move-object v5, v0

    invoke-static {v5}, Lcom/keniu/security/i/o;->c(Lcom/keniu/security/i/o;)Landroid/content/pm/PackageManager;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 358
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_e

    .line 359
    :cond_0
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v16, v5

    .line 361
    :goto_0
    const/16 v17, 0x0

    .line 362
    const/16 v18, -0x1

    .line 363
    new-instance v19, Lcom/keniu/security/malware/bd;

    invoke-direct/range {v19 .. v19}, Lcom/keniu/security/malware/bd;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    move-object v5, v0

    invoke-static {v5}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/keniu/security/malware/bd;->a(Landroid/content/Context;)V

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, v19

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/malware/bd;->a(Ljava/lang/String;I)Lcom/keniu/security/d/d;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-virtual {v15}, Lcom/keniu/security/d/d;->c()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    move-object v5, v0

    invoke-static {v5}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/keniu/security/util/at;->c(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Lcom/keniu/security/d/d;

    invoke-direct {v5}, Lcom/keniu/security/d/d;-><init>()V

    const/4 v6, 0x1

    iput v6, v5, Lcom/keniu/security/d/d;->s:I

    move-object v12, v5

    :goto_1
    invoke-virtual/range {v19 .. v19}, Lcom/keniu/security/malware/bd;->a()V

    .line 364
    if-eqz v12, :cond_d

    .line 365
    iget-object v5, v12, Lcom/keniu/security/d/d;->t:Ljava/lang/String;

    .line 366
    iget v6, v12, Lcom/keniu/security/d/d;->s:I

    move v11, v6

    move-object v9, v5

    .line 368
    :goto_2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    move-object v5, v0

    invoke-static {v5}, Lcom/keniu/security/i/o;->b(Lcom/keniu/security/i/o;)Lcom/keniu/security/i/a;

    move-result-object v5

    move/from16 v10, p1

    invoke-virtual/range {v5 .. v11}, Lcom/keniu/security/i/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/keniu/security/i/b;

    move-result-object v5

    if-eqz v5, :cond_c

    const/4 v6, 0x1

    iget v7, v5, Lcom/keniu/security/i/b;->f:I

    invoke-static {v7}, Lcom/keniu/security/d/d;->a(I)Z

    move-result v7

    if-nez v7, :cond_2

    if-eqz p3, :cond_2

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/keniu/security/i/b;->g:J

    move-wide v7, v0

    iget-wide v9, v5, Lcom/keniu/security/i/b;->g:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/keniu/security/i/b;->i:J

    move-wide v7, v0

    iget-wide v9, v5, Lcom/keniu/security/i/b;->i:J

    cmp-long v7, v7, v9

    if-nez v7, :cond_2

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/keniu/security/i/b;->c:Ljava/lang/String;

    move-object v7, v0

    iget-object v8, v5, Lcom/keniu/security/i/b;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget v7, v5, Lcom/keniu/security/i/b;->f:I

    move-object/from16 v0, p3

    iget v0, v0, Lcom/keniu/security/i/b;->f:I

    move v8, v0

    if-ne v7, v8, :cond_2

    const/4 v6, 0x0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    move-object v7, v0

    invoke-static {v7}, Lcom/keniu/security/i/o;->b(Lcom/keniu/security/i/o;)Lcom/keniu/security/i/a;

    move-result-object v7

    if-eqz p3, :cond_b

    const/4 v8, 0x1

    :goto_3
    invoke-virtual {v7, v5, v8}, Lcom/keniu/security/i/a;->a(Lcom/keniu/security/i/b;Z)V

    move v5, v6

    .line 371
    :goto_4
    if-nez v5, :cond_3

    if-eqz p3, :cond_3

    if-nez p1, :cond_4

    .line 372
    :cond_3
    new-instance v5, Lcom/keniu/security/malware/AppMettle;

    move-object v0, v5

    move-object/from16 v1, p2

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/malware/AppMettle;-><init>(Landroid/content/pm/ApplicationInfo;Lcom/keniu/security/d/d;)V

    .line 373
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v6

    move-object v3, v5

    move-object/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/keniu/security/i/r;->a(IZLcom/keniu/security/malware/AppMettle;Lcom/keniu/security/i/b;)V

    .line 375
    :cond_4
    return-void

    .line 363
    :cond_5
    new-instance v5, Lcom/keniu/security/d/d;

    invoke-direct {v5}, Lcom/keniu/security/d/d;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Lcom/keniu/security/malware/AppMettle;

    move-object v0, v7

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/malware/AppMettle;-><init>(Landroid/content/pm/ApplicationInfo;Lcom/keniu/security/d/d;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    new-array v5, v5, [Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-boolean v8, v5, v7

    move-object/from16 v0, v19

    move-object v1, v6

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/malware/bd;->a(Ljava/util/List;[Z)Ljava/util/ArrayList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/keniu/security/d/d;

    move-object v15, v0

    if-eqz v15, :cond_6

    const/4 v5, 0x1

    iput-boolean v5, v15, Lcom/keniu/security/d/d;->w:Z

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "/sdcard/"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-ltz v5, :cond_7

    const/4 v5, 0x2

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object v6, v0

    const/4 v6, 0x1

    move-object/from16 v0, v19

    move v1, v5

    move-object v2, v15

    move-object/from16 v3, p2

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keniu/security/malware/bd;->a(ILcom/keniu/security/d/d;Landroid/content/pm/ApplicationInfo;Z)V

    :goto_5
    invoke-virtual {v15}, Lcom/keniu/security/d/d;->b()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x2

    const-wide/16 v9, 0x1

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    invoke-static/range {v5 .. v14}, Lcom/keniu/security/main/bu;->a(JJJJJ)V

    :cond_6
    move-object v12, v15

    goto/16 :goto_1

    :cond_7
    const/4 v5, 0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object v6, v0

    const/4 v6, 0x1

    move-object/from16 v0, v19

    move v1, v5

    move-object v2, v15

    move-object/from16 v3, p2

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keniu/security/malware/bd;->a(ILcom/keniu/security/d/d;Landroid/content/pm/ApplicationInfo;Z)V

    goto :goto_5

    :cond_8
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "/sdcard/"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    if-ltz v5, :cond_a

    const/4 v5, 0x2

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object v6, v0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move-object v2, v15

    move-object/from16 v3, p2

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keniu/security/malware/bd;->a(ILcom/keniu/security/d/d;Landroid/content/pm/ApplicationInfo;Z)V

    :goto_6
    invoke-virtual {v15}, Lcom/keniu/security/d/d;->b()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x2

    const-wide/16 v9, 0x1

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    invoke-static/range {v5 .. v14}, Lcom/keniu/security/main/bu;->a(JJJJJ)V

    :cond_9
    move-object v12, v15

    goto/16 :goto_1

    :cond_a
    const/4 v5, 0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    move-object v6, v0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move-object v2, v15

    move-object/from16 v3, p2

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/keniu/security/malware/bd;->a(ILcom/keniu/security/d/d;Landroid/content/pm/ApplicationInfo;Z)V

    goto :goto_6

    .line 368
    :cond_b
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_c
    move v5, v13

    goto/16 :goto_4

    :cond_d
    move/from16 v11, v18

    move-object/from16 v9, v17

    goto/16 :goto_2

    :cond_e
    move-object/from16 v16, v5

    goto/16 :goto_0
.end method

.method private a(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 274
    iget-object v0, p0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    invoke-static {v0}, Lcom/keniu/security/i/o;->b(Lcom/keniu/security/i/o;)Lcom/keniu/security/i/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/keniu/security/i/a;->a(Ljava/lang/String;)Lcom/keniu/security/i/b;

    move-result-object v0

    .line 275
    if-eqz v0, :cond_1

    .line 276
    invoke-direct {p0, p1, v0}, Lcom/keniu/security/i/r;->a(ILcom/keniu/security/i/b;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    iget-object v1, p0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    invoke-static {v1}, Lcom/keniu/security/i/o;->c(Lcom/keniu/security/i/o;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 283
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_0

    .line 284
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 285
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 287
    :cond_2
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 288
    invoke-direct {p0, p1, v1, v0}, Lcom/keniu/security/i/r;->a(ILandroid/content/pm/ApplicationInfo;Lcom/keniu/security/i/b;)V

    goto :goto_0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 419
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    invoke-static {v1}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/keniu/security/malware/TransparentVircusAcitvity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 421
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 422
    const-string v2, "notificationID"

    sget v3, Lcom/keniu/security/i/o;->e:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 423
    const-string v2, "packName"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v2, "watcherModel"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 425
    const-string v2, "malName"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v2, "softName"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v2, "filePath"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 429
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 430
    iget-object v1, p0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    invoke-static {v1}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 431
    return-void
.end method

.method private a(IZLcom/keniu/security/malware/AppMettle;Lcom/keniu/security/i/b;)V
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 385
    if-eqz p2, :cond_0

    .line 386
    iget v0, p4, Lcom/keniu/security/i/b;->f:I

    .line 387
    iget-object v1, p4, Lcom/keniu/security/i/b;->c:Ljava/lang/String;

    .line 388
    iget-object v2, p4, Lcom/keniu/security/i/b;->a:Ljava/lang/String;

    .line 389
    iget-object v3, p4, Lcom/keniu/security/i/b;->b:Ljava/lang/String;

    .line 390
    iget-object v4, p4, Lcom/keniu/security/i/b;->d:Ljava/lang/String;

    move-object v9, v4

    move v4, v0

    move-object v0, v9

    move-object v10, v1

    move-object v1, v3

    move-object v3, v10

    .line 400
    :goto_0
    invoke-static {v4}, Lcom/keniu/security/d/d;->a(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 401
    const/4 v4, 0x0

    .line 402
    new-instance v5, Lcom/jxphone/mosecurity/d/m;

    invoke-direct {v5}, Lcom/jxphone/mosecurity/d/m;-><init>()V

    .line 403
    invoke-virtual {v5, v3}, Lcom/jxphone/mosecurity/d/m;->a(Ljava/lang/String;)V

    .line 404
    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    invoke-static {v6}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/keniu/security/malware/TransparentVircusAcitvity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "notificationID"

    sget v8, Lcom/keniu/security/i/o;->e:I

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v7, "packName"

    invoke-virtual {v6, v7, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "watcherModel"

    invoke-virtual {v6, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "malName"

    invoke-virtual {v6, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "softName"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x1000

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    invoke-static {v0}, Lcom/keniu/security/i/o;->d(Lcom/keniu/security/i/o;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v1, v4

    .line 409
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/keniu/security/i/o;->a(Lcom/keniu/security/i/o;ZIZLcom/keniu/security/malware/AppMettle;Lcom/keniu/security/i/b;)V

    .line 411
    return-void

    .line 392
    :cond_0
    iget-object v0, p3, Lcom/keniu/security/malware/AppMettle;->b:Lcom/keniu/security/d/d;

    iget v1, v0, Lcom/keniu/security/d/d;->s:I

    .line 393
    iget-object v0, p3, Lcom/keniu/security/malware/AppMettle;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 394
    iget-object v0, p3, Lcom/keniu/security/malware/AppMettle;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 395
    iget-object v0, p3, Lcom/keniu/security/malware/AppMettle;->a:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    invoke-static {v4}, Lcom/keniu/security/i/o;->c(Lcom/keniu/security/i/o;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 397
    iget-object v4, p3, Lcom/keniu/security/malware/AppMettle;->b:Lcom/keniu/security/d/d;

    iget-object v4, v4, Lcom/keniu/security/d/d;->t:Ljava/lang/String;

    move-object v9, v4

    move v4, v1

    move-object v1, v0

    move-object v0, v9

    move-object v10, v2

    move-object v2, v3

    move-object v3, v10

    goto/16 :goto_0

    .line 407
    :cond_1
    const/4 v0, 0x1

    move v1, v0

    goto :goto_1
.end method

.method static synthetic a(Lcom/keniu/security/i/r;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    iget-object v0, p0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    invoke-static {v0}, Lcom/keniu/security/i/o;->b(Lcom/keniu/security/i/o;)Lcom/keniu/security/i/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/keniu/security/i/a;->a(Ljava/lang/String;)Lcom/keniu/security/i/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/keniu/security/i/r;->a(ILcom/keniu/security/i/b;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    invoke-static {v1}, Lcom/keniu/security/i/o;->c(Lcom/keniu/security/i/o;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    if-nez v2, :cond_1

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p2, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    :cond_1
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, p1, v1, v0}, Lcom/keniu/security/i/r;->a(ILandroid/content/pm/ApplicationInfo;Lcom/keniu/security/i/b;)V

    :cond_2
    return-void
.end method

.method private a(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/keniu/security/i/b;)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 496
    const/4 v7, 0x0

    .line 497
    iget-object v0, p0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    invoke-static {v0}, Lcom/keniu/security/i/o;->b(Lcom/keniu/security/i/o;)Lcom/keniu/security/i/a;

    move-result-object v0

    move-object v1, p3

    move-object v2, p6

    move-object v3, p4

    move-object v4, p5

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/keniu/security/i/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/keniu/security/i/b;

    move-result-object v0

    .line 499
    if-eqz v0, :cond_2

    .line 500
    const/4 v1, 0x1

    .line 501
    iget v2, v0, Lcom/keniu/security/i/b;->f:I

    invoke-static {v2}, Lcom/keniu/security/d/d;->a(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 503
    if-eqz p7, :cond_0

    iget-wide v2, p7, Lcom/keniu/security/i/b;->g:J

    iget-wide v4, v0, Lcom/keniu/security/i/b;->g:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, p7, Lcom/keniu/security/i/b;->i:J

    iget-wide v4, v0, Lcom/keniu/security/i/b;->i:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-object v2, p7, Lcom/keniu/security/i/b;->c:Ljava/lang/String;

    iget-object v3, v0, Lcom/keniu/security/i/b;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 508
    iget v2, v0, Lcom/keniu/security/i/b;->f:I

    iget v3, p7, Lcom/keniu/security/i/b;->f:I

    if-ne v2, v3, :cond_0

    .line 509
    const/4 v1, 0x0

    .line 513
    :cond_0
    iget-object v2, p0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    invoke-static {v2}, Lcom/keniu/security/i/o;->b(Lcom/keniu/security/i/o;)Lcom/keniu/security/i/a;

    move-result-object v2

    if-eqz p7, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v0, v3}, Lcom/keniu/security/i/a;->a(Lcom/keniu/security/i/b;Z)V

    move v0, v1

    .line 515
    :goto_1
    return v0

    .line 513
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_1
.end method

.method private a(ILcom/keniu/security/i/b;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 321
    .line 322
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 323
    new-instance v2, Ljava/io/File;

    iget-object v3, p2, Lcom/keniu/security/i/b;->a:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    iget-wide v5, p2, Lcom/keniu/security/i/b;->i:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    iget-wide v4, p2, Lcom/keniu/security/i/b;->g:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 327
    const/4 v2, 0x0

    .line 328
    iget v3, p2, Lcom/keniu/security/i/b;->f:I

    invoke-static {v3}, Lcom/keniu/security/d/d;->b(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 329
    iget v3, p2, Lcom/keniu/security/i/b;->f:I

    if-ne v3, v7, :cond_2

    .line 331
    const-wide/32 v3, 0x36ee80

    .line 335
    :goto_0
    iget-wide v5, p2, Lcom/keniu/security/i/b;->h:J

    add-long/2addr v3, v5

    cmp-long v3, v3, v0

    if-gtz v3, :cond_0

    move v2, v7

    .line 340
    :cond_0
    :goto_1
    if-nez v2, :cond_1

    .line 341
    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    .line 342
    iget-wide v3, p2, Lcom/keniu/security/i/b;->h:J

    const-wide/16 v5, 0x2710

    add-long/2addr v3, v5

    cmp-long v0, v3, v0

    if-gez v0, :cond_1

    .line 343
    const/4 v0, 0x0

    invoke-direct {p0, p1, v7, v0, p2}, Lcom/keniu/security/i/r;->a(IZLcom/keniu/security/malware/AppMettle;Lcom/keniu/security/i/b;)V

    .line 348
    :cond_1
    return v2

    .line 333
    :cond_2
    const-wide/32 v3, 0x5265c00

    goto :goto_0

    :cond_3
    move v2, v7

    goto :goto_1
.end method

.method private b(ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 294
    const/4 v0, 0x0

    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    invoke-static {v1}, Lcom/keniu/security/i/o;->c(Lcom/keniu/security/i/o;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x480

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 302
    :goto_0
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    .line 305
    iget-object v1, p0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    invoke-static {v1}, Lcom/keniu/security/i/o;->b(Lcom/keniu/security/i/o;)Lcom/keniu/security/i/a;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/keniu/security/i/a;->a(Ljava/lang/String;)Lcom/keniu/security/i/b;

    move-result-object v1

    .line 307
    if-eqz v1, :cond_1

    .line 308
    invoke-direct {p0, p1, v1}, Lcom/keniu/security/i/r;->a(ILcom/keniu/security/i/b;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 314
    :cond_0
    :goto_1
    return-void

    .line 299
    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 312
    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/keniu/security/i/r;->a(ILandroid/content/pm/ApplicationInfo;Lcom/keniu/security/i/b;)V

    goto :goto_1
.end method

.method static synthetic b(Lcom/keniu/security/i/r;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 178
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    invoke-static {v1}, Lcom/keniu/security/i/o;->c(Lcom/keniu/security/i/o;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x480

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    invoke-static {v1}, Lcom/keniu/security/i/o;->b(Lcom/keniu/security/i/o;)Lcom/keniu/security/i/a;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/keniu/security/i/a;->a(Ljava/lang/String;)Lcom/keniu/security/i/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/keniu/security/i/r;->a(ILcom/keniu/security/i/b;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-direct {p0, p1, v0, v1}, Lcom/keniu/security/i/r;->a(ILandroid/content/pm/ApplicationInfo;Lcom/keniu/security/i/b;)V

    :cond_1
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method final a()V
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/keniu/security/i/r;->c:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/keniu/security/i/r;->c:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 203
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/keniu/security/i/r;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method final a(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/keniu/security/i/r;->b:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    invoke-static {v1}, Lcom/keniu/security/i/o;->a(Lcom/keniu/security/i/o;)[Lcom/keniu/security/i/u;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/keniu/security/i/r;->a:Lcom/keniu/security/i/o;

    invoke-static {v1}, Lcom/keniu/security/i/o;->a(Lcom/keniu/security/i/o;)[Lcom/keniu/security/i/u;

    move-result-object v1

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_2

    .line 190
    iget-object v1, p0, Lcom/keniu/security/i/r;->b:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/keniu/security/i/r;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 188
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 212
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 213
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/i/r;->c:Landroid/os/Looper;

    .line 214
    new-instance v0, Lcom/keniu/security/i/s;

    invoke-direct {v0, p0}, Lcom/keniu/security/i/s;-><init>(Lcom/keniu/security/i/r;)V

    iput-object v0, p0, Lcom/keniu/security/i/r;->b:Landroid/os/Handler;

    .line 269
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 270
    return-void
.end method

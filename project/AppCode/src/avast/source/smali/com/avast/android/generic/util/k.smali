.class public Lcom/avast/android/generic/util/k;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static a:Landroid/text/format/Time;


# direct methods
.method private static declared-synchronized a(JJ)J
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 181
    const-class v1, Lcom/avast/android/generic/util/k;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/avast/android/generic/util/k;->a:Landroid/text/format/Time;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Lcom/avast/android/generic/util/k;->a:Landroid/text/format/Time;

    .line 184
    :cond_0
    sget-object v0, Lcom/avast/android/generic/util/k;->a:Landroid/text/format/Time;

    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 185
    sget-object v0, Lcom/avast/android/generic/util/k;->a:Landroid/text/format/Time;

    iget-wide v2, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p0, p1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 186
    sget-object v2, Lcom/avast/android/generic/util/k;->a:Landroid/text/format/Time;

    invoke-virtual {v2, p2, p3}, Landroid/text/format/Time;->set(J)V

    .line 187
    sget-object v2, Lcom/avast/android/generic/util/k;->a:Landroid/text/format/Time;

    iget-wide v2, v2, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p2, p3, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v2

    .line 188
    sub-int v0, v2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    int-to-long v2, v0

    monitor-exit v1

    return-wide v2

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static a(JJJILandroid/content/Context;)Ljava/lang/CharSequence;
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 93
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 94
    const/high16 v0, 0xc

    and-int/2addr v0, p6

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v3, v0

    .line 96
    :goto_0
    cmp-long v0, p2, p0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    .line 97
    :goto_1
    sub-long v1, p2, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    .line 101
    const-wide/32 v5, 0xea60

    cmp-long v5, v1, v5

    if-gez v5, :cond_5

    const-wide/32 v5, 0xea60

    cmp-long v5, p4, v5

    if-gez v5, :cond_5

    .line 103
    const-wide/16 v5, 0x3e8

    div-long/2addr v1, v5

    .line 104
    if-eqz v0, :cond_3

    .line 105
    if-eqz v3, :cond_2

    .line 106
    sget v0, Lcom/avast/android/generic/x;->f:I

    move-wide v7, v1

    move v2, v0

    move-wide v0, v7

    .line 169
    :goto_2
    long-to-int v3, v0

    invoke-virtual {v4, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v2

    .line 170
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0

    .line 94
    :cond_0
    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    .line 96
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 108
    :cond_2
    sget v0, Lcom/avast/android/generic/x;->i:I

    move-wide v7, v1

    move v2, v0

    move-wide v0, v7

    goto :goto_2

    .line 111
    :cond_3
    if-eqz v3, :cond_4

    .line 112
    sget v0, Lcom/avast/android/generic/x;->e:I

    move-wide v7, v1

    move v2, v0

    move-wide v0, v7

    goto :goto_2

    .line 114
    :cond_4
    sget v0, Lcom/avast/android/generic/x;->b:I

    move-wide v7, v1

    move v2, v0

    move-wide v0, v7

    goto :goto_2

    .line 117
    :cond_5
    const-wide/32 v5, 0x36ee80

    cmp-long v5, v1, v5

    if-gez v5, :cond_9

    const-wide/32 v5, 0x36ee80

    cmp-long v5, p4, v5

    if-gez v5, :cond_9

    .line 119
    const-wide/32 v5, 0xea60

    div-long/2addr v1, v5

    .line 120
    if-eqz v0, :cond_7

    .line 121
    if-eqz v3, :cond_6

    .line 122
    sget v0, Lcom/avast/android/generic/x;->l:I

    move-wide v7, v1

    move v2, v0

    move-wide v0, v7

    goto :goto_2

    .line 124
    :cond_6
    sget v0, Lcom/avast/android/generic/x;->n:I

    move-wide v7, v1

    move v2, v0

    move-wide v0, v7

    goto :goto_2

    .line 127
    :cond_7
    if-eqz v3, :cond_8

    .line 128
    sget v0, Lcom/avast/android/generic/x;->a:I

    move-wide v7, v1

    move v2, v0

    move-wide v0, v7

    goto :goto_2

    .line 130
    :cond_8
    sget v0, Lcom/avast/android/generic/x;->r:I

    move-wide v7, v1

    move v2, v0

    move-wide v0, v7

    goto :goto_2

    .line 133
    :cond_9
    const-wide/32 v5, 0x5265c00

    cmp-long v5, v1, v5

    if-gez v5, :cond_d

    const-wide/32 v5, 0x5265c00

    cmp-long v5, p4, v5

    if-gez v5, :cond_d

    .line 135
    const-wide/32 v5, 0x36ee80

    div-long/2addr v1, v5

    .line 136
    if-eqz v0, :cond_b

    .line 137
    if-eqz v3, :cond_a

    .line 138
    sget v0, Lcom/avast/android/generic/x;->d:I

    move-wide v7, v1

    move v2, v0

    move-wide v0, v7

    goto :goto_2

    .line 140
    :cond_a
    sget v0, Lcom/avast/android/generic/x;->h:I

    move-wide v7, v1

    move v2, v0

    move-wide v0, v7

    goto :goto_2

    .line 143
    :cond_b
    if-eqz v3, :cond_c

    .line 144
    sget v0, Lcom/avast/android/generic/x;->j:I

    move-wide v7, v1

    move v2, v0

    move-wide v0, v7

    goto/16 :goto_2

    .line 146
    :cond_c
    sget v0, Lcom/avast/android/generic/x;->k:I

    move-wide v7, v1

    move v2, v0

    move-wide v0, v7

    goto/16 :goto_2

    .line 149
    :cond_d
    const-wide/32 v5, 0x240c8400

    cmp-long v1, v1, v5

    if-gez v1, :cond_11

    const-wide/32 v1, 0x240c8400

    cmp-long v1, p4, v1

    if-gez v1, :cond_11

    .line 151
    invoke-static {p0, p1, p2, p3}, Lcom/avast/android/generic/util/k;->a(JJ)J

    move-result-wide v1

    .line 152
    if-eqz v0, :cond_f

    .line 153
    if-eqz v3, :cond_e

    .line 154
    sget v0, Lcom/avast/android/generic/x;->o:I

    move-wide v7, v1

    move v2, v0

    move-wide v0, v7

    goto/16 :goto_2

    .line 156
    :cond_e
    sget v0, Lcom/avast/android/generic/x;->p:I

    move-wide v7, v1

    move v2, v0

    move-wide v0, v7

    goto/16 :goto_2

    .line 159
    :cond_f
    if-eqz v3, :cond_10

    .line 160
    sget v0, Lcom/avast/android/generic/x;->c:I

    move-wide v7, v1

    move v2, v0

    move-wide v0, v7

    goto/16 :goto_2

    .line 162
    :cond_10
    sget v0, Lcom/avast/android/generic/x;->q:I

    move-wide v7, v1

    move v2, v0

    move-wide v0, v7

    goto/16 :goto_2

    :cond_11
    move-object/from16 v0, p7

    move-wide v1, p0

    move-wide v3, p0

    move v5, p6

    .line 166
    invoke-static/range {v0 .. v5}, Lcom/avast/android/generic/util/k;->a(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3
.end method

.method public static a(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/avast/android/generic/util/k;->a(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 212
    new-instance v1, Ljava/util/Formatter;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .line 213
    invoke-static/range {v0 .. v6}, Lcom/avast/android/generic/util/k;->a(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 237
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/avast/android/generic/util/k;->a(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;
    .locals 31
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 394
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 395
    and-int/lit8 v2, p6, 0x1

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    move/from16 v23, v2

    .line 396
    :goto_0
    and-int/lit8 v2, p6, 0x2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    move/from16 v22, v2

    .line 397
    :goto_1
    and-int/lit8 v2, p6, 0x4

    if-eqz v2, :cond_5

    const/4 v9, 0x1

    .line 398
    :goto_2
    and-int/lit8 v2, p6, 0x8

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    move/from16 v21, v2

    .line 399
    :goto_3
    move/from16 v0, p6

    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    move v3, v2

    .line 400
    :goto_4
    const v2, 0x88000

    and-int v2, v2, p6

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    move v5, v2

    .line 401
    :goto_5
    const/high16 v2, 0x9

    and-int v2, v2, p6

    if-eqz v2, :cond_9

    const/4 v2, 0x1

    move/from16 v20, v2

    .line 402
    :goto_6
    and-int/lit8 v2, p6, 0x20

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    move/from16 v19, v2

    .line 403
    :goto_7
    const/high16 v2, 0x2

    and-int v2, v2, p6

    if-eqz v2, :cond_b

    const/4 v2, 0x1

    move/from16 v18, v2

    .line 408
    :goto_8
    cmp-long v2, p2, p4

    if-nez v2, :cond_c

    const/4 v2, 0x1

    move/from16 v17, v2

    .line 411
    :goto_9
    if-eqz p7, :cond_d

    .line 412
    new-instance v2, Landroid/text/format/Time;

    move-object/from16 v0, p7

    invoke-direct {v2, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 418
    :goto_a
    move-wide/from16 v0, p2

    invoke-virtual {v2, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 422
    if-eqz v17, :cond_f

    .line 424
    const/4 v3, 0x0

    move-object/from16 v16, v2

    .line 453
    :goto_b
    if-nez v17, :cond_1

    move-object/from16 v0, v16

    iget v4, v0, Landroid/text/format/Time;->hour:I

    move-object/from16 v0, v16

    iget v6, v0, Landroid/text/format/Time;->minute:I

    or-int/2addr v4, v6

    move-object/from16 v0, v16

    iget v6, v0, Landroid/text/format/Time;->second:I

    or-int/2addr v4, v6

    if-nez v4, :cond_1

    if-eqz v23, :cond_0

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    .line 455
    :cond_0
    move-object/from16 v0, v16

    iget v3, v0, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v16

    iput v3, v0, Landroid/text/format/Time;->monthDay:I

    .line 456
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->normalize(Z)J

    .line 459
    :cond_1
    iget v0, v2, Landroid/text/format/Time;->monthDay:I

    move/from16 v25, v0

    .line 460
    iget v0, v2, Landroid/text/format/Time;->month:I

    move/from16 v26, v0

    .line 461
    iget v0, v2, Landroid/text/format/Time;->year:I

    move/from16 v27, v0

    .line 463
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v28, v0

    .line 464
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v29, v0

    .line 465
    move-object/from16 v0, v16

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v30, v0

    .line 467
    const-string v4, ""

    .line 468
    const-string v3, ""

    .line 469
    if-eqz v22, :cond_2

    .line 470
    const-string v3, ""

    .line 471
    if-eqz v5, :cond_12

    .line 472
    const-string v3, "%a"

    .line 476
    :goto_c
    invoke-virtual {v2, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 477
    if-eqz v17, :cond_13

    move-object v3, v4

    .line 480
    :cond_2
    :goto_d
    const-string v6, ""

    .line 481
    const-string v5, ""

    .line 482
    if-eqz v23, :cond_5a

    .line 483
    const-string v5, ""

    .line 484
    const-string v7, ""

    .line 485
    move/from16 v0, p6

    and-int/lit16 v5, v0, 0x80

    if-eqz v5, :cond_14

    const/4 v5, 0x1

    move v6, v5

    .line 486
    :goto_e
    and-int/lit8 v5, p6, 0x40

    if-eqz v5, :cond_15

    const/4 v5, 0x1

    .line 488
    :goto_f
    if-eqz v6, :cond_16

    .line 489
    const/4 v5, 0x1

    .line 495
    :goto_10
    if-eqz v5, :cond_18

    .line 496
    sget v5, Lcom/avast/android/generic/z;->bh:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 567
    :goto_11
    invoke-virtual {v2, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 568
    if-eqz v17, :cond_2c

    move-object v5, v6

    :goto_12
    move-object v11, v5

    .line 575
    :goto_13
    if-eqz v9, :cond_2d

    move v10, v9

    .line 592
    :goto_14
    if-eqz v18, :cond_31

    .line 593
    sget v5, Lcom/avast/android/generic/z;->cP:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    .line 624
    :goto_15
    if-eqz v22, :cond_3a

    .line 625
    if-eqz v23, :cond_39

    .line 626
    sget v5, Lcom/avast/android/generic/z;->ao:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 639
    :goto_16
    if-eqz v19, :cond_3c

    move/from16 v0, v26

    move/from16 v1, v29

    if-ne v0, v1, :cond_3c

    .line 641
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2, v9}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    .line 781
    :goto_17
    return-object v2

    .line 395
    :cond_3
    const/4 v2, 0x0

    move/from16 v23, v2

    goto/16 :goto_0

    .line 396
    :cond_4
    const/4 v2, 0x0

    move/from16 v22, v2

    goto/16 :goto_1

    .line 397
    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 398
    :cond_6
    const/4 v2, 0x0

    move/from16 v21, v2

    goto/16 :goto_3

    .line 399
    :cond_7
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_4

    .line 400
    :cond_8
    const/4 v2, 0x0

    move v5, v2

    goto/16 :goto_5

    .line 401
    :cond_9
    const/4 v2, 0x0

    move/from16 v20, v2

    goto/16 :goto_6

    .line 402
    :cond_a
    const/4 v2, 0x0

    move/from16 v19, v2

    goto/16 :goto_7

    .line 403
    :cond_b
    const/4 v2, 0x0

    move/from16 v18, v2

    goto/16 :goto_8

    .line 408
    :cond_c
    const/4 v2, 0x0

    move/from16 v17, v2

    goto/16 :goto_9

    .line 413
    :cond_d
    if-eqz v3, :cond_e

    .line 414
    new-instance v2, Landroid/text/format/Time;

    const-string v4, "UTC"

    invoke-direct {v2, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 416
    :cond_e
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    goto/16 :goto_a

    .line 426
    :cond_f
    if-eqz p7, :cond_10

    .line 427
    new-instance v3, Landroid/text/format/Time;

    move-object/from16 v0, p7

    invoke-direct {v3, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 433
    :goto_18
    move-wide/from16 v0, p4

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 434
    iget-wide v6, v2, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p2

    invoke-static {v0, v1, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v4

    .line 435
    iget-wide v6, v3, Landroid/text/format/Time;->gmtoff:J

    move-wide/from16 v0, p4

    invoke-static {v0, v1, v6, v7}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v6

    .line 436
    sub-int v4, v6, v4

    move-object/from16 v16, v3

    move v3, v4

    goto/16 :goto_b

    .line 428
    :cond_10
    if-eqz v3, :cond_11

    .line 429
    new-instance v3, Landroid/text/format/Time;

    const-string v4, "UTC"

    invoke-direct {v3, v4}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    goto :goto_18

    .line 431
    :cond_11
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    goto :goto_18

    .line 474
    :cond_12
    const-string v3, "%A"

    goto/16 :goto_c

    .line 477
    :cond_13
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_d

    .line 485
    :cond_14
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_e

    .line 486
    :cond_15
    const/4 v5, 0x0

    goto/16 :goto_f

    .line 490
    :cond_16
    if-eqz v5, :cond_17

    .line 491
    const/4 v5, 0x0

    goto/16 :goto_10

    .line 493
    :cond_17
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v5

    goto/16 :goto_10

    .line 499
    :cond_18
    const v5, 0x84000

    and-int v5, v5, p6

    if-eqz v5, :cond_1a

    const/4 v5, 0x1

    move v15, v5

    .line 500
    :goto_19
    move/from16 v0, p6

    and-int/lit16 v5, v0, 0x100

    if-eqz v5, :cond_1b

    const/4 v5, 0x1

    move v14, v5

    .line 501
    :goto_1a
    move/from16 v0, p6

    and-int/lit16 v5, v0, 0x200

    if-eqz v5, :cond_1c

    const/4 v5, 0x1

    move v13, v5

    .line 502
    :goto_1b
    move/from16 v0, p6

    and-int/lit16 v5, v0, 0x400

    if-eqz v5, :cond_1d

    const/4 v5, 0x1

    move v12, v5

    .line 503
    :goto_1c
    move/from16 v0, p6

    and-int/lit16 v5, v0, 0x800

    if-eqz v5, :cond_1e

    const/4 v5, 0x1

    move v11, v5

    .line 504
    :goto_1d
    move/from16 v0, p6

    and-int/lit16 v5, v0, 0x1000

    if-eqz v5, :cond_1f

    const/4 v5, 0x1

    .line 506
    :goto_1e
    iget v6, v2, Landroid/text/format/Time;->minute:I

    if-nez v6, :cond_20

    iget v6, v2, Landroid/text/format/Time;->second:I

    if-nez v6, :cond_20

    const/4 v6, 0x1

    .line 507
    :goto_1f
    move-object/from16 v0, v16

    iget v8, v0, Landroid/text/format/Time;->minute:I

    if-nez v8, :cond_21

    move-object/from16 v0, v16

    iget v8, v0, Landroid/text/format/Time;->second:I

    if-nez v8, :cond_21

    const/4 v8, 0x1

    move v10, v8

    .line 508
    :goto_20
    if-eqz v15, :cond_23

    if-eqz v6, :cond_23

    .line 509
    if-eqz v14, :cond_22

    .line 510
    sget v8, Lcom/avast/android/generic/z;->al:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 526
    :goto_21
    if-nez v17, :cond_19

    .line 527
    if-eqz v15, :cond_26

    if-eqz v10, :cond_26

    .line 528
    if-eqz v14, :cond_25

    .line 529
    sget v7, Lcom/avast/android/generic/z;->al:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 541
    :goto_22
    move-object/from16 v0, v16

    iget v14, v0, Landroid/text/format/Time;->hour:I

    const/16 v15, 0xc

    if-ne v14, v15, :cond_29

    if-eqz v10, :cond_29

    if-nez v13, :cond_29

    .line 542
    if-eqz v12, :cond_28

    .line 543
    sget v5, Lcom/avast/android/generic/z;->aA:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 556
    :cond_19
    :goto_23
    iget v5, v2, Landroid/text/format/Time;->hour:I

    const/16 v10, 0xc

    if-ne v5, v10, :cond_59

    if-eqz v6, :cond_59

    if-nez v13, :cond_59

    .line 557
    if-eqz v12, :cond_2b

    .line 558
    sget v5, Lcom/avast/android/generic/z;->aA:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_11

    .line 499
    :cond_1a
    const/4 v5, 0x0

    move v15, v5

    goto/16 :goto_19

    .line 500
    :cond_1b
    const/4 v5, 0x0

    move v14, v5

    goto/16 :goto_1a

    .line 501
    :cond_1c
    const/4 v5, 0x0

    move v13, v5

    goto/16 :goto_1b

    .line 502
    :cond_1d
    const/4 v5, 0x0

    move v12, v5

    goto :goto_1c

    .line 503
    :cond_1e
    const/4 v5, 0x0

    move v11, v5

    goto :goto_1d

    .line 504
    :cond_1f
    const/4 v5, 0x0

    goto :goto_1e

    .line 506
    :cond_20
    const/4 v6, 0x0

    goto :goto_1f

    .line 507
    :cond_21
    const/4 v8, 0x0

    move v10, v8

    goto :goto_20

    .line 512
    :cond_22
    sget v8, Lcom/avast/android/generic/z;->u:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_21

    .line 515
    :cond_23
    if-eqz v14, :cond_24

    .line 516
    sget v8, Lcom/avast/android/generic/z;->cK:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_21

    .line 518
    :cond_24
    sget v8, Lcom/avast/android/generic/z;->cS:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_21

    .line 531
    :cond_25
    sget v7, Lcom/avast/android/generic/z;->u:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 534
    :cond_26
    if-eqz v14, :cond_27

    .line 535
    sget v7, Lcom/avast/android/generic/z;->cK:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 537
    :cond_27
    sget v7, Lcom/avast/android/generic/z;->cS:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_22

    .line 545
    :cond_28
    sget v5, Lcom/avast/android/generic/z;->aI:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_23

    .line 547
    :cond_29
    move-object/from16 v0, v16

    iget v14, v0, Landroid/text/format/Time;->hour:I

    if-nez v14, :cond_19

    if-eqz v10, :cond_19

    if-nez v11, :cond_19

    .line 548
    if-eqz v5, :cond_2a

    .line 549
    sget v5, Lcom/avast/android/generic/z;->cG:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_23

    .line 551
    :cond_2a
    sget v5, Lcom/avast/android/generic/z;->cf:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_23

    .line 560
    :cond_2b
    sget v5, Lcom/avast/android/generic/z;->aI:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_11

    .line 568
    :cond_2c
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_12

    .line 579
    :cond_2d
    if-eqz v21, :cond_2e

    .line 581
    const/4 v5, 0x0

    move v10, v5

    goto/16 :goto_14

    .line 582
    :cond_2e
    move/from16 v0, v27

    move/from16 v1, v30

    if-eq v0, v1, :cond_2f

    .line 583
    const/4 v5, 0x1

    move v10, v5

    goto/16 :goto_14

    .line 586
    :cond_2f
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 587
    invoke-virtual {v5}, Landroid/text/format/Time;->setToNow()V

    .line 588
    iget v5, v5, Landroid/text/format/Time;->year:I

    move/from16 v0, v27

    if-eq v0, v5, :cond_30

    const/4 v5, 0x1

    :goto_24
    move v10, v5

    goto/16 :goto_14

    :cond_30
    const/4 v5, 0x0

    goto :goto_24

    .line 594
    :cond_31
    if-eqz v10, :cond_35

    .line 595
    if-eqz v20, :cond_33

    .line 596
    if-eqz v19, :cond_32

    .line 597
    sget v5, Lcom/avast/android/generic/z;->aE:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    goto/16 :goto_15

    .line 599
    :cond_32
    sget v5, Lcom/avast/android/generic/z;->T:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    goto/16 :goto_15

    .line 602
    :cond_33
    if-eqz v19, :cond_34

    .line 603
    sget v5, Lcom/avast/android/generic/z;->bx:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    goto/16 :goto_15

    .line 605
    :cond_34
    sget v5, Lcom/avast/android/generic/z;->aP:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    goto/16 :goto_15

    .line 609
    :cond_35
    if-eqz v20, :cond_37

    .line 610
    if-eqz v19, :cond_36

    .line 611
    sget v5, Lcom/avast/android/generic/z;->bA:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    goto/16 :goto_15

    .line 613
    :cond_36
    sget v5, Lcom/avast/android/generic/z;->cn:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    goto/16 :goto_15

    .line 616
    :cond_37
    if-eqz v19, :cond_38

    .line 617
    sget v5, Lcom/avast/android/generic/z;->ak:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    goto/16 :goto_15

    .line 619
    :cond_38
    sget v5, Lcom/avast/android/generic/z;->N:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    goto/16 :goto_15

    .line 629
    :cond_39
    sget v5, Lcom/avast/android/generic/z;->cB:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_16

    .line 632
    :cond_3a
    if-eqz v23, :cond_3b

    .line 633
    sget v5, Lcom/avast/android/generic/z;->cc:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_16

    .line 635
    :cond_3b
    sget v5, Lcom/avast/android/generic/z;->aT:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_16

    .line 644
    :cond_3c
    move/from16 v0, v27

    move/from16 v1, v30

    if-ne v0, v1, :cond_3d

    if-eqz v19, :cond_3e

    .line 648
    :cond_3d
    invoke-virtual {v2, v9}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 649
    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 653
    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    const/4 v4, 0x1

    aput-object v2, v8, v4

    const/4 v2, 0x2

    aput-object v6, v8, v2

    const/4 v2, 0x3

    aput-object v3, v8, v2

    const/4 v2, 0x4

    aput-object v7, v8, v2

    const/4 v2, 0x5

    aput-object v11, v8, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v5, v8}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    goto/16 :goto_17

    .line 659
    :cond_3e
    if-eqz v18, :cond_43

    .line 660
    const-string v5, "%m"

    .line 666
    :goto_25
    invoke-virtual {v2, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 667
    const-string v7, "%-d"

    invoke-virtual {v2, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 668
    const-string v7, "%Y"

    invoke-virtual {v2, v7}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 670
    if-eqz v17, :cond_45

    const/4 v5, 0x0

    move-object v8, v5

    .line 671
    :goto_26
    if-eqz v17, :cond_46

    const/4 v5, 0x0

    move-object v7, v5

    .line 672
    :goto_27
    if-eqz v17, :cond_47

    const/4 v5, 0x0

    .line 674
    :goto_28
    move/from16 v0, v26

    move/from16 v1, v29

    if-eq v0, v1, :cond_48

    .line 680
    const/4 v2, 0x0

    .line 681
    if-eqz v22, :cond_3f

    .line 682
    const/4 v2, 0x1

    .line 683
    :cond_3f
    if-eqz v10, :cond_40

    .line 684
    add-int/lit8 v2, v2, 0x2

    .line 685
    :cond_40
    if-eqz v23, :cond_41

    .line 686
    add-int/lit8 v2, v2, 0x4

    .line 687
    :cond_41
    if-eqz v18, :cond_42

    .line 688
    add-int/lit8 v2, v2, 0x8

    .line 689
    :cond_42
    sget-object v9, Landroid/text/format/DateUtils;->sameYearTable:[I

    aget v2, v9, v2

    .line 690
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 694
    const/16 v9, 0xa

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v4, 0x1

    aput-object v12, v9, v4

    const/4 v4, 0x2

    aput-object v13, v9, v4

    const/4 v4, 0x3

    aput-object v14, v9, v4

    const/4 v4, 0x4

    aput-object v6, v9, v4

    const/4 v4, 0x5

    aput-object v3, v9, v4

    const/4 v3, 0x6

    aput-object v8, v9, v3

    const/4 v3, 0x7

    aput-object v7, v9, v3

    const/16 v3, 0x8

    aput-object v5, v9, v3

    const/16 v3, 0x9

    aput-object v11, v9, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    goto/16 :goto_17

    .line 661
    :cond_43
    if-eqz v20, :cond_44

    .line 662
    sget v5, Lcom/avast/android/generic/z;->cX:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_25

    .line 664
    :cond_44
    const-string v5, "%B"

    goto :goto_25

    .line 670
    :cond_45
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    goto :goto_26

    .line 671
    :cond_46
    const-string v5, "%-d"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v7, v5

    goto :goto_27

    .line 672
    :cond_47
    const-string v5, "%Y"

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_28

    .line 699
    :cond_48
    move/from16 v0, v25

    move/from16 v1, v28

    if-eq v0, v1, :cond_4d

    .line 701
    const/4 v2, 0x0

    .line 702
    if-eqz v22, :cond_49

    .line 703
    const/4 v2, 0x1

    .line 704
    :cond_49
    if-eqz v10, :cond_4a

    .line 705
    add-int/lit8 v2, v2, 0x2

    .line 706
    :cond_4a
    if-eqz v23, :cond_4b

    .line 707
    add-int/lit8 v2, v2, 0x4

    .line 708
    :cond_4b
    if-eqz v18, :cond_4c

    .line 709
    add-int/lit8 v2, v2, 0x8

    .line 710
    :cond_4c
    sget-object v9, Landroid/text/format/DateUtils;->sameMonthTable:[I

    aget v2, v9, v2

    .line 711
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 715
    const/16 v9, 0xa

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    const/4 v4, 0x1

    aput-object v12, v9, v4

    const/4 v4, 0x2

    aput-object v13, v9, v4

    const/4 v4, 0x3

    aput-object v14, v9, v4

    const/4 v4, 0x4

    aput-object v6, v9, v4

    const/4 v4, 0x5

    aput-object v3, v9, v4

    const/4 v3, 0x6

    aput-object v8, v9, v3

    const/4 v3, 0x7

    aput-object v7, v9, v3

    const/16 v3, 0x8

    aput-object v5, v9, v3

    const/16 v3, 0x9

    aput-object v11, v9, v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    goto/16 :goto_17

    .line 721
    :cond_4d
    and-int/lit8 v3, p6, 0x10

    if-eqz v3, :cond_50

    const/4 v3, 0x1

    .line 724
    :goto_29
    if-nez v23, :cond_4e

    if-nez v3, :cond_4e

    if-nez v22, :cond_4e

    .line 725
    const/4 v3, 0x1

    .line 728
    :cond_4e
    const-string v5, ""

    .line 729
    if-eqz v23, :cond_4f

    .line 732
    if-eqz v17, :cond_51

    move-object v5, v6

    .line 746
    :cond_4f
    :goto_2a
    const-string v7, ""

    .line 747
    const-string v6, ""

    .line 748
    if-eqz v3, :cond_55

    .line 749
    invoke-virtual {v2, v9}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 750
    if-eqz v22, :cond_53

    .line 751
    if-eqz v23, :cond_52

    .line 753
    sget v3, Lcom/avast/android/generic/z;->h:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 781
    :goto_2b
    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    const/4 v5, 0x1

    aput-object v4, v6, v5

    const/4 v4, 0x2

    aput-object v2, v6, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    goto/16 :goto_17

    .line 721
    :cond_50
    const/4 v3, 0x0

    goto :goto_29

    .line 738
    :cond_51
    sget v5, Lcom/avast/android/generic/z;->bX:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 741
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v6, 0x1

    aput-object v11, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2a

    .line 756
    :cond_52
    sget v3, Lcom/avast/android/generic/z;->cT:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2b

    .line 759
    :cond_53
    if-eqz v23, :cond_54

    .line 761
    sget v3, Lcom/avast/android/generic/z;->aQ:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2b

    .line 764
    :cond_54
    const-string v3, "%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    goto/16 :goto_17

    .line 767
    :cond_55
    if-eqz v22, :cond_57

    .line 768
    if-eqz v23, :cond_56

    .line 770
    sget v2, Lcom/avast/android/generic/z;->bp:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move-object v2, v6

    goto :goto_2b

    .line 773
    :cond_56
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    goto/16 :goto_17

    .line 775
    :cond_57
    if-eqz v23, :cond_58

    .line 776
    const-string v2, "%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v2

    goto/16 :goto_17

    :cond_58
    move-object v2, v6

    move-object v3, v7

    goto/16 :goto_2b

    :cond_59
    move-object v5, v8

    goto/16 :goto_11

    :cond_5a
    move-object v11, v5

    goto/16 :goto_13
.end method

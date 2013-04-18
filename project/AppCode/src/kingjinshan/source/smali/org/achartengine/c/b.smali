.class public final Lorg/achartengine/c/b;
.super Lorg/achartengine/c/a;
.source "Pan.java"


# instance fields
.field private c:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/achartengine/a/a;)V
    .locals 1
    .parameter

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/achartengine/c/a;-><init>(Lorg/achartengine/a/a;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/achartengine/c/b;->c:Ljava/util/List;

    .line 40
    return-void
.end method

.method private declared-synchronized a()V
    .locals 2

    .prologue
    .line 118
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/c/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 121
    :cond_0
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final a(FFFF)V
    .locals 21
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 55
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/c/b;->a:Lorg/achartengine/a/a;

    move-object v4, v0

    instance-of v4, v4, Lorg/achartengine/a/h;

    if-eqz v4, :cond_c

    .line 56
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/c/b;->b:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getScalesCount()I

    move-result v11

    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/c/b;->b:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->getPanLimits()[D

    move-result-object v12

    .line 58
    if-eqz v12, :cond_2

    array-length v4, v12

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    move v13, v4

    .line 59
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/c/b;->a:Lorg/achartengine/a/a;

    move-object v4, v0

    move-object v0, v4

    check-cast v0, Lorg/achartengine/a/h;

    move-object v10, v0

    .line 60
    const/4 v4, 0x0

    move v9, v4

    :goto_1
    if-ge v9, v11, :cond_d

    .line 61
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lorg/achartengine/c/b;->a(I)[D

    move-result-object v14

    .line 62
    invoke-virtual {v10, v9}, Lorg/achartengine/a/h;->a(I)[D

    move-result-object v4

    .line 63
    const/4 v5, 0x0

    aget-wide v5, v14, v5

    const/4 v7, 0x1

    aget-wide v7, v14, v7

    cmpl-double v5, v5, v7

    if-nez v5, :cond_0

    const/4 v5, 0x0

    aget-wide v5, v4, v5

    const/4 v7, 0x1

    aget-wide v7, v4, v7

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x2

    aget-wide v5, v14, v5

    const/4 v7, 0x3

    aget-wide v7, v14, v7

    cmpl-double v5, v5, v7

    if-nez v5, :cond_3

    const/4 v5, 0x2

    aget-wide v5, v4, v5

    const/4 v7, 0x3

    aget-wide v7, v4, v7

    cmpl-double v4, v5, v7

    if-nez v4, :cond_3

    .line 112
    :cond_1
    :goto_2
    return-void

    .line 58
    :cond_2
    const/4 v4, 0x0

    move v13, v4

    goto :goto_0

    .line 67
    :cond_3
    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v9

    invoke-virtual {v0, v1, v2}, Lorg/achartengine/c/b;->a([DI)V

    .line 69
    move-object v0, v10

    move/from16 v1, p1

    move/from16 v2, p2

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lorg/achartengine/a/h;->a(FFI)[D

    move-result-object v4

    .line 70
    move-object v0, v10

    move/from16 v1, p3

    move/from16 v2, p4

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lorg/achartengine/a/h;->a(FFI)[D

    move-result-object v5

    .line 71
    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    .line 73
    const/4 v6, 0x0

    aget-wide v6, v4, v6

    const/4 v8, 0x0

    aget-wide v15, v5, v8

    sub-double v7, v6, v15

    .line 74
    const/4 v6, 0x1

    aget-wide v15, v4, v6

    const/4 v4, 0x1

    aget-wide v4, v5, v4

    sub-double/2addr v15, v4

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/c/b;->b:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isPanXEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 76
    if-eqz v13, :cond_8

    .line 77
    const/4 v4, 0x0

    aget-wide v4, v12, v4

    const/4 v6, 0x0

    aget-wide v17, v14, v6

    add-double v17, v17, v7

    cmpl-double v4, v4, v17

    if-lez v4, :cond_6

    .line 78
    const/4 v4, 0x0

    aget-wide v5, v12, v4

    const/4 v4, 0x0

    aget-wide v7, v12, v4

    const/4 v4, 0x1

    aget-wide v17, v14, v4

    const/4 v4, 0x0

    aget-wide v19, v14, v4

    sub-double v17, v17, v19

    add-double v7, v7, v17

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lorg/achartengine/c/b;->a(DDI)V

    .line 90
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/c/b;->b:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->isPanYEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 91
    if-eqz v13, :cond_b

    .line 92
    const/4 v4, 0x2

    aget-wide v4, v12, v4

    const/4 v6, 0x2

    aget-wide v6, v14, v6

    add-double/2addr v6, v15

    cmpl-double v4, v4, v6

    if-lez v4, :cond_9

    .line 93
    const/4 v4, 0x2

    aget-wide v5, v12, v4

    const/4 v4, 0x2

    aget-wide v7, v12, v4

    const/4 v4, 0x3

    aget-wide v15, v14, v4

    const/4 v4, 0x2

    aget-wide v17, v14, v4

    sub-double v14, v15, v17

    add-double/2addr v7, v14

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lorg/achartengine/c/b;->b(DDI)V

    .line 60
    :cond_5
    :goto_4
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    goto/16 :goto_1

    .line 80
    :cond_6
    const/4 v4, 0x1

    aget-wide v4, v12, v4

    const/4 v6, 0x1

    aget-wide v17, v14, v6

    add-double v17, v17, v7

    cmpg-double v4, v4, v17

    if-gez v4, :cond_7

    .line 81
    const/4 v4, 0x1

    aget-wide v4, v12, v4

    const/4 v6, 0x1

    aget-wide v6, v14, v6

    const/4 v8, 0x0

    aget-wide v17, v14, v8

    sub-double v6, v6, v17

    sub-double v5, v4, v6

    const/4 v4, 0x1

    aget-wide v7, v12, v4

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lorg/achartengine/c/b;->a(DDI)V

    goto :goto_3

    .line 84
    :cond_7
    const/4 v4, 0x0

    aget-wide v4, v14, v4

    add-double v5, v4, v7

    const/4 v4, 0x1

    aget-wide v17, v14, v4

    add-double v7, v7, v17

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lorg/achartengine/c/b;->a(DDI)V

    goto :goto_3

    .line 87
    :cond_8
    const/4 v4, 0x0

    aget-wide v4, v14, v4

    add-double v5, v4, v7

    const/4 v4, 0x1

    aget-wide v17, v14, v4

    add-double v7, v7, v17

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lorg/achartengine/c/b;->a(DDI)V

    goto :goto_3

    .line 95
    :cond_9
    const/4 v4, 0x3

    aget-wide v4, v12, v4

    const/4 v6, 0x3

    aget-wide v6, v14, v6

    add-double/2addr v6, v15

    cmpg-double v4, v4, v6

    if-gez v4, :cond_a

    .line 96
    const/4 v4, 0x3

    aget-wide v4, v12, v4

    const/4 v6, 0x3

    aget-wide v6, v14, v6

    const/4 v8, 0x2

    aget-wide v14, v14, v8

    sub-double/2addr v6, v14

    sub-double v5, v4, v6

    const/4 v4, 0x3

    aget-wide v7, v12, v4

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lorg/achartengine/c/b;->b(DDI)V

    goto :goto_4

    .line 99
    :cond_a
    const/4 v4, 0x2

    aget-wide v4, v14, v4

    add-double v5, v4, v15

    const/4 v4, 0x3

    aget-wide v7, v14, v4

    add-double/2addr v7, v15

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lorg/achartengine/c/b;->b(DDI)V

    goto :goto_4

    .line 102
    :cond_b
    const/4 v4, 0x2

    aget-wide v4, v14, v4

    add-double v5, v4, v15

    const/4 v4, 0x3

    aget-wide v7, v14, v4

    add-double/2addr v7, v15

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v9}, Lorg/achartengine/c/b;->b(DDI)V

    goto/16 :goto_4

    .line 107
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/achartengine/c/b;->a:Lorg/achartengine/a/a;

    move-object v4, v0

    check-cast v4, Lorg/achartengine/a/e;

    .line 108
    invoke-virtual {v4}, Lorg/achartengine/a/e;->c()I

    move-result v5

    sub-float v6, p3, p1

    float-to-int v6, v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lorg/achartengine/a/e;->a(I)V

    .line 109
    invoke-virtual {v4}, Lorg/achartengine/a/e;->d()I

    move-result v5

    sub-float v6, p4, p2

    float-to-int v6, v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lorg/achartengine/a/e;->b(I)V

    .line 111
    :cond_d
    invoke-direct/range {p0 .. p0}, Lorg/achartengine/c/b;->a()V

    goto/16 :goto_2
.end method

.method public final declared-synchronized a(Lorg/achartengine/c/c;)V
    .locals 1
    .parameter

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/c/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lorg/achartengine/c/c;)V
    .locals 1
    .parameter

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/achartengine/c/b;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

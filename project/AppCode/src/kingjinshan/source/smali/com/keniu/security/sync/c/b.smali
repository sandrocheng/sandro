.class public final Lcom/keniu/security/sync/c/b;
.super Lcom/keniu/security/sync/c/g;
.source "ContactRestoreTask.java"


# instance fields
.field private a:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 22
    const v0, 0x7f0b08bb

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p1, v0}, Lcom/keniu/security/sync/c/g;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/keniu/security/sync/c/b;->a:I

    .line 23
    iput p3, p0, Lcom/keniu/security/sync/c/b;->a:I

    .line 24
    return-void
.end method

.method private a(Ljava/util/List;)I
    .locals 17
    .parameter

    .prologue
    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/keniu/security/sync/c/b;->b:Landroid/content/Context;

    move-object v2, v0

    invoke-static {v2}, Lcom/keniu/security/sync/r;->a(Landroid/content/Context;)Lcom/keniu/security/sync/d;

    move-result-object v2

    .line 63
    const/4 v3, 0x0

    .line 64
    const/4 v4, 0x0

    move v9, v4

    move v10, v3

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v9, v3, :cond_f

    .line 66
    :try_start_0
    move-object/from16 v0, p1

    move v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/keniu/security/sync/g;

    move-object v8, v0

    .line 67
    invoke-virtual {v8}, Lcom/keniu/security/sync/g;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 68
    if-nez v3, :cond_1

    move v3, v10

    .line 64
    :cond_0
    :goto_1
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    move v10, v3

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v2, v3}, Lcom/keniu/security/sync/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 70
    const-string v3, "-1"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 71
    invoke-virtual {v2, v8}, Lcom/keniu/security/sync/d;->a(Lcom/keniu/security/sync/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_2
    add-int/lit8 v3, v10, 0x1

    .line 132
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/c/b;->a(I)V

    .line 133
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/keniu/security/sync/c/b;->publishProgress([Ljava/lang/Object;)V

    .line 135
    invoke-virtual/range {p0 .. p0}, Lcom/keniu/security/sync/c/b;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, -0x1

    .line 137
    :goto_2
    return v2

    .line 73
    :cond_3
    :try_start_1
    invoke-virtual {v8}, Lcom/keniu/security/sync/g;->f()Ljava/lang/String;

    move-result-object v3

    .line 74
    invoke-virtual {v8}, Lcom/keniu/security/sync/g;->d()Ljava/lang/String;

    move-result-object v4

    .line 75
    invoke-virtual {v8}, Lcom/keniu/security/sync/g;->a()Ljava/lang/String;

    move-result-object v12

    .line 76
    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    .line 77
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 78
    const-string v3, ";"

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 79
    if-eqz v12, :cond_5

    const-string v3, ""

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, ";"

    invoke-virtual {v12, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move-object v15, v3

    .line 80
    :goto_3
    const/4 v3, 0x0

    move/from16 v16, v3

    :goto_4
    array-length v3, v13

    move/from16 v0, v16

    move v1, v3

    if-ge v0, v1, :cond_7

    .line 81
    aget-object v3, v13, v16

    if-eqz v3, :cond_4

    aget-object v3, v13, v16

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 82
    aget-object v3, v13, v16

    invoke-virtual {v2, v11, v3}, Lcom/keniu/security/sync/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 83
    if-eqz v12, :cond_6

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aget-object v5, v13, v16

    aget-object v6, v14, v16

    aget-object v7, v15, v16

    invoke-virtual/range {v2 .. v7}, Lcom/keniu/security/sync/d;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_4
    :goto_5
    add-int/lit8 v3, v16, 0x1

    move/from16 v16, v3

    goto :goto_4

    .line 79
    :cond_5
    const/4 v3, 0x0

    move-object v15, v3

    goto :goto_3

    .line 84
    :cond_6
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aget-object v5, v13, v16

    aget-object v6, v14, v16

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/keniu/security/sync/d;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    .line 127
    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move v3, v10

    .line 129
    goto/16 :goto_1

    .line 88
    :cond_7
    :try_start_2
    invoke-virtual {v8}, Lcom/keniu/security/sync/g;->i()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-virtual {v8}, Lcom/keniu/security/sync/g;->k()Ljava/lang/String;

    move-result-object v4

    .line 90
    if-eqz v3, :cond_9

    if-eqz v4, :cond_9

    .line 91
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 92
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 93
    const/4 v5, 0x0

    :goto_6
    array-length v6, v3

    if-ge v5, v6, :cond_9

    .line 94
    aget-object v6, v3, v5

    if-eqz v6, :cond_8

    aget-object v6, v3, v5

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 95
    aget-object v6, v3, v5

    invoke-virtual {v2, v11, v6}, Lcom/keniu/security/sync/d;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 96
    const-string v7, "-1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aget-object v12, v3, v5

    aget-object v13, v4, v5

    invoke-virtual {v2, v6, v7, v12, v13}, Lcom/keniu/security/sync/d;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 99
    :cond_9
    invoke-virtual {v8}, Lcom/keniu/security/sync/g;->g()Ljava/lang/String;

    move-result-object v3

    .line 100
    invoke-virtual {v8}, Lcom/keniu/security/sync/g;->j()Ljava/lang/String;

    move-result-object v4

    .line 101
    if-eqz v3, :cond_b

    if-eqz v4, :cond_b

    .line 102
    const-string v5, ";"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 103
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 104
    const/4 v5, 0x0

    :goto_7
    array-length v6, v3

    if-ge v5, v6, :cond_b

    .line 105
    aget-object v6, v3, v5

    if-eqz v6, :cond_a

    aget-object v6, v3, v5

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 106
    aget-object v6, v3, v5

    invoke-virtual {v2, v11, v6}, Lcom/keniu/security/sync/d;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 107
    const-string v7, "-1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    aget-object v12, v3, v5

    aget-object v13, v4, v5

    invoke-virtual {v2, v6, v7, v12, v13}, Lcom/keniu/security/sync/d;->b(JLjava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 110
    :cond_b
    invoke-virtual {v8}, Lcom/keniu/security/sync/g;->h()Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-virtual {v8}, Lcom/keniu/security/sync/g;->b()Ljava/lang/String;

    move-result-object v4

    .line 112
    invoke-virtual {v8}, Lcom/keniu/security/sync/g;->c()Ljava/lang/String;

    move-result-object v5

    .line 114
    if-eqz v3, :cond_2

    if-eqz v3, :cond_2

    .line 115
    const-string v6, ";"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 116
    const-string v3, ";"

    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 117
    const-string v3, ";"

    invoke-virtual {v5, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 118
    const/4 v3, 0x0

    move v14, v3

    :goto_8
    array-length v3, v8

    if-ge v14, v3, :cond_2

    .line 119
    aget-object v3, v8, v14

    if-eqz v3, :cond_c

    aget-object v3, v8, v14

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 120
    array-length v3, v12

    if-le v3, v14, :cond_d

    aget-object v3, v12, v14

    move-object v6, v3

    .line 121
    :goto_9
    array-length v3, v13

    if-le v3, v14, :cond_e

    aget-object v3, v13, v14

    move-object v7, v3

    .line 122
    :goto_a
    aget-object v3, v8, v14

    invoke-virtual {v2, v11, v3, v6}, Lcom/keniu/security/sync/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 123
    const-string v4, "-1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aget-object v5, v8, v14

    invoke-virtual/range {v2 .. v7}, Lcom/keniu/security/sync/d;->b(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_c
    add-int/lit8 v3, v14, 0x1

    move v14, v3

    goto :goto_8

    .line 120
    :cond_d
    const-string v3, ""

    move-object v6, v3

    goto :goto_9

    .line 121
    :cond_e
    const-string v3, ""
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v7, v3

    goto :goto_a

    :cond_f
    move v2, v10

    .line 137
    goto/16 :goto_2
.end method


# virtual methods
.method protected final varargs a([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 34
    invoke-super {p0, p1}, Lcom/keniu/security/sync/c/g;->a([Ljava/lang/String;)Ljava/lang/Integer;

    .line 35
    iget v0, p0, Lcom/keniu/security/sync/c/b;->a:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/keniu/security/sync/r;->aC:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/keniu/security/sync/c/b;->d:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/keniu/security/sync/c/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".copy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/keniu/security/sync/c/b;->d:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/keniu/security/sync/c/b;->a:I

    if-ne v1, v3, :cond_1

    const/16 v0, -0x2729

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 52
    :goto_1
    return-object v0

    .line 35
    :cond_0
    sget-object v0, Lcom/keniu/security/sync/r;->aD:Ljava/lang/String;

    goto :goto_0

    .line 38
    :cond_1
    iget-object v1, p0, Lcom/keniu/security/sync/c/b;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/keniu/security/sync/r;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v0, -0x2728

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 39
    :cond_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v0, -0x2719

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 42
    :cond_3
    invoke-static {v0}, Lcom/keniu/security/sync/l;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 43
    sget-object v2, Lcom/keniu/security/sync/r;->aE:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/keniu/security/sync/l;->b(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_4

    const/16 v0, -0x271c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 45
    :cond_4
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/keniu/security/sync/r;->aE:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 47
    :cond_5
    invoke-static {v0}, Lcom/keniu/security/sync/r;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_7

    :cond_6
    const/16 v0, -0x271a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 49
    :cond_7
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 50
    invoke-virtual {p0}, Lcom/keniu/security/sync/c/b;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 51
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/keniu/security/sync/c/b;->b(I)V

    .line 52
    invoke-direct {p0, v0}, Lcom/keniu/security/sync/c/b;->a(Ljava/util/List;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1
.end method

.method protected final a(Ljava/lang/Integer;)V
    .locals 4
    .parameter

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/keniu/security/sync/c/g;->a(Ljava/lang/Integer;)V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ">>>>> contact#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/keniu/security/sync/i;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/keniu/security/sync/c/b;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keniu/security/sync/c/b;->c:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 59
    return-void

    .line 58
    :cond_0
    const/16 v3, -0x271b

    goto :goto_0
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 17
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/c/b;->a([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 17
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/keniu/security/sync/c/b;->a(Ljava/lang/Integer;)V

    return-void
.end method

.method protected final onPreExecute()V
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/keniu/security/sync/c/g;->onPreExecute()V

    .line 28
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/c/b;->b(I)V

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/keniu/security/sync/c/b;->a(I)V

    .line 30
    return-void
.end method

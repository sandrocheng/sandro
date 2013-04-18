.class public final Lcom/keniu/security/f/w;
.super Lcom/keniu/security/f/ae;
.source "UpdateData.java"


# instance fields
.field private A:Lcom/keniu/security/f/h;

.field private B:Lcom/keniu/security/f/h;

.field private C:Lcom/keniu/security/f/y;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/keniu/security/f/ae;-><init>(I)V

    .line 200
    new-instance v0, Lcom/keniu/security/f/y;

    invoke-direct {v0}, Lcom/keniu/security/f/y;-><init>()V

    iput-object v0, p0, Lcom/keniu/security/f/w;->C:Lcom/keniu/security/f/y;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/keniu/security/f/w;)Lcom/keniu/security/f/y;
    .locals 1
    .parameter

    .prologue
    .line 12
    iget-object v0, p0, Lcom/keniu/security/f/w;->C:Lcom/keniu/security/f/y;

    return-object v0
.end method

.method private b()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/f/w;->A:Lcom/keniu/security/f/h;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->n()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/f/w;->A:Lcom/keniu/security/f/h;

    const-string v2, "data"

    invoke-static {v1, v2, v0}, Lcom/keniu/security/f/w;->a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v11

    :goto_0
    if-nez v0, :cond_2

    .line 181
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v10

    .line 50
    goto :goto_0

    .line 56
    :cond_2
    new-instance v2, Lcom/keniu/security/f/aa;

    invoke-direct {v2}, Lcom/keniu/security/f/aa;-><init>()V

    .line 57
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v3

    .line 63
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 65
    iget-object v0, p0, Lcom/keniu/security/f/w;->A:Lcom/keniu/security/f/h;

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    .line 67
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v10

    .line 68
    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 69
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    invoke-virtual {v3, v0}, Lcom/keniu/security/f/ab;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 71
    invoke-virtual {v3, v0}, Lcom/keniu/security/f/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 75
    iget-object v8, p0, Lcom/keniu/security/f/w;->A:Lcom/keniu/security/f/h;

    invoke-static {v8, v0, v7}, Lcom/keniu/security/f/w;->a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 76
    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v7, p0, Lcom/keniu/security/f/w;->B:Lcom/keniu/security/f/h;

    invoke-virtual {v3, v0}, Lcom/keniu/security/f/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v0, v8}, Lcom/keniu/security/f/z;->a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    iget-object v7, p0, Lcom/keniu/security/f/w;->B:Lcom/keniu/security/f/h;

    invoke-virtual {v2, v7, v0}, Lcom/keniu/security/f/aa;->a(Lcom/keniu/security/f/h;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v2}, Lcom/keniu/security/f/aa;->b()I

    move-result v0

    add-int/2addr v0, v6

    move v6, v0

    .line 84
    goto :goto_2

    .line 86
    :cond_4
    invoke-static {}, Lcom/keniu/security/f/f;->g()J

    move-result-wide v7

    int-to-long v5, v6

    cmp-long v0, v7, v5

    if-ltz v0, :cond_5

    move v0, v11

    :goto_3
    if-nez v0, :cond_6

    .line 87
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/keniu/security/f/w;->c(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 179
    :catch_0
    move-exception v0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/keniu/security/f/w;->c(I)V

    goto :goto_1

    :cond_5
    move v0, v10

    .line 86
    goto :goto_3

    .line 92
    :cond_6
    :try_start_1
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 93
    invoke-virtual {v3}, Lcom/keniu/security/f/ab;->b()Ljava/lang/String;

    move-result-object v6

    .line 94
    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/keniu/security/f/w;->l()Z

    move-result v0

    if-nez v0, :cond_11

    .line 95
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    invoke-virtual {v3, v0}, Lcom/keniu/security/f/ab;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 97
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 101
    if-eqz v1, :cond_7

    .line 102
    iget-object v7, p0, Lcom/keniu/security/f/w;->A:Lcom/keniu/security/f/h;

    invoke-static {v7, v0, v1}, Lcom/keniu/security/f/w;->a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 105
    iget-object v1, p0, Lcom/keniu/security/f/w;->B:Lcom/keniu/security/f/h;

    invoke-virtual {v3, v0}, Lcom/keniu/security/f/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v0, v7}, Lcom/keniu/security/f/z;->a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    iget-object v7, p0, Lcom/keniu/security/f/w;->B:Lcom/keniu/security/f/h;

    invoke-virtual {v2, v7, v1}, Lcom/keniu/security/f/aa;->a(Lcom/keniu/security/f/h;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/keniu/security/f/w;->C:Lcom/keniu/security/f/y;

    iput-object v0, v1, Lcom/keniu/security/f/y;->a:Ljava/lang/String;

    .line 113
    iget-object v1, p0, Lcom/keniu/security/f/w;->C:Lcom/keniu/security/f/y;

    iget v7, v2, Lcom/keniu/security/f/aa;->b:I

    iput v7, v1, Lcom/keniu/security/f/y;->b:I

    .line 114
    iget-object v1, p0, Lcom/keniu/security/f/w;->C:Lcom/keniu/security/f/y;

    const/4 v7, 0x0

    iput v7, v1, Lcom/keniu/security/f/y;->c:I

    .line 115
    iget-object v1, p0, Lcom/keniu/security/f/w;->C:Lcom/keniu/security/f/y;

    invoke-virtual {v3, v0}, Lcom/keniu/security/f/ab;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/keniu/security/f/y;->d:Ljava/lang/String;

    .line 117
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/keniu/security/f/w;->d(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 121
    :try_start_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {v3, v0}, Lcom/keniu/security/f/ab;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 125
    :try_start_3
    new-instance v7, Lcom/keniu/security/f/x;

    invoke-direct {v7, p0, v1}, Lcom/keniu/security/f/x;-><init>(Lcom/keniu/security/f/w;Ljava/io/FileOutputStream;)V

    .line 143
    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Lcom/keniu/security/f/w;->d(I)V

    .line 145
    invoke-static {v6, v2, v7}, Lcom/keniu/security/f/w;->a(Ljava/lang/String;Lcom/keniu/security/f/aa;Lcom/keniu/security/f/af;)I

    move-result v7

    .line 146
    if-eqz v7, :cond_8

    .line 147
    invoke-virtual {p0, v7}, Lcom/keniu/security/f/w;->c(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 151
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 156
    invoke-virtual {p0}, Lcom/keniu/security/f/w;->j()I

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    new-instance v1, Ljava/io/File;

    invoke-virtual {v3, v0}, Lcom/keniu/security/f/ab;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    .line 151
    :cond_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 156
    invoke-virtual {p0}, Lcom/keniu/security/f/w;->j()I

    move-result v1

    if-eqz v1, :cond_9

    .line 157
    new-instance v1, Ljava/io/File;

    invoke-virtual {v3, v0}, Lcom/keniu/security/f/ab;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 160
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 165
    :cond_9
    invoke-virtual {v3, v0}, Lcom/keniu/security/f/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0}, Lcom/keniu/security/f/ab;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v7, v2, Lcom/keniu/security/f/aa;->f:Z

    if-eqz v7, :cond_a

    iget v7, v2, Lcom/keniu/security/f/aa;->e:I

    if-nez v7, :cond_13

    iget-object v7, v2, Lcom/keniu/security/f/aa;->d:Ljava/lang/String;

    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".unz"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v7}, Lcom/keniu/security/f/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ".unz"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_a
    iget v7, v2, Lcom/keniu/security/f/aa;->e:I

    if-ne v7, v11, :cond_f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".pat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/keniu/security/f/aa;->d:Ljava/lang/String;

    invoke-static {v1, v0, v7, v8}, Lcom/keniu/security/f/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_12

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ".pat"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    invoke-static {v0, v1}, Lcom/keniu/security/f/f;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    move v13, v1

    move-object v1, v0

    move v0, v13

    :goto_6
    if-nez v0, :cond_c

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_c
    if-nez v0, :cond_10

    .line 166
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/keniu/security/f/w;->c(I)V

    goto/16 :goto_1

    .line 151
    :catchall_0
    move-exception v2

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    :goto_7
    if-eqz v2, :cond_d

    .line 152
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 156
    :cond_d
    invoke-virtual {p0}, Lcom/keniu/security/f/w;->j()I

    move-result v2

    if-eqz v2, :cond_e

    .line 157
    new-instance v2, Ljava/io/File;

    invoke-virtual {v3, v0}, Lcom/keniu/security/f/ab;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 160
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 162
    :cond_e
    throw v1

    .line 165
    :cond_f
    iget v7, v2, Lcom/keniu/security/f/aa;->e:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_b

    invoke-static {v0, v1}, Lcom/keniu/security/f/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    move-object v1, v0

    move v0, v11

    goto :goto_6

    .line 171
    :cond_10
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/keniu/security/f/w;->d(I)V

    goto/16 :goto_4

    .line 175
    :cond_11
    iget-object v0, p0, Lcom/keniu/security/f/w;->A:Lcom/keniu/security/f/h;

    const-string v1, "version"

    const-string v2, "data"

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {v3, v0}, Lcom/keniu/security/f/ab;->g(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 151
    :catchall_1
    move-exception v1

    move-object v2, v12

    goto :goto_7

    :cond_12
    move-object v1, v0

    move v0, v10

    goto :goto_6

    :cond_13
    move-object v7, v12

    goto/16 :goto_5
.end method

.method private c()Z
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/keniu/security/f/w;->A:Lcom/keniu/security/f/h;

    if-eqz v0, :cond_0

    .line 187
    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->n()Ljava/lang/String;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lcom/keniu/security/f/w;->A:Lcom/keniu/security/f/h;

    const-string v2, "data"

    invoke-static {v1, v2, v0}, Lcom/keniu/security/f/w;->a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/keniu/security/f/y;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/keniu/security/f/w;->C:Lcom/keniu/security/f/y;

    return-object v0
.end method

.method public final a(Lcom/keniu/security/f/h;Lcom/keniu/security/f/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/keniu/security/f/w;->A:Lcom/keniu/security/f/h;

    .line 35
    iput-object p2, p0, Lcom/keniu/security/f/w;->B:Lcom/keniu/security/f/h;

    .line 36
    return-void
.end method

.method public final run()V
    .locals 15

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 40
    invoke-virtual {p0, v10}, Lcom/keniu/security/f/w;->c(I)V

    .line 41
    invoke-virtual {p0, v12}, Lcom/keniu/security/f/w;->d(I)V

    .line 42
    invoke-virtual {p0}, Lcom/keniu/security/f/w;->l()Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/keniu/security/f/w;->A:Lcom/keniu/security/f/h;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/f/ab;->n()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/f/w;->A:Lcom/keniu/security/f/h;

    const-string v2, "data"

    invoke-static {v1, v2, v0}, Lcom/keniu/security/f/w;->a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v11

    :goto_0
    if-nez v0, :cond_2

    .line 45
    :cond_0
    :goto_1
    invoke-virtual {p0, v13}, Lcom/keniu/security/f/w;->d(I)V

    .line 46
    return-void

    :cond_1
    move v0, v10

    .line 43
    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v2, Lcom/keniu/security/f/aa;

    invoke-direct {v2}, Lcom/keniu/security/f/aa;-><init>()V

    invoke-static {}, Lcom/keniu/security/f/ab;->a()Lcom/keniu/security/f/ab;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/keniu/security/f/w;->A:Lcom/keniu/security/f/h;

    const-string v1, "version"

    invoke-virtual {v0, v1}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v6, v10

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/keniu/security/f/ab;->a(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v3, v0}, Lcom/keniu/security/f/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/keniu/security/f/w;->A:Lcom/keniu/security/f/h;

    invoke-static {v8, v0, v7}, Lcom/keniu/security/f/w;->a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, p0, Lcom/keniu/security/f/w;->B:Lcom/keniu/security/f/h;

    invoke-virtual {v3, v0}, Lcom/keniu/security/f/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v0, v8}, Lcom/keniu/security/f/z;->a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/keniu/security/f/w;->B:Lcom/keniu/security/f/h;

    invoke-virtual {v2, v7, v0}, Lcom/keniu/security/f/aa;->a(Lcom/keniu/security/f/h;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/keniu/security/f/aa;->b()I

    move-result v0

    add-int/2addr v0, v6

    move v6, v0

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/keniu/security/f/f;->g()J

    move-result-wide v7

    int-to-long v5, v6

    cmp-long v0, v7, v5

    if-ltz v0, :cond_5

    move v0, v11

    :goto_3
    if-nez v0, :cond_6

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/keniu/security/f/w;->c(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {p0, v12}, Lcom/keniu/security/f/w;->c(I)V

    goto :goto_1

    :cond_5
    move v0, v10

    goto :goto_3

    :cond_6
    :try_start_2
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    invoke-virtual {v3}, Lcom/keniu/security/f/ab;->b()Ljava/lang/String;

    move-result-object v6

    :cond_7
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/keniu/security/f/w;->l()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/keniu/security/f/ab;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v7, p0, Lcom/keniu/security/f/w;->A:Lcom/keniu/security/f/h;

    invoke-static {v7, v0, v1}, Lcom/keniu/security/f/w;->a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/keniu/security/f/w;->B:Lcom/keniu/security/f/h;

    invoke-virtual {v3, v0}, Lcom/keniu/security/f/ab;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v0, v7}, Lcom/keniu/security/f/z;->a(Lcom/keniu/security/f/h;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/keniu/security/f/w;->B:Lcom/keniu/security/f/h;

    invoke-virtual {v2, v7, v1}, Lcom/keniu/security/f/aa;->a(Lcom/keniu/security/f/h;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keniu/security/f/w;->C:Lcom/keniu/security/f/y;

    iput-object v0, v1, Lcom/keniu/security/f/y;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/keniu/security/f/w;->C:Lcom/keniu/security/f/y;

    iget v7, v2, Lcom/keniu/security/f/aa;->b:I

    iput v7, v1, Lcom/keniu/security/f/y;->b:I

    iget-object v1, p0, Lcom/keniu/security/f/w;->C:Lcom/keniu/security/f/y;

    const/4 v7, 0x0

    iput v7, v1, Lcom/keniu/security/f/y;->c:I

    iget-object v1, p0, Lcom/keniu/security/f/w;->C:Lcom/keniu/security/f/y;

    invoke-virtual {v3, v0}, Lcom/keniu/security/f/ab;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/keniu/security/f/y;->d:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/keniu/security/f/w;->d(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v1, 0x0

    :try_start_3
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-virtual {v3, v0}, Lcom/keniu/security/f/ab;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    new-instance v1, Lcom/keniu/security/f/x;

    invoke-direct {v1, p0, v7}, Lcom/keniu/security/f/x;-><init>(Lcom/keniu/security/f/w;Ljava/io/FileOutputStream;)V

    const/4 v8, 0x5

    invoke-virtual {p0, v8}, Lcom/keniu/security/f/w;->d(I)V

    invoke-static {v6, v2, v1}, Lcom/keniu/security/f/w;->a(Ljava/lang/String;Lcom/keniu/security/f/aa;Lcom/keniu/security/f/af;)I

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0, v1}, Lcom/keniu/security/f/w;->c(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p0}, Lcom/keniu/security/f/w;->j()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v3, v0}, Lcom/keniu/security/f/ab;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {p0}, Lcom/keniu/security/f/w;->j()I

    move-result v1

    if-eqz v1, :cond_9

    new-instance v1, Ljava/io/File;

    invoke-virtual {v3, v0}, Lcom/keniu/security/f/ab;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_9
    invoke-virtual {v3, v0}, Lcom/keniu/security/f/ab;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0}, Lcom/keniu/security/f/ab;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v7, v2, Lcom/keniu/security/f/aa;->f:Z

    if-eqz v7, :cond_b

    const/4 v7, 0x0

    iget v8, v2, Lcom/keniu/security/f/aa;->e:I

    if-nez v8, :cond_a

    iget-object v7, v2, Lcom/keniu/security/f/aa;->d:Ljava/lang/String;

    :cond_a
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".unz"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v7}, Lcom/keniu/security/f/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ".unz"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_b
    iget v7, v2, Lcom/keniu/security/f/aa;->e:I

    if-ne v7, v11, :cond_10

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".pat"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v2, Lcom/keniu/security/f/aa;->d:Ljava/lang/String;

    invoke-static {v1, v0, v7, v8}, Lcom/keniu/security/f/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_13

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ".pat"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c
    invoke-static {v0, v1}, Lcom/keniu/security/f/f;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    move v14, v1

    move-object v1, v0

    move v0, v14

    :goto_5
    if-nez v0, :cond_d

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    :cond_d
    if-nez v0, :cond_11

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/keniu/security/f/w;->c(I)V

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v7

    :goto_6
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_e
    invoke-virtual {p0}, Lcom/keniu/security/f/w;->j()I

    move-result v2

    if-eqz v2, :cond_f

    new-instance v2, Ljava/io/File;

    invoke-virtual {v3, v0}, Lcom/keniu/security/f/ab;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_f
    throw v1

    :cond_10
    iget v7, v2, Lcom/keniu/security/f/aa;->e:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_c

    invoke-static {v0, v1}, Lcom/keniu/security/f/l;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    move-object v1, v0

    move v0, v11

    goto :goto_5

    :cond_11
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/keniu/security/f/w;->d(I)V

    goto/16 :goto_4

    :cond_12
    iget-object v0, p0, Lcom/keniu/security/f/w;->A:Lcom/keniu/security/f/h;

    const-string v1, "version"

    const-string v2, "data"

    invoke-virtual {v0, v1, v2}, Lcom/keniu/security/f/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/keniu/security/f/ab;->g(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    :catchall_1
    move-exception v2

    move-object v14, v2

    move-object v2, v1

    move-object v1, v14

    goto :goto_6

    :cond_13
    move-object v1, v0

    move v0, v10

    goto :goto_5
.end method

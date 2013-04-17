.class public Lcom/tencent/feedback/c/a;
.super Ljava/lang/Object;
.source "RecordDAO.java"

# interfaces
.implements Lcom/tencent/feedback/c/e;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field private c:I

.field private d:J

.field private e:I

.field private f:Ljava/util/List;

.field private g:Ljava/lang/Runnable;

.field private h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/feedback/c/a;->b:Z

    .line 24
    new-instance v0, Lcom/tencent/feedback/c/b;

    invoke-direct {v0, p0}, Lcom/tencent/feedback/c/b;-><init>(Lcom/tencent/feedback/c/a;)V

    iput-object v0, p0, Lcom/tencent/feedback/c/a;->g:Ljava/lang/Runnable;

    .line 35
    new-instance v0, Lcom/tencent/feedback/c/c;

    invoke-direct {v0, p0}, Lcom/tencent/feedback/c/c;-><init>(Lcom/tencent/feedback/c/a;)V

    iput-object v0, p0, Lcom/tencent/feedback/c/a;->h:Ljava/lang/Runnable;

    .line 47
    iput-object p1, p0, Lcom/tencent/feedback/c/a;->a:Landroid/content/Context;

    .line 48
    invoke-static {}, Lcom/tencent/feedback/common/f;->b()Lcom/tencent/feedback/common/a;

    move-result-object v0

    iget v0, v0, Lcom/tencent/feedback/common/a;->d:I

    iput v0, p0, Lcom/tencent/feedback/c/a;->c:I

    .line 49
    invoke-static {}, Lcom/tencent/feedback/common/f;->b()Lcom/tencent/feedback/common/a;

    move-result-object v0

    iget-wide v0, v0, Lcom/tencent/feedback/common/a;->e:J

    iput-wide v0, p0, Lcom/tencent/feedback/c/a;->d:J

    .line 50
    invoke-static {}, Lcom/tencent/feedback/common/f;->b()Lcom/tencent/feedback/common/a;

    move-result-object v0

    iget v0, v0, Lcom/tencent/feedback/common/a;->a:I

    iput v0, p0, Lcom/tencent/feedback/c/a;->e:I

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/tencent/feedback/c/a;->c:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/feedback/c/a;->f:Ljava/util/List;

    .line 52
    invoke-static {}, Lcom/tencent/feedback/common/c;->a()Lcom/tencent/feedback/common/c;

    move-result-object v0

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/tencent/feedback/c/a;->g:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/tencent/feedback/c/a;->d:J

    iget-wide v5, p0, Lcom/tencent/feedback/c/a;->d:J

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/feedback/common/c;->a(ILjava/lang/Runnable;JJ)V

    .line 53
    return-void
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;JJ)I
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 290
    const-string v0, "RecordDAO.deleteRecords() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 294
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 304
    const-wide/16 v2, -0x1

    move-object v0, p0

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/tencent/feedback/common/a/b;->a(Landroid/content/Context;[IJJ)I

    move-result v0

    return v0

    .line 294
    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;J)Ljava/util/List;
    .locals 14
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    const-string v0, "RecordDAO.queryRecentRecord() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 183
    if-nez p0, :cond_0

    .line 185
    const-string v0, "queryRecentRecord() have null args!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x0

    .line 279
    :goto_0
    return-object v0

    .line 191
    :cond_0
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    .line 201
    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const-wide/16 v10, -0x1

    const-wide/16 v12, -0x1

    move-object v0, p0

    move-wide/from16 v4, p2

    invoke-static/range {v0 .. v13}, Lcom/tencent/feedback/common/a/b;->a(Landroid/content/Context;[IIIJILjava/lang/String;IIJJ)Ljava/util/List;

    move-result-object v3

    .line 228
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 229
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 231
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 233
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 235
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 238
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/common/a/a;

    .line 241
    :try_start_0
    invoke-virtual {v0}, Lcom/tencent/feedback/common/a/a;->e()[B

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/g;->a([B)Ljava/lang/Object;

    move-result-object v1

    .line 243
    if-eqz v1, :cond_3

    const-class v5, Lcom/tencent/feedback/c/i;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 245
    const-class v5, Lcom/tencent/feedback/c/i;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/feedback/c/i;

    .line 246
    invoke-virtual {v0}, Lcom/tencent/feedback/common/a/a;->a()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Lcom/tencent/feedback/c/i;->a(J)V

    .line 247
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 250
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 254
    :catch_0
    move-exception v0

    .line 256
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 257
    const-string v0, "query have error!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 262
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "there are error datas ,should be remove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 267
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/Long;

    .line 269
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 271
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/common/a/a;

    invoke-virtual {v0}, Lcom/tencent/feedback/common/a/a;->a()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v4, v1

    .line 269
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 274
    :cond_5
    invoke-static {p0, v4}, Lcom/tencent/feedback/common/a/b;->a(Landroid/content/Context;[Ljava/lang/Long;)I

    .line 277
    :cond_6
    const-string v0, "RecordDAO.queryRecentRecord() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    move-object v0, v2

    .line 279
    goto/16 :goto_0

    .line 191
    nop

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/feedback/c/i;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x0

    .line 50
    const-string v0, "RecordDAO.insert() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 52
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/feedback/c/i;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 54
    :cond_0
    const-string v0, "insert() have null args!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    move v0, v6

    .line 107
    :goto_0
    return v0

    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/feedback/c/i;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v1, v2

    .line 89
    :goto_1
    :try_start_0
    new-instance v0, Lcom/tencent/feedback/common/a/a;

    invoke-virtual {p1}, Lcom/tencent/feedback/c/i;->c()J

    move-result-wide v3

    invoke-static {p1}, Lcom/tencent/feedback/common/g;->a(Ljava/lang/Object;)[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/feedback/common/a/a;-><init>(IIJ[B)V

    .line 90
    invoke-static {p0, v0}, Lcom/tencent/feedback/common/a/b;->a(Landroid/content/Context;Lcom/tencent/feedback/common/a/a;)Z

    move-result v1

    .line 91
    if-eqz v1, :cond_2

    .line 94
    invoke-virtual {v0}, Lcom/tencent/feedback/common/a/a;->a()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Lcom/tencent/feedback/c/i;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_2
    const-string v0, "RecordDAO.insert() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    move v0, v1

    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {p1}, Lcom/tencent/feedback/c/i;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 71
    const/4 v1, 0x4

    move v2, v6

    .line 72
    goto :goto_1

    .line 75
    :cond_4
    invoke-virtual {p1}, Lcom/tencent/feedback/c/i;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 78
    const/4 v1, 0x5

    move v2, v6

    .line 79
    goto :goto_1

    .line 83
    :cond_5
    const-string v0, "bean\'s type is error!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    move v0, v6

    .line 84
    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 101
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    const-string v0, "insert error!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    const-string v0, "RecordDAO.insert() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "RecordDAO.insert() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 113
    const-string v0, "RecordDAO.insertList() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 115
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 117
    :cond_0
    const-string v0, "insertList() have null args!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    .line 174
    :goto_0
    return v7

    .line 121
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 123
    const-string v0, "list siez == 0 , return true!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 124
    const/4 v7, 0x1

    goto :goto_0

    .line 127
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move v6, v7

    .line 131
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_6

    .line 133
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/tencent/feedback/c/i;

    .line 135
    invoke-virtual {v5}, Lcom/tencent/feedback/c/i;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v8

    move v1, v8

    .line 164
    :goto_2
    :try_start_0
    new-instance v0, Lcom/tencent/feedback/common/a/a;

    invoke-virtual {v5}, Lcom/tencent/feedback/c/i;->c()J

    move-result-wide v3

    invoke-static {v5}, Lcom/tencent/feedback/common/g;->a(Ljava/lang/Object;)[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/feedback/common/a/a;-><init>(IIJ[B)V

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 142
    :cond_3
    invoke-virtual {v5}, Lcom/tencent/feedback/c/i;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    const/4 v1, 0x4

    move v2, v7

    .line 146
    goto :goto_2

    .line 149
    :cond_4
    invoke-virtual {v5}, Lcom/tencent/feedback/c/i;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 152
    const/4 v1, 0x5

    move v2, v7

    .line 153
    goto :goto_2

    .line 157
    :cond_5
    const-string v0, "bean\'s type is error!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 167
    :catch_0
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 174
    :cond_6
    invoke-static {p0, v9}, Lcom/tencent/feedback/common/a/b;->a(Landroid/content/Context;Ljava/util/List;)Z

    move-result v7

    goto :goto_0
.end method

.method private declared-synchronized c()Ljava/util/List;
    .locals 3

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    const-string v0, "commonprocess.getCommonList() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/tencent/feedback/c/a;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/feedback/c/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/tencent/feedback/c/a;->d()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 61
    :cond_0
    const/4 v0, 0x0

    .line 68
    :goto_0
    monitor-exit p0

    return-object v0

    .line 63
    :cond_1
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iget-object v1, p0, Lcom/tencent/feedback/c/a;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    iget-object v1, p0, Lcom/tencent/feedback/c/a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return list\'s item num:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 67
    const-string v1, "commonprocess.getCommonList() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized d()Z
    .locals 1

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/feedback/c/a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected final a()V
    .locals 8

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/tencent/feedback/c/a;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    const-string v0, "real time process has disable"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->warn(Ljava/lang/String;)V

    .line 137
    :goto_0
    return-void

    .line 118
    :cond_0
    const-string v0, "common process doSyncDB start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 121
    invoke-direct {p0}, Lcom/tencent/feedback/c/a;->c()Ljava/util/List;

    move-result-object v0

    .line 123
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 125
    const-string v1, "insertList"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 127
    iget-object v1, p0, Lcom/tencent/feedback/c/a;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tencent/feedback/c/a;->a(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 130
    if-eqz v0, :cond_1

    const-string v0, "queryUploadStrategy() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/feedback/c/a;->e:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/tencent/feedback/c/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/tencent/feedback/common/d;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current is wifi ,so half maxSize "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    move-wide v6, v0

    :goto_1
    iget-object v0, p0, Lcom/tencent/feedback/c/a;->a:Landroid/content/Context;

    const-string v1, "RecordDAO.countRecordNum() start"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    if-nez v0, :cond_2

    const-string v0, "countRecordNum() have null args!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_2
    int-to-long v0, v0

    cmp-long v0, v0, v6

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    :goto_3
    if-eqz v0, :cond_1

    .line 132
    const-string v0, "start max upload!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/tencent/feedback/c/a;->h:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 136
    :cond_1
    const-string v0, "common process doSyncDB end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 130
    :cond_2
    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const-wide/16 v2, -0x1

    const-wide v4, 0x7fffffffffffffffL

    invoke-static/range {v0 .. v5}, Lcom/tencent/feedback/common/a/b;->b(Landroid/content/Context;[IJJ)I

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    move-wide v6, v0

    goto :goto_1

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public final declared-synchronized a(Lcom/tencent/feedback/c/i;)V
    .locals 7
    .parameter

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    const-string v0, "CommonProcess.processUA() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/tencent/feedback/c/a;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/tencent/feedback/c/a;->b:Z

    if-nez v0, :cond_1

    .line 77
    :cond_0
    const-string v0, "context == null || bean == null return"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :goto_0
    monitor-exit p0

    return-void

    .line 81
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/tencent/feedback/c/a;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 83
    const-string v0, "enable false! return"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 87
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/tencent/feedback/c/a;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 88
    iget v1, p0, Lcom/tencent/feedback/c/a;->c:I

    if-lt v0, v1, :cond_3

    .line 90
    const-string v0, "buffer over max num drop it!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_3
    const-string v1, "add to buffer"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/tencent/feedback/c/a;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v0, v0, 0x1

    .line 97
    iget v1, p0, Lcom/tencent/feedback/c/a;->c:I

    if-lt v0, v1, :cond_4

    .line 99
    const-string v0, "buffer reach max num should sync to db"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/tencent/feedback/common/c;->a()Lcom/tencent/feedback/common/c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/feedback/c/a;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/Runnable;)V

    .line 103
    invoke-static {}, Lcom/tencent/feedback/common/c;->a()Lcom/tencent/feedback/common/c;

    move-result-object v0

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/tencent/feedback/c/a;->g:Ljava/lang/Runnable;

    iget-wide v3, p0, Lcom/tencent/feedback/c/a;->d:J

    iget-wide v5, p0, Lcom/tencent/feedback/c/a;->d:J

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/feedback/common/c;->a(ILjava/lang/Runnable;JJ)V

    .line 106
    :cond_4
    const-string v0, "CommonProcess.processUA() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 169
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/feedback/c/a;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 3

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    const-string v0, "common process close start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/feedback/c/a;->b:Z

    .line 177
    invoke-static {}, Lcom/tencent/feedback/common/c;->a()Lcom/tencent/feedback/common/c;

    move-result-object v0

    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/feedback/common/c;->a(IZ)V

    .line 178
    invoke-virtual {p0}, Lcom/tencent/feedback/c/a;->a()V

    .line 179
    const-string v0, "common process close end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

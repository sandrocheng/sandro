.class public Lcom/tencent/feedback/common/e;
.super Ljava/lang/Object;
.source "ProGuard"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public static a(Landroid/content/Context;JJ)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 143
    const-string v0, "EUPDAO.deleteEup() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 145
    if-nez p0, :cond_0

    .line 146
    const-string v0, "deleteEup() context is null arg"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 147
    const/4 v0, -0x1

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const-wide/16 v2, -0x1

    move-object v0, p0

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/tencent/feedback/common/a/b;->a(Landroid/content/Context;[IJJ)I

    move-result v0

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static a(Landroid/content/Context;ILjava/lang/String;I)Ljava/util/List;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 59
    const-string v0, "EUPDAO.queryEupRecent() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 61
    if-nez p0, :cond_1

    .line 62
    const-string v0, "queryEupRecent() context can\'t be null"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V

    .line 125
    :cond_0
    :goto_0
    return-object v1

    .line 66
    :cond_1
    const-string v0, "asc"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v3, v4

    .line 69
    :goto_1
    if-ne p3, v5, :cond_4

    .line 70
    new-array v0, v4, [I

    aput v5, v0, v2

    .line 79
    :goto_2
    const/4 v4, -0x1

    invoke-static {p0, v0, v4, v3, p1}, Lcom/tencent/feedback/common/a/b;->a(Landroid/content/Context;[IIII)Ljava/util/List;

    move-result-object v4

    .line 81
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 84
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 88
    :cond_2
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 90
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/tencent/feedback/common/a/a;

    .line 92
    :try_start_0
    invoke-virtual {v1}, Lcom/tencent/feedback/common/a/a;->e()[B

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/f;->a([B)Ljava/lang/Object;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_2

    const-class v6, Lcom/tencent/feedback/common/a/e;

    invoke-virtual {v6, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 95
    const-class v6, Lcom/tencent/feedback/common/a/e;

    invoke-virtual {v6, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/common/a/e;

    .line 96
    invoke-virtual {v1}, Lcom/tencent/feedback/common/a/a;->a()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/tencent/feedback/common/a/e;->d(J)V

    .line 97
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    const-string v0, "query have error!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move v3, v5

    .line 66
    goto :goto_1

    .line 71
    :cond_4
    if-ne p3, v4, :cond_5

    .line 72
    new-array v0, v4, [I

    aput v4, v0, v2

    goto :goto_2

    .line 73
    :cond_5
    if-gez p3, :cond_6

    .line 74
    new-array v0, v5, [I

    fill-array-data v0, :array_0

    goto :goto_2

    .line 76
    :cond_6
    const-string v0, "queryEupRecent() seletedRecordType unaccepted"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2

    .line 110
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "there are error datas ,should be remove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 114
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v5, v0, [Ljava/lang/Long;

    move v1, v2

    .line 116
    :goto_4
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    .line 117
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/common/a/a;

    invoke-virtual {v0}, Lcom/tencent/feedback/common/a/a;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v5, v1

    .line 116
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    .line 120
    :cond_8
    invoke-static {p0, v5}, Lcom/tencent/feedback/common/a/b;->a(Landroid/content/Context;[Ljava/lang/Long;)I

    .line 123
    :cond_9
    const-string v0, "EUPDAO.queryEupRecent() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    move-object v1, v3

    .line 125
    goto/16 :goto_0

    .line 74
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/feedback/common/a/e;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 25
    const-string v0, "EUPDAO.insertEUP() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    .line 27
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 28
    :cond_0
    const-string v0, "EUPDAO.insertEUP() have null args"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    move v0, v7

    .line 44
    :goto_0
    return v0

    .line 33
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/feedback/common/a/e;->l()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 34
    :goto_1
    new-instance v0, Lcom/tencent/feedback/common/a/a;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/tencent/feedback/common/a/e;->d()J

    move-result-wide v3

    invoke-static {p1}, Lcom/tencent/feedback/common/f;->a(Ljava/lang/Object;)[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/feedback/common/a/a;-><init>(IIJ[B)V

    .line 35
    if-eqz p0, :cond_2

    if-nez v0, :cond_4

    :cond_2
    const-string v1, "AnalyticsDAO.insert() have null args"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    move v1, v7

    :goto_2
    if-eqz v1, :cond_5

    .line 36
    invoke-virtual {v0}, Lcom/tencent/feedback/common/a/a;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/feedback/common/a/e;->d(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    const-string v0, "EUPDAO.insertEUP() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0

    :cond_3
    move v1, v6

    .line 33
    goto :goto_1

    .line 35
    :cond_4
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p0, v1}, Lcom/tencent/feedback/common/a/b;->a(Landroid/content/Context;Ljava/util/List;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_2

    .line 39
    :cond_5
    const-string v0, "EUPDAO.insertEUP() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    move v0, v7

    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    const-string v0, "insert fail!"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->b(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 44
    const-string v0, "EUPDAO.insertEUP() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    move v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "EUPDAO.insertEUP() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/c;->a(Ljava/lang/String;)V

    throw v0
.end method

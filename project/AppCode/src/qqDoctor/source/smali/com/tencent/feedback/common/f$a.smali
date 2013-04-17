.class public Lcom/tencent/feedback/common/f$a;
.super Ljava/lang/Object;
.source "EUPDAO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/feedback/common/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v1, 0xa

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v1, p0, Lcom/tencent/feedback/common/f$a;->a:I

    .line 22
    iput v1, p0, Lcom/tencent/feedback/common/f$a;->b:I

    .line 23
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/feedback/common/f$a;->c:I

    .line 24
    iput v1, p0, Lcom/tencent/feedback/common/f$a;->d:I

    .line 25
    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 6
    .parameter

    .prologue
    .line 135
    const-string v0, "EUPDAO.querySum() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 137
    if-nez p0, :cond_0

    .line 139
    const-string v0, "querySum() context is null arg"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->warn(Ljava/lang/String;)V

    .line 140
    const/4 v0, -0x1

    .line 143
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    const-wide/16 v2, -0x1

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/tencent/feedback/common/a/b;->b(Landroid/content/Context;[IJJ)I

    move-result v0

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static a(Landroid/content/Context;JJ)I
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 78
    const-string v0, "EUPDAO.deleteEup() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 80
    if-nez p0, :cond_0

    .line 82
    const-string v0, "deleteEup() context is null arg"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->warn(Ljava/lang/String;)V

    .line 83
    const/4 v0, -0x1

    .line 86
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

.method public static a(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;IIJJ)Ljava/util/List;
    .locals 16
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    const-string v2, "EUPDAO.queryEupRecent() start"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 171
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, p9, v2

    if-lez v2, :cond_0

    cmp-long v2, p7, p9

    if-gtz v2, :cond_1

    :cond_0
    if-lez p6, :cond_2

    move/from16 v0, p5

    move/from16 v1, p6

    if-le v0, v1, :cond_2

    .line 173
    :cond_1
    const-string v2, "context == null || limitNum == 0 || (timeEnd > 0 && timeStart > timeEnd) || (maxCount > 0 && miniCount > maxCount ,pls check"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->warn(Ljava/lang/String;)V

    .line 174
    const/4 v2, 0x0

    .line 250
    :goto_0
    return-object v2

    .line 177
    :cond_2
    const-string v2, "asc"

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v5, 0x1

    .line 179
    :goto_1
    const/4 v3, 0x0

    .line 180
    const/4 v2, 0x2

    move/from16 v0, p3

    if-ne v0, v2, :cond_5

    .line 182
    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v2, 0x0

    const/4 v4, 0x2

    aput v4, v3, v2

    .line 197
    :goto_2
    const/4 v4, -0x1

    const-wide/16 v6, -0x1

    move-object/from16 v2, p0

    move/from16 v8, p1

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-wide/from16 v12, p7

    move-wide/from16 v14, p9

    invoke-static/range {v2 .. v15}, Lcom/tencent/feedback/common/a/b;->a(Landroid/content/Context;[IIIJILjava/lang/String;IIJJ)Ljava/util/List;

    move-result-object v5

    .line 199
    if-eqz v5, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_8

    .line 200
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 177
    :cond_4
    const/4 v5, 0x2

    goto :goto_1

    .line 184
    :cond_5
    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_6

    .line 186
    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v2, 0x0

    const/4 v4, 0x1

    aput v4, v3, v2

    goto :goto_2

    .line 188
    :cond_6
    if-gez p3, :cond_7

    .line 190
    const/4 v2, 0x2

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    goto :goto_2

    .line 194
    :cond_7
    const-string v2, "queryEupRecent() seletedRecordType unaccepted"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->warn(Ljava/lang/String;)V

    goto :goto_2

    .line 202
    :cond_8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 204
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 206
    :cond_9
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 209
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/tencent/feedback/common/a/a;

    .line 212
    :try_start_0
    invoke-virtual {v3}, Lcom/tencent/feedback/common/a/a;->e()[B

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/common/g;->a([B)Ljava/lang/Object;

    move-result-object v2

    .line 214
    if-eqz v2, :cond_9

    const-class v7, Lcom/tencent/feedback/eup/k;

    invoke-virtual {v7, v2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 216
    const-class v7, Lcom/tencent/feedback/eup/k;

    invoke-virtual {v7, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/feedback/eup/k;

    .line 217
    invoke-virtual {v3}, Lcom/tencent/feedback/common/a/a;->a()J

    move-result-wide v7

    invoke-virtual {v2, v7, v8}, Lcom/tencent/feedback/eup/k;->d(J)V

    .line 218
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 225
    :catch_0
    move-exception v2

    .line 227
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 228
    const-string v2, "query have error!"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V

    goto :goto_3

    .line 233
    :cond_a
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "there are error datas ,should be remove "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 238
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    new-array v6, v2, [Ljava/lang/Long;

    .line 240
    const/4 v2, 0x0

    move v3, v2

    :goto_4
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_b

    .line 242
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/feedback/common/a/a;

    invoke-virtual {v2}, Lcom/tencent/feedback/common/a/a;->a()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v3

    .line 240
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    .line 245
    :cond_b
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/tencent/feedback/common/a/b;->a(Landroid/content/Context;[Ljava/lang/Long;)I

    .line 248
    :cond_c
    const-string v2, "EUPDAO.queryEupRecent() end"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    move-object v2, v4

    .line 250
    goto/16 :goto_0

    .line 190
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static a(Landroid/content/Context;Lcom/tencent/feedback/eup/k;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 29
    const-string v0, "EUPDAO.insertEUP() start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 31
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 33
    :cond_0
    const-string v0, "EUPDAO.insertEUP() have null args"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->warn(Ljava/lang/String;)V

    move v0, v7

    .line 57
    :goto_0
    return v0

    .line 39
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/feedback/eup/k;->l()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 41
    :goto_1
    new-instance v0, Lcom/tencent/feedback/common/a/a;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/tencent/feedback/eup/k;->d()J

    move-result-wide v3

    invoke-static {p1}, Lcom/tencent/feedback/common/g;->a(Ljava/lang/Object;)[B

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/feedback/common/a/a;-><init>(IIJ[B)V

    .line 42
    invoke-virtual {p1}, Lcom/tencent/feedback/eup/k;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/a/a;->b(Ljava/lang/String;)Lcom/tencent/feedback/common/a/a;

    .line 43
    invoke-virtual {p1}, Lcom/tencent/feedback/eup/k;->s()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/a/a;->c(I)Lcom/tencent/feedback/common/a/a;

    .line 44
    invoke-virtual {p1}, Lcom/tencent/feedback/eup/k;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/common/a/a;->a(Ljava/lang/String;)Lcom/tencent/feedback/common/a/a;

    .line 45
    invoke-static {p0, v0}, Lcom/tencent/feedback/common/a/b;->a(Landroid/content/Context;Lcom/tencent/feedback/common/a/a;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 47
    invoke-virtual {v0}, Lcom/tencent/feedback/common/a/a;->a()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/feedback/eup/k;->d(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    const-string v0, "EUPDAO.insertEUP() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0

    :cond_2
    move v1, v6

    .line 39
    goto :goto_1

    .line 50
    :cond_3
    const-string v0, "EUPDAO.insertEUP() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    move v0, v7

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    .line 55
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 56
    const-string v0, "insert fail!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    const-string v0, "EUPDAO.insertEUP() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    move v0, v7

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "EUPDAO.insertEUP() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;)Z
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 271
    const-string v1, "EUPDAO.insertOrUpdateEupList() start"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 273
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 275
    :cond_0
    const-string v1, "context == null ||| list == null || list.size() <= 0,pls check"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->warn(Ljava/lang/String;)V

    move v1, v8

    .line 304
    :goto_0
    return v1

    .line 281
    :cond_1
    :try_start_0
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 282
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/tencent/feedback/eup/k;

    move-object v7, v0

    .line 284
    invoke-virtual {v7}, Lcom/tencent/feedback/eup/k;->l()I

    move-result v1

    if-ne v1, v9, :cond_2

    move v2, v9

    .line 286
    :goto_2
    new-instance v1, Lcom/tencent/feedback/common/a/a;

    const/4 v3, 0x0

    invoke-virtual {v7}, Lcom/tencent/feedback/eup/k;->d()J

    move-result-wide v4

    invoke-static {v7}, Lcom/tencent/feedback/common/g;->a(Ljava/lang/Object;)[B

    move-result-object v6

    invoke-direct/range {v1 .. v6}, Lcom/tencent/feedback/common/a/a;-><init>(IIJ[B)V

    .line 287
    invoke-virtual {v7}, Lcom/tencent/feedback/eup/k;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/feedback/common/a/a;->b(Ljava/lang/String;)Lcom/tencent/feedback/common/a/a;

    .line 288
    invoke-virtual {v7}, Lcom/tencent/feedback/eup/k;->s()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/feedback/common/a/a;->c(I)Lcom/tencent/feedback/common/a/a;

    .line 289
    invoke-virtual {v7}, Lcom/tencent/feedback/eup/k;->q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/feedback/common/a/a;->a(Ljava/lang/String;)Lcom/tencent/feedback/common/a/a;

    .line 290
    invoke-virtual {v7}, Lcom/tencent/feedback/eup/k;->m()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/tencent/feedback/common/a/a;->a(J)Lcom/tencent/feedback/common/a/a;

    .line 291
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 296
    :catch_0
    move-exception v1

    .line 298
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 299
    const-string v1, "insert fail!"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 300
    const-string v1, "EUPDAO.insertOrUpdateEupList() end"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    move v1, v8

    goto :goto_0

    .line 284
    :cond_2
    const/4 v2, 0x1

    goto :goto_2

    .line 294
    :cond_3
    :try_start_2
    invoke-static {p0, v10}, Lcom/tencent/feedback/common/a/b;->b(Landroid/content/Context;Ljava/util/List;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .line 304
    const-string v2, "EUPDAO.insertOrUpdateEupList() end"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 300
    :catchall_0
    move-exception v1

    const-string v2, "EUPDAO.insertOrUpdateEupList() end"

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    throw v1
.end method

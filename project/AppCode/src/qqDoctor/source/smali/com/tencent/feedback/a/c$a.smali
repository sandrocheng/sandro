.class public final Lcom/tencent/feedback/a/c$a;
.super Lcom/tencent/feedback/a/c;
.source "CountProccessAbs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/feedback/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static c:J


# instance fields
.field private a:Ljava/util/Map;

.field private b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 80
    const-wide/32 v0, 0x927c0

    sput-wide v0, Lcom/tencent/feedback/a/c$a;->c:J

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Lcom/tencent/feedback/a/c;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/tencent/feedback/a/c$a;->a:Ljava/util/Map;

    .line 77
    iput-object v0, p0, Lcom/tencent/feedback/a/c$a;->b:Landroid/content/Context;

    .line 81
    iput-object p1, p0, Lcom/tencent/feedback/a/c$a;->b:Landroid/content/Context;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/feedback/a/c$a;->a:Ljava/util/Map;

    .line 88
    return-void
.end method

.method private declared-synchronized d()V
    .locals 4

    .prologue
    .line 204
    monitor-enter p0

    :try_start_0
    const-string v0, "loadCountBeanFromDB start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/tencent/feedback/a/c$a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/feedback/a/b;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_1

    .line 208
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/a/a;

    .line 210
    sget-boolean v2, Lcom/tencent/feedback/common/Constants;->IS_DEBUG:Z

    if-eqz v2, :cond_0

    .line 212
    invoke-virtual {v0}, Lcom/tencent/feedback/a/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 214
    :cond_0
    iget-object v2, p0, Lcom/tencent/feedback/a/c$a;->a:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/tencent/feedback/a/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 204
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 217
    :cond_1
    :try_start_1
    const-string v0, "loadCountBeanFromDB end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 218
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/tencent/feedback/a/a;
    .locals 2
    .parameter

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CountProcessImp.getAResult() start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    if-nez p1, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 148
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/feedback/a/c$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/a/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)Ljava/util/List;
    .locals 4
    .parameter

    .prologue
    .line 154
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CountProcessImp.listAllCount() start type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/tencent/feedback/a/c$a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-gtz v1, :cond_1

    .line 159
    :cond_0
    const/4 v0, 0x0

    .line 172
    :goto_0
    monitor-exit p0

    return-object v0

    .line 162
    :cond_1
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/a/a;

    .line 166
    const/16 v3, 0xb

    if-eq p1, v3, :cond_4

    const/16 v3, 0xc

    if-ne p1, v3, :cond_3

    invoke-virtual {v0}, Lcom/tencent/feedback/a/a;->g()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const/16 v3, 0xd

    if-ne p1, v3, :cond_2

    invoke-virtual {v0}, Lcom/tencent/feedback/a/a;->g()Z

    move-result v3

    if-nez v3, :cond_2

    .line 169
    :cond_4
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    move-object v0, v1

    .line 172
    goto :goto_0
.end method

.method public final declared-synchronized a()V
    .locals 7

    .prologue
    .line 178
    monitor-enter p0

    :try_start_0
    const-string v0, "count process star process"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 179
    invoke-direct {p0}, Lcom/tencent/feedback/a/c$a;->d()V

    .line 180
    invoke-static {}, Lcom/tencent/feedback/common/c;->a()Lcom/tencent/feedback/common/c;

    move-result-object v0

    const/16 v1, 0xa

    new-instance v2, Lcom/tencent/feedback/a/d;

    invoke-direct {v2, p0}, Lcom/tencent/feedback/a/d;-><init>(Lcom/tencent/feedback/a/c$a;)V

    sget-wide v3, Lcom/tencent/feedback/a/c$a;->c:J

    sget-wide v5, Lcom/tencent/feedback/a/c$a;->c:J

    invoke-virtual/range {v0 .. v6}, Lcom/tencent/feedback/common/c;->a(ILjava/lang/Runnable;JJ)V

    .line 189
    const-string v0, "count process start process end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Lcom/tencent/feedback/a/a;)V
    .locals 7
    .parameter

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    const-string v0, "CountProcessImp.update() start "

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 94
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/tencent/feedback/a/a;->a()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 97
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/tencent/feedback/common/Constants;->IS_DEBUG:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/feedback/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Lcom/tencent/feedback/a/a;->f()[J

    move-result-object v0

    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {p1}, Lcom/tencent/feedback/a/a;->f()[J

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    aget-wide v3, v1, v0

    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    :cond_2
    iget-object v0, p0, Lcom/tencent/feedback/a/c$a;->a:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/tencent/feedback/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_3

    .line 111
    const-string v0, "replace mapping"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 113
    :cond_3
    const-string v0, "CountProcessImp.update()() end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;[JZZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 234
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CountProcessImp.count() start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/tencent/feedback/a/c$a;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/tencent/feedback/a/c$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/feedback/a/a;

    .line 239
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 240
    if-nez v0, :cond_1

    .line 242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cout a new one!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 243
    new-instance v0, Lcom/tencent/feedback/a/a;

    invoke-direct {v0, p4, p1, p3}, Lcom/tencent/feedback/a/a;-><init>(ZLjava/lang/String;Z)V

    .line 244
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/a/a;->a(I)Lcom/tencent/feedback/a/a;

    .line 245
    invoke-virtual {v0, p2}, Lcom/tencent/feedback/a/a;->a([J)Lcom/tencent/feedback/a/a;

    .line 246
    invoke-virtual {v0, v2, v3}, Lcom/tencent/feedback/a/a;->b(J)Lcom/tencent/feedback/a/a;

    .line 247
    invoke-virtual {v0, v2, v3}, Lcom/tencent/feedback/a/a;->c(J)Lcom/tencent/feedback/a/a;

    .line 248
    iget-object v1, p0, Lcom/tencent/feedback/a/c$a;->a:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    sget-boolean v1, Lcom/tencent/feedback/common/Constants;->IS_DEBUG:Z

    if-eqz v1, :cond_0

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/tencent/feedback/a/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 257
    :cond_1
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update old count"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 258
    sget-boolean v1, Lcom/tencent/feedback/common/Constants;->IS_DEBUG:Z

    if-eqz v1, :cond_2

    .line 260
    invoke-virtual {v0}, Lcom/tencent/feedback/a/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 262
    :cond_2
    invoke-virtual {v0}, Lcom/tencent/feedback/a/a;->f()[J

    move-result-object v4

    .line 263
    if-nez v4, :cond_3

    if-nez p2, :cond_3

    .line 265
    const-string v1, "just update count times"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0}, Lcom/tencent/feedback/a/a;->e()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/a/a;->a(I)Lcom/tencent/feedback/a/a;

    .line 268
    invoke-virtual {v0, v2, v3}, Lcom/tencent/feedback/a/a;->c(J)Lcom/tencent/feedback/a/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 234
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 270
    :cond_3
    if-eqz v4, :cond_5

    if-eqz p2, :cond_5

    :try_start_2
    array-length v1, v4

    array-length v5, p2

    if-ne v1, v5, :cond_5

    .line 272
    const-string v1, "just update count values"

    invoke-static {v1}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 274
    const/4 v1, 0x0

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_4

    .line 276
    aget-wide v5, v4, v1

    aget-wide v7, p2, v1

    add-long/2addr v5, v7

    aput-wide v5, v4, v1

    .line 277
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, v4, v1

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 279
    :cond_4
    invoke-virtual {v0}, Lcom/tencent/feedback/a/a;->e()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/feedback/a/a;->a(I)Lcom/tencent/feedback/a/a;

    .line 280
    invoke-virtual {v0, v4}, Lcom/tencent/feedback/a/a;->a([J)Lcom/tencent/feedback/a/a;

    .line 281
    invoke-virtual {v0, v2, v3}, Lcom/tencent/feedback/a/a;->c(J)Lcom/tencent/feedback/a/a;

    goto/16 :goto_0

    .line 286
    :cond_5
    const-string v0, "count values style not same!!"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public final declared-synchronized b()V
    .locals 3

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    const-string v0, "count process stop star"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V

    .line 196
    invoke-static {}, Lcom/tencent/feedback/common/c;->a()Lcom/tencent/feedback/common/c;

    move-result-object v0

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/tencent/feedback/common/c;->a(IZ)V

    .line 197
    invoke-virtual {p0}, Lcom/tencent/feedback/a/c$a;->c()V

    .line 198
    const-string v0, "count process stop end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->info(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    monitor-exit p0

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized c()V
    .locals 3

    .prologue
    .line 222
    monitor-enter p0

    :try_start_0
    const-string v0, "syncCountBean start"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/tencent/feedback/a/c$a;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/tencent/feedback/a/c$a;->b:Landroid/content/Context;

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/tencent/feedback/a/c$a;->a(I)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/feedback/a/b;->a(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V

    .line 228
    :cond_0
    const-string v0, "syncCountBean end"

    invoke-static {v0}, Lcom/tencent/feedback/common/ELog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    monitor-exit p0

    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class final Lcom/avast/android/mobilesecurity/app/fileshield/p;
.super Ljava/lang/Thread;
.source "FileShieldService.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)V
    .locals 1
    .parameter

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    .line 1167
    const-string v0, "AMS-SS$DThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 1168
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->g(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 1376
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1377
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->g(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1378
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1379
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1380
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1388
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1382
    :cond_0
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1383
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1384
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1385
    new-instance v3, Lcom/avast/android/mobilesecurity/app/fileshield/m;

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-direct {v3, v4, v0}, Lcom/avast/android/mobilesecurity/app/fileshield/m;-><init>(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a(Lcom/avast/android/mobilesecurity/app/fileshield/m;)V

    .line 1386
    new-instance v3, Lcom/avast/android/mobilesecurity/app/fileshield/l;

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-direct {v3, v4, v0}, Lcom/avast/android/mobilesecurity/app/fileshield/l;-><init>(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v3, v0}, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a(Lcom/avast/android/mobilesecurity/app/fileshield/l;Z)V

    goto :goto_1

    .line 1388
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1389
    return-void
.end method

.method private a(Lcom/avast/android/mobilesecurity/app/fileshield/l;Z)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1213
    new-instance v3, Ljava/io/File;

    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/app/fileshield/l;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1217
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->c(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->ad()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1218
    const/4 v0, 0x1

    .line 1221
    :goto_0
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->c(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/t;->ae()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1222
    or-int/lit8 v0, v0, 0x8

    move v2, v0

    .line 1229
    :goto_1
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1289
    :cond_0
    return-void

    .line 1236
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->g(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 1237
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->g(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1238
    new-instance v0, Lcom/avast/android/mobilesecurity/app/fileshield/d;

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v5}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->i(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/app/fileshield/q;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6, v2}, Lcom/avast/android/mobilesecurity/app/fileshield/d;-><init>(Landroid/os/Handler;Ljava/lang/String;I)V

    .line 1241
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/d;->startWatching()V

    .line 1242
    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v5}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->g(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    :cond_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1247
    if-eqz p2, :cond_0

    .line 1251
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 1252
    if-eqz v3, :cond_0

    .line 1255
    :goto_2
    array-length v0, v3

    if-ge v1, v0, :cond_0

    .line 1256
    aget-object v0, v3, v1

    if-eqz v0, :cond_3

    aget-object v0, v3, v1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1257
    new-instance v0, Lcom/avast/android/mobilesecurity/app/fileshield/d;

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->i(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/app/fileshield/q;

    move-result-object v4

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5, v2}, Lcom/avast/android/mobilesecurity/app/fileshield/d;-><init>(Landroid/os/Handler;Ljava/lang/String;I)V

    .line 1264
    aget-object v4, v3, v1

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1255
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1245
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1267
    :cond_4
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/d;->startWatching()V

    .line 1269
    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->g(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 1270
    :try_start_2
    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v5}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->g(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/HashMap;

    move-result-object v5

    aget-object v6, v3, v1

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/fileshield/d;

    .line 1272
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1275
    if-nez v0, :cond_5

    .line 1281
    new-instance v0, Lcom/avast/android/mobilesecurity/app/fileshield/l;

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    aget-object v5, v3, v1

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/avast/android/mobilesecurity/app/fileshield/l;-><init>(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;Ljava/lang/String;)V

    .line 1283
    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->b(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1272
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 1285
    :cond_5
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/d;->stopWatching()V

    goto :goto_3

    :cond_6
    move v2, v0

    goto/16 :goto_1

    :cond_7
    move v0, v1

    goto/16 :goto_0
.end method

.method private a(Lcom/avast/android/mobilesecurity/app/fileshield/m;)V
    .locals 3
    .parameter

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->g(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 1300
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->g(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/app/fileshield/m;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/fileshield/d;

    .line 1302
    if-eqz v0, :cond_0

    .line 1303
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/d;->stopWatching()V

    .line 1309
    :cond_0
    monitor-exit v1

    .line 1310
    return-void

    .line 1309
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lcom/avast/android/mobilesecurity/app/fileshield/s;)V
    .locals 10
    .parameter

    .prologue
    .line 1323
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->g(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/HashMap;

    move-result-object v2

    monitor-enter v2

    .line 1324
    :try_start_0
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/app/fileshield/s;->a()Ljava/lang/String;

    move-result-object v3

    .line 1325
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/app/fileshield/s;->c()Ljava/lang/String;

    move-result-object v4

    .line 1331
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->g(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1333
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 1334
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    .line 1336
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1337
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1338
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1339
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->g(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/app/fileshield/d;

    .line 1340
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1341
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1342
    invoke-virtual {v1, v8}, Lcom/avast/android/mobilesecurity/app/fileshield/d;->a(Ljava/lang/String;)V

    .line 1343
    invoke-virtual {v6, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1366
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1348
    :cond_1
    :try_start_1
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1349
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1350
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1351
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->g(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1354
    :cond_2
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1355
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1356
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1357
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->g(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1360
    :cond_3
    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 1365
    invoke-static {}, Lcom/avast/android/mobilesecurity/app/fileshield/d;->a()V

    .line 1366
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1367
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1172
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 1175
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->b(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/fileshield/n;

    .line 1176
    sget-object v1, Lcom/avast/android/mobilesecurity/app/fileshield/i;->a:[I

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/n;->b()Lcom/avast/android/mobilesecurity/app/fileshield/o;

    move-result-object v2

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/app/fileshield/o;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1178
    :pswitch_0
    check-cast v0, Lcom/avast/android/mobilesecurity/app/fileshield/l;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a(Lcom/avast/android/mobilesecurity/app/fileshield/l;Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1191
    :catch_0
    move-exception v0

    .line 1192
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1197
    return-void

    .line 1181
    :pswitch_1
    :try_start_1
    check-cast v0, Lcom/avast/android/mobilesecurity/app/fileshield/s;

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a(Lcom/avast/android/mobilesecurity/app/fileshield/s;)V

    goto :goto_0

    .line 1184
    :pswitch_2
    check-cast v0, Lcom/avast/android/mobilesecurity/app/fileshield/m;

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a(Lcom/avast/android/mobilesecurity/app/fileshield/m;)V

    goto :goto_0

    .line 1187
    :pswitch_3
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/fileshield/p;->a()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1176
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

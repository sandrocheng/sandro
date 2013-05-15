.class public Lcom/avast/android/mobilesecurity/engine/i;
.super Ljava/lang/Object;
.source "EngineInterface.java"


# static fields
.field private static final a:Ljava/util/HashMap;

.field private static final b:Ljava/util/HashMap;

.field private static final c:Landroid/support/v4/d/c;

.field private static final d:Ljava/util/HashMap;

.field private static e:Lcom/avast/android/mobilesecurity/engine/al;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/i;->a:Ljava/util/HashMap;

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/i;->b:Ljava/util/HashMap;

    .line 171
    new-instance v0, Landroid/support/v4/d/c;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Landroid/support/v4/d/c;-><init>(I)V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/i;->c:Landroid/support/v4/d/c;

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/i;->d:Ljava/util/HashMap;

    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 1521
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/y;->b()I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;)Lcom/avast/android/mobilesecurity/engine/a;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1312
    .line 1313
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_4

    .line 1314
    :cond_0
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    .line 1315
    const/4 v0, 0x1

    move v1, v0

    .line 1317
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    if-nez p2, :cond_3

    .line 1319
    :cond_1
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/a;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/a;-><init>()V

    .line 1320
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/avast/android/mobilesecurity/engine/a;->a:Z

    .line 1364
    :cond_2
    :goto_1
    return-object v0

    .line 1323
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1324
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->c:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v3, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->d:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1328
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->b:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/a;->a()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1332
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/b;->a:Lcom/avast/android/mobilesecurity/engine/internal/vps/b;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/vps/b;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p2}, Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;->b()Lcom/avast/android/mobilesecurity/app/campaign/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/app/campaign/f;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1335
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/vps/b;->b:Lcom/avast/android/mobilesecurity/engine/internal/vps/b;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/vps/b;->a()S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v0

    invoke-virtual {p2}, Lcom/avast/android/mobilesecurity/app/campaign/CampaignEvent;->a()Lcom/avast/android/mobilesecurity/app/campaign/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/app/campaign/e;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    const-class v0, Lcom/avast/android/generic/ae;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 1340
    sget-object v4, Lcom/avast/android/mobilesecurity/engine/internal/vps/b;->c:Lcom/avast/android/mobilesecurity/engine/internal/vps/b;

    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/engine/internal/vps/b;->a()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->q()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1343
    sget-object v4, Lcom/avast/android/mobilesecurity/engine/internal/vps/b;->d:Lcom/avast/android/mobilesecurity/engine/internal/vps/b;

    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/engine/internal/vps/b;->a()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->r()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    sget-object v4, Lcom/avast/android/mobilesecurity/engine/internal/vps/b;->e:Lcom/avast/android/mobilesecurity/engine/internal/vps/b;

    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/engine/internal/vps/b;->a()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->p()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1349
    sget-object v4, Lcom/avast/android/mobilesecurity/engine/internal/vps/b;->f:Lcom/avast/android/mobilesecurity/engine/internal/vps/b;

    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/engine/internal/vps/b;->a()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1353
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/internal/x;->l:Lcom/avast/android/mobilesecurity/engine/internal/x;

    invoke-static {p0, v0, v3}, Lcom/avast/android/mobilesecurity/engine/internal/s;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/engine/internal/x;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/a;->a([B)Lcom/avast/android/mobilesecurity/engine/a;

    move-result-object v0

    .line 1357
    if-eqz v1, :cond_2

    .line 1358
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 1361
    :catch_0
    move-exception v0

    .line 1362
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/a;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/a;-><init>()V

    .line 1363
    iput-boolean v2, v0, Lcom/avast/android/mobilesecurity/engine/a;->a:Z

    goto/16 :goto_1

    :cond_4
    move v1, v2

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/io/File;Landroid/content/pm/PackageInfo;Lcom/avast/android/mobilesecurity/engine/s;Lcom/avast/android/mobilesecurity/engine/ab;Lcom/avast/android/mobilesecurity/engine/r;)Lcom/avast/android/mobilesecurity/engine/ac;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 868
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/avast/android/mobilesecurity/engine/internal/e;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/io/File;Landroid/content/pm/PackageInfo;Lcom/avast/android/mobilesecurity/engine/s;Lcom/avast/android/mobilesecurity/engine/ab;Lcom/avast/android/mobilesecurity/engine/r;)Lcom/avast/android/mobilesecurity/engine/ac;

    move-result-object v2

    .line 870
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ac;->a:Lcom/avast/android/mobilesecurity/engine/ac;

    invoke-virtual {v0, v2}, Lcom/avast/android/mobilesecurity/engine/ac;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    if-eqz p2, :cond_1

    .line 873
    iget-object v0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 875
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/avast/android/mobilesecurity/engine/d;->d:Lcom/avast/android/mobilesecurity/engine/d;

    invoke-static {p0, v1, v0, v3, v4}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/d;)V

    .line 878
    :cond_0
    return-object v2

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ah;Lcom/avast/android/mobilesecurity/engine/ab;)Lcom/avast/android/mobilesecurity/engine/ac;
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 838
    invoke-static {p0, p1, p2, p3}, Lcom/avast/android/mobilesecurity/engine/internal/e;->a(Landroid/content/Context;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ah;Lcom/avast/android/mobilesecurity/engine/ab;)Lcom/avast/android/mobilesecurity/engine/ac;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/engine/r;)Lcom/avast/android/mobilesecurity/engine/af;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 741
    invoke-static {p0, p1}, Lcom/avast/android/mobilesecurity/engine/internal/o;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/engine/r;)Lcom/avast/android/mobilesecurity/engine/af;

    move-result-object v0

    .line 744
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, v1, v0, v2}, Lcom/avast/android/mobilesecurity/engine/internal/c;->a(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/engine/af;Landroid/os/Bundle;)Z

    .line 746
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/avast/android/mobilesecurity/engine/internal/q;->a(Landroid/content/Context;Ljava/lang/Integer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    :goto_0
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ag;->b:Lcom/avast/android/mobilesecurity/engine/ag;

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/engine/af;->a:Lcom/avast/android/mobilesecurity/engine/ag;

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/engine/ag;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 750
    iget-object v1, v0, Lcom/avast/android/mobilesecurity/engine/af;->b:Lcom/avast/android/mobilesecurity/engine/al;

    sput-object v1, Lcom/avast/android/mobilesecurity/engine/i;->e:Lcom/avast/android/mobilesecurity/engine/al;

    .line 751
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/i;->a:Ljava/util/HashMap;

    monitor-enter v1

    .line 752
    :try_start_1
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/i;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 753
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 754
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/i;->b:Ljava/util/HashMap;

    monitor-enter v1

    .line 755
    :try_start_2
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/i;->b:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 756
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 757
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/i;->c:Landroid/support/v4/d/c;

    monitor-enter v1

    .line 758
    :try_start_3
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/i;->c:Landroid/support/v4/d/c;

    invoke-virtual {v2}, Landroid/support/v4/d/c;->a()V

    .line 759
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 760
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/i;->d:Ljava/util/HashMap;

    monitor-enter v1

    .line 761
    :try_start_4
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/i;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 762
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 765
    :cond_0
    return-object v0

    .line 753
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 756
    :catchall_1
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    .line 759
    :catchall_2
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v0

    .line 762
    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0

    .line 747
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Integer;)Lcom/avast/android/mobilesecurity/engine/al;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 783
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/i;->e:Lcom/avast/android/mobilesecurity/engine/al;

    if-nez v0, :cond_4

    .line 786
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_5

    .line 787
    :cond_0
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    .line 789
    const/4 v0, 0x1

    move v2, v0

    .line 791
    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 815
    :goto_1
    return-object v0

    .line 795
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 796
    sget-object v4, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->b:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/al;->a()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    sget-object v4, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->c:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v0, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    sget-object v4, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->d:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    sget-object v4, Lcom/avast/android/mobilesecurity/engine/internal/x;->h:Lcom/avast/android/mobilesecurity/engine/internal/x;

    invoke-static {p0, v4, v0}, Lcom/avast/android/mobilesecurity/engine/internal/s;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/engine/internal/x;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/al;->a([B)Ljava/util/List;

    move-result-object v0

    .line 806
    sput-object v1, Lcom/avast/android/mobilesecurity/engine/i;->e:Lcom/avast/android/mobilesecurity/engine/al;

    .line 807
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 808
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/al;

    sput-object v0, Lcom/avast/android/mobilesecurity/engine/i;->e:Lcom/avast/android/mobilesecurity/engine/al;

    .line 810
    :cond_3
    if-eqz v2, :cond_4

    .line 811
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;I)V

    .line 815
    :cond_4
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/i;->e:Lcom/avast/android/mobilesecurity/engine/al;

    goto :goto_1

    :cond_5
    move v2, v3

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/engine/p;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;I)Lcom/avast/android/mobilesecurity/engine/k;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1084
    new-instance v8, Lcom/avast/android/mobilesecurity/engine/k;

    invoke-direct {v8}, Lcom/avast/android/mobilesecurity/engine/k;-><init>()V

    .line 1085
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, v8, Lcom/avast/android/mobilesecurity/engine/k;->a:Ljava/util/List;

    .line 1087
    const/4 v1, 0x0

    .line 1088
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_f

    .line 1089
    :cond_0
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v2

    .line 1090
    const/4 v1, 0x1

    move v11, v1

    .line 1092
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_2

    .line 1093
    :cond_1
    new-instance v1, Lcom/avast/android/mobilesecurity/engine/l;

    invoke-direct {v1}, Lcom/avast/android/mobilesecurity/engine/l;-><init>()V

    .line 1094
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/o;->d:Lcom/avast/android/mobilesecurity/engine/o;

    iput-object v2, v1, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    .line 1096
    iget-object v2, v8, Lcom/avast/android/mobilesecurity/engine/k;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v8

    .line 1240
    :goto_1
    return-object v1

    .line 1102
    :cond_2
    and-int/lit8 v1, p7, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    move v10, v1

    .line 1103
    :goto_2
    and-int/lit8 v1, p7, 0x2

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    move v9, v1

    .line 1105
    :goto_3
    if-eqz v10, :cond_8

    .line 1106
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1107
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->b:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/l;->a()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->c:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v1, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->d:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/internal/vps/f;->b:Lcom/avast/android/mobilesecurity/engine/internal/vps/f;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/vps/f;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    if-eqz p2, :cond_6

    .line 1118
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/internal/vps/f;->a:Lcom/avast/android/mobilesecurity/engine/internal/vps/f;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/vps/f;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/avast/android/mobilesecurity/engine/p;->a()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    :goto_4
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/internal/vps/f;->c:Lcom/avast/android/mobilesecurity/engine/internal/vps/f;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/vps/f;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/internal/vps/f;->d:Lcom/avast/android/mobilesecurity/engine/internal/vps/f;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/vps/f;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/internal/vps/f;->e:Lcom/avast/android/mobilesecurity/engine/internal/vps/f;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/vps/f;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/internal/x;->i:Lcom/avast/android/mobilesecurity/engine/internal/x;

    invoke-static {p0, v3, v1}, Lcom/avast/android/mobilesecurity/engine/internal/s;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/engine/internal/x;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/engine/l;->a([B)Ljava/util/List;

    move-result-object v1

    iput-object v1, v8, Lcom/avast/android/mobilesecurity/engine/k;->a:Ljava/util/List;

    .line 1141
    iget-object v1, v8, Lcom/avast/android/mobilesecurity/engine/k;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_3

    .line 1142
    new-instance v1, Lcom/avast/android/mobilesecurity/engine/l;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/o;->a:Lcom/avast/android/mobilesecurity/engine/o;

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lcom/avast/android/mobilesecurity/engine/l;-><init>(Lcom/avast/android/mobilesecurity/engine/o;Ljava/lang/String;)V

    .line 1144
    iget-object v3, v8, Lcom/avast/android/mobilesecurity/engine/k;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1148
    :cond_3
    if-eqz p6, :cond_7

    .line 1149
    invoke-interface/range {p6 .. p6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1150
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1153
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v8, Lcom/avast/android/mobilesecurity/engine/k;->d:Ljava/util/Map;

    .line 1154
    :goto_5
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1155
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1156
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    .line 1157
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 1158
    iget-object v13, v8, Lcom/avast/android/mobilesecurity/engine/k;->d:Ljava/util/Map;

    const/4 v4, 0x0

    const-wide/16 v5, 0x30

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Object;Landroid/content/pm/PackageInfo;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v13, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1102
    :cond_4
    const/4 v1, 0x0

    move v10, v1

    goto/16 :goto_2

    .line 1103
    :cond_5
    const/4 v1, 0x0

    move v9, v1

    goto/16 :goto_3

    .line 1122
    :cond_6
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/internal/vps/f;->a:Lcom/avast/android/mobilesecurity/engine/internal/vps/f;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/vps/f;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 1169
    :cond_7
    if-eqz p5, :cond_8

    .line 1170
    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 1171
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 1174
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v8, Lcom/avast/android/mobilesecurity/engine/k;->c:Ljava/util/Map;

    .line 1175
    :goto_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1176
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1177
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    .line 1178
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1179
    iget-object v13, v8, Lcom/avast/android/mobilesecurity/engine/k;->c:Ljava/util/Map;

    const/4 v4, 0x0

    const-wide/16 v5, 0x30

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Object;Landroid/content/pm/PackageInfo;J)Ljava/util/List;

    move-result-object v1

    invoke-interface {v13, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1187
    :cond_8
    if-eqz v9, :cond_d

    .line 1190
    iget-object v1, v8, Lcom/avast/android/mobilesecurity/engine/k;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-ge v1, v3, :cond_9

    .line 1191
    if-eqz v10, :cond_b

    .line 1193
    new-instance v1, Lcom/avast/android/mobilesecurity/engine/l;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/o;->a:Lcom/avast/android/mobilesecurity/engine/o;

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lcom/avast/android/mobilesecurity/engine/l;-><init>(Lcom/avast/android/mobilesecurity/engine/o;Ljava/lang/String;)V

    .line 1195
    iget-object v3, v8, Lcom/avast/android/mobilesecurity/engine/k;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1204
    :cond_9
    :goto_7
    if-eqz p4, :cond_d

    .line 1205
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v8, Lcom/avast/android/mobilesecurity/engine/k;->b:Ljava/util/Map;

    .line 1208
    sget-object v1, Lcom/avast/android/mobilesecurity/e/h;->b:Ljava/util/regex/Pattern;

    .line 1209
    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 1210
    :cond_a
    :goto_8
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1211
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 1213
    const-string v1, "http://"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "https://"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 1215
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1219
    :goto_9
    iget-object v5, v8, Lcom/avast/android/mobilesecurity/engine/k;->b:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_a

    .line 1220
    invoke-static {p0, v2, v1}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1231
    iget-object v5, v8, Lcom/avast/android/mobilesecurity/engine/k;->b:Ljava/util/Map;

    invoke-interface {v5, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 1197
    :cond_b
    new-instance v1, Lcom/avast/android/mobilesecurity/engine/l;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/o;->g:Lcom/avast/android/mobilesecurity/engine/o;

    const-string v4, ""

    invoke-direct {v1, v3, v4}, Lcom/avast/android/mobilesecurity/engine/l;-><init>(Lcom/avast/android/mobilesecurity/engine/o;Ljava/lang/String;)V

    .line 1199
    iget-object v3, v8, Lcom/avast/android/mobilesecurity/engine/k;->a:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    move-object v1, v3

    .line 1217
    goto :goto_9

    .line 1237
    :cond_d
    if-eqz v11, :cond_e

    .line 1238
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;I)V

    :cond_e
    move-object v1, v8

    .line 1240
    goto/16 :goto_1

    :cond_f
    move v11, v1

    move-object v2, p1

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/Integer;
    .locals 2
    .parameter

    .prologue
    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 202
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->c:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/x;->b:Lcom/avast/android/mobilesecurity/engine/internal/x;

    invoke-static {p0, v1, v0}, Lcom/avast/android/mobilesecurity/engine/internal/s;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/engine/internal/x;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 206
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/i;->a([B)Ljava/lang/Integer;

    move-result-object v0

    .line 207
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_0

    .line 208
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/o;->a()V

    .line 211
    :cond_0
    return-object v0
.end method

.method private static a([B)Ljava/lang/Integer;
    .locals 5
    .parameter

    .prologue
    const/4 v4, -0x1

    .line 247
    const/4 v0, 0x0

    .line 248
    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v1, v2, v0}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 250
    const/4 v0, 0x4

    .line 251
    add-int/lit8 v1, v1, 0x4

    array-length v2, p0

    if-eq v1, v2, :cond_1

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid structure length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    :catch_0
    move-exception v0

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->f(Ljava/lang/String;)I

    .line 287
    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    move v1, v0

    .line 259
    :goto_1
    :try_start_1
    array-length v0, p0

    if-ge v1, v0, :cond_0

    .line 260
    const/4 v0, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v2, v1}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 262
    add-int/lit8 v1, v1, 0x4

    .line 263
    add-int v0, v1, v2

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    if-eq v0, v4, :cond_2

    .line 264
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parseContextId Invalid payload length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_2
    const/4 v0, 0x0

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v3, v1}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    .line 270
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a(S)Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_3

    .line 272
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/j;->a:[I

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 281
    :cond_3
    add-int v0, v1, v2

    move v1, v0

    goto :goto_1

    .line 274
    :pswitch_0
    const/4 v0, 0x0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    add-int/lit8 v1, v1, 0x2

    invoke-static {p0, v0, v2, v1}, Lcom/avast/android/generic/util/e;->a([BLjava/nio/ByteOrder;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/engine/h;)Ljava/util/List;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1387
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/i;->d:Ljava/util/HashMap;

    monitor-enter v2

    .line 1388
    :try_start_0
    sget-object v0, Lcom/avast/android/mobilesecurity/engine/i;->d:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/avast/android/mobilesecurity/engine/h;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1390
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1391
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1393
    monitor-exit v2

    move-object v0, v1

    .line 1436
    :goto_0
    return-object v0

    .line 1395
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1397
    const/4 v0, 0x0

    .line 1399
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_6

    .line 1400
    :cond_1
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    .line 1401
    const/4 v0, 0x1

    move v1, v0

    .line 1404
    :goto_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_3

    .line 1405
    :cond_2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    goto :goto_0

    .line 1395
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1409
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1410
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->c:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1412
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->d:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1414
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->b:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/e;->a()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1416
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/vps/e;->a:Lcom/avast/android/mobilesecurity/engine/internal/vps/e;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/engine/internal/vps/e;->a()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {p2}, Lcom/avast/android/mobilesecurity/engine/h;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/x;->m:Lcom/avast/android/mobilesecurity/engine/internal/x;

    invoke-static {p0, v2, v0}, Lcom/avast/android/mobilesecurity/engine/internal/s;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/engine/internal/x;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/e;->a([B)Ljava/util/List;

    move-result-object v0

    .line 1424
    if-eqz v1, :cond_4

    .line 1425
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;I)V

    .line 1428
    :cond_4
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/i;->d:Ljava/util/HashMap;

    monitor-enter v1

    .line 1429
    if-eqz v0, :cond_5

    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1430
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 1432
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/i;->d:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/avast/android/mobilesecurity/engine/h;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1434
    :cond_5
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_6
    move v1, v0

    goto/16 :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Object;Landroid/content/pm/PackageInfo;J)Ljava/util/List;
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 322
    const-wide/16 v1, 0x1

    and-long v1, v1, p4

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 323
    :cond_0
    const-wide/16 v1, 0x2

    and-long v1, v1, p4

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 324
    :cond_1
    const-wide/16 v1, 0x4

    and-long v1, v1, p4

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    move v2, v1

    .line 325
    :goto_0
    const-wide/16 v3, 0x8

    and-long v3, v3, p4

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    .line 326
    :cond_2
    const-wide/16 v3, 0x10

    and-long v3, v3, p4

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    .line 327
    :cond_3
    const-wide/16 v3, 0x20

    and-long v3, v3, p4

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    move v7, v1

    .line 328
    :goto_1
    const-wide/16 v3, 0x40

    and-long v3, v3, p4

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    move v6, v1

    .line 329
    :goto_2
    const-wide/16 v3, 0x80

    and-long v3, v3, p4

    const-wide/16 v8, 0x0

    cmp-long v1, v3, v8

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    move v3, v1

    .line 330
    :goto_3
    const-wide/16 v4, 0x100

    and-long v4, v4, p4

    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-eqz v1, :cond_4

    .line 338
    :cond_4
    if-eqz v2, :cond_c

    if-eqz p3, :cond_c

    .line 339
    move-object/from16 v0, p3

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 340
    sget-object v4, Lcom/avast/android/mobilesecurity/engine/i;->a:Ljava/util/HashMap;

    monitor-enter v4

    .line 341
    :try_start_0
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/i;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 343
    if-eqz v1, :cond_b

    .line 348
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 350
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 353
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 354
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/engine/s;

    .line 355
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/avast/android/mobilesecurity/engine/s;->e:Z

    .line 356
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 366
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 324
    :cond_5
    const/4 v1, 0x0

    move v2, v1

    goto :goto_0

    .line 327
    :cond_6
    const/4 v1, 0x0

    move v7, v1

    goto :goto_1

    .line 328
    :cond_7
    const/4 v1, 0x0

    move v6, v1

    goto :goto_2

    .line 329
    :cond_8
    const/4 v1, 0x0

    move v3, v1

    goto :goto_3

    .line 359
    :cond_9
    :try_start_1
    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->aH()Z

    move-result v1

    .line 362
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-static {p0, v2, v1, v3, v0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/util/List;ZLjava/io/File;Landroid/content/pm/PackageInfo;)V

    .line 364
    monitor-exit v4

    move-object v1, v2

    .line 618
    :cond_a
    :goto_5
    return-object v1

    .line 366
    :cond_b
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 369
    :cond_c
    const/4 v2, 0x0

    .line 370
    const/4 v1, 0x0

    .line 371
    const-class v4, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 372
    check-cast p2, Ljava/io/File;

    move-object/from16 v5, p2

    move-object/from16 p2, v1

    .line 384
    :goto_6
    if-eqz v5, :cond_10

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v8, 0x0

    cmp-long v1, v1, v8

    if-nez v1, :cond_10

    .line 387
    :cond_d
    new-instance v2, Lcom/avast/android/mobilesecurity/engine/s;

    invoke-direct {v2}, Lcom/avast/android/mobilesecurity/engine/s;-><init>()V

    .line 388
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/x;->j:Lcom/avast/android/mobilesecurity/engine/x;

    iput-object v1, v2, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    .line 389
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 390
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 373
    :cond_e
    const-class v1, [B

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 374
    check-cast p2, [B

    check-cast p2, [B

    move-object v5, v2

    goto :goto_6

    .line 376
    :cond_f
    new-instance v2, Lcom/avast/android/mobilesecurity/engine/s;

    invoke-direct {v2}, Lcom/avast/android/mobilesecurity/engine/s;-><init>()V

    .line 377
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/x;->a:Lcom/avast/android/mobilesecurity/engine/x;

    iput-object v1, v2, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    .line 378
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 379
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 394
    :cond_10
    if-eqz v3, :cond_13

    .line 395
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/i;->c:Landroid/support/v4/d/c;

    monitor-enter v3

    .line 396
    :try_start_2
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/i;->c:Landroid/support/v4/d/c;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/d/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 398
    if-eqz v1, :cond_12

    .line 404
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 406
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 409
    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 410
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/engine/s;

    .line 411
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/avast/android/mobilesecurity/engine/s;->e:Z

    .line 412
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 422
    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 415
    :cond_11
    :try_start_3
    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->aH()Z

    move-result v1

    .line 418
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-static {p0, v2, v1, v4, v0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/util/List;ZLjava/io/File;Landroid/content/pm/PackageInfo;)V

    .line 420
    monitor-exit v3

    move-object v1, v2

    goto/16 :goto_5

    .line 422
    :cond_12
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 426
    :cond_13
    const/4 v1, 0x0

    .line 427
    if-eqz p1, :cond_14

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_2b

    .line 428
    :cond_14
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    .line 429
    const/4 v1, 0x1

    move v4, v1

    .line 431
    :goto_8
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_16

    .line 432
    :cond_15
    new-instance v2, Lcom/avast/android/mobilesecurity/engine/s;

    invoke-direct {v2}, Lcom/avast/android/mobilesecurity/engine/s;-><init>()V

    .line 433
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/x;->g:Lcom/avast/android/mobilesecurity/engine/x;

    iput-object v1, v2, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    .line 435
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 436
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 440
    :cond_16
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 441
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->b:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/s;->a()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->c:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->d:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->a:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->a()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->d:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->a()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->e:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->a()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    if-eqz p3, :cond_1d

    .line 452
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->b:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->a()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    :goto_9
    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {p0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->aH()Z

    move-result v8

    .line 464
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->g:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->a()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const-class v1, Lcom/avast/android/generic/ae;

    invoke-static {p0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/generic/ae;

    .line 467
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->f:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->q()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->h:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->r()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->i:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v1}, Lcom/avast/android/generic/ae;->p()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/x;->f:Lcom/avast/android/mobilesecurity/engine/internal/x;

    invoke-static {p0, v1, v2}, Lcom/avast/android/mobilesecurity/engine/internal/s;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/engine/internal/x;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/engine/s;->a([B)Ljava/util/List;

    move-result-object v9

    .line 478
    if-eqz p3, :cond_24

    .line 479
    if-eqz v7, :cond_17

    if-nez v6, :cond_17

    .line 481
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/i;->a:Ljava/util/HashMap;

    monitor-enter v2

    .line 482
    :try_start_4
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/i;->a:Ljava/util/HashMap;

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 486
    :cond_17
    if-nez v7, :cond_18

    if-eqz v6, :cond_18

    .line 488
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/i;->b:Ljava/util/HashMap;

    monitor-enter v2

    .line 489
    :try_start_5
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/i;->b:Ljava/util/HashMap;

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 493
    :cond_18
    if-eqz v7, :cond_21

    if-eqz v6, :cond_21

    .line 494
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 495
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 498
    const/4 v2, 0x0

    .line 499
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_2a

    .line 500
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/engine/s;

    .line 501
    sget-object v7, Lcom/avast/android/mobilesecurity/engine/x;->j:Lcom/avast/android/mobilesecurity/engine/x;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    invoke-virtual {v7, v1}, Lcom/avast/android/mobilesecurity/engine/x;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 502
    const/4 v1, 0x1

    .line 505
    :goto_a
    if-nez v1, :cond_1e

    .line 506
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/h;->b:Lcom/avast/android/mobilesecurity/engine/h;

    invoke-static {p0, p1, v1}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/engine/h;)Ljava/util/List;

    move-result-object v7

    .line 508
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/h;->a:Lcom/avast/android/mobilesecurity/engine/h;

    invoke-static {p0, p1, v1}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/engine/h;)Ljava/util/List;

    move-result-object v10

    .line 510
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 512
    :cond_19
    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 513
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/engine/s;

    .line 514
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 516
    :cond_1a
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 517
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avast/android/mobilesecurity/engine/e;

    .line 518
    iget-object v13, v1, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    if-eqz v13, :cond_1a

    iget-object v13, v1, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/engine/e;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 523
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    :cond_1b
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 528
    :cond_1c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 529
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avast/android/mobilesecurity/engine/e;

    .line 530
    iget-object v13, v1, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    if-eqz v13, :cond_1c

    iget-object v13, v1, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/engine/e;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 535
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 459
    :cond_1d
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->b:Lcom/avast/android/mobilesecurity/engine/internal/vps/g;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/vps/g;->a()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 484
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    .line 491
    :catchall_3
    move-exception v1

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1

    .line 541
    :cond_1e
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 542
    new-instance v1, Lcom/avast/android/mobilesecurity/engine/s;

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/x;->j:Lcom/avast/android/mobilesecurity/engine/x;

    const/4 v7, 0x0

    invoke-direct {v1, v2, v7}, Lcom/avast/android/mobilesecurity/engine/s;-><init>(Lcom/avast/android/mobilesecurity/engine/x;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_1f
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 546
    new-instance v1, Lcom/avast/android/mobilesecurity/engine/s;

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/x;->j:Lcom/avast/android/mobilesecurity/engine/x;

    const/4 v7, 0x0

    invoke-direct {v1, v2, v7}, Lcom/avast/android/mobilesecurity/engine/s;-><init>(Lcom/avast/android/mobilesecurity/engine/x;Ljava/lang/String;)V

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_20
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/i;->a:Ljava/util/HashMap;

    monitor-enter v2

    .line 550
    :try_start_8
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/i;->a:Ljava/util/HashMap;

    move-object/from16 v0, p3

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 553
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/i;->b:Ljava/util/HashMap;

    monitor-enter v2

    .line 554
    :try_start_9
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/i;->b:Ljava/util/HashMap;

    move-object/from16 v0, p3

    iget-object v3, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 600
    :cond_21
    :goto_c
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1, v9}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 602
    move-object/from16 v0, p3

    invoke-static {p0, v1, v8, v5, v0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/util/List;ZLjava/io/File;Landroid/content/pm/PackageInfo;)V

    .line 607
    if-eqz v4, :cond_22

    .line 608
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v2}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;I)V

    .line 610
    :cond_22
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_a

    .line 613
    :cond_23
    new-instance v2, Lcom/avast/android/mobilesecurity/engine/s;

    invoke-direct {v2}, Lcom/avast/android/mobilesecurity/engine/s;-><init>()V

    .line 614
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/x;->j:Lcom/avast/android/mobilesecurity/engine/x;

    iput-object v3, v2, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    .line 615
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 616
    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 552
    :catchall_4
    move-exception v1

    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v1

    .line 556
    :catchall_5
    move-exception v1

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v1

    .line 559
    :cond_24
    if-eqz v5, :cond_21

    .line 561
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/h;->b:Lcom/avast/android/mobilesecurity/engine/h;

    invoke-static {p0, p1, v1}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/engine/h;)Ljava/util/List;

    move-result-object v6

    .line 563
    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7, v9}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 565
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 567
    :cond_25
    :goto_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 568
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/engine/s;

    .line 569
    const/4 v3, 0x0

    .line 570
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 573
    :cond_26
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 574
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/avast/android/mobilesecurity/engine/e;

    .line 575
    iget-object v12, v1, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    if-eqz v12, :cond_26

    iget-object v12, v1, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/engine/e;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 579
    const/4 v1, 0x1

    .line 583
    :goto_e
    if-nez v1, :cond_25

    .line 584
    invoke-interface {v10}, Ljava/util/Iterator;->remove()V

    goto :goto_d

    .line 589
    :cond_27
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 590
    new-instance v1, Lcom/avast/android/mobilesecurity/engine/s;

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/x;->j:Lcom/avast/android/mobilesecurity/engine/x;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/avast/android/mobilesecurity/engine/s;-><init>(Lcom/avast/android/mobilesecurity/engine/x;Ljava/lang/String;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    :cond_28
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/i;->c:Landroid/support/v4/d/c;

    monitor-enter v2

    .line 594
    :try_start_c
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/i;->c:Landroid/support/v4/d/c;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v7}, Landroid/support/v4/d/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    monitor-exit v2

    goto/16 :goto_c

    :catchall_6
    move-exception v1

    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v1

    :cond_29
    move v1, v3

    goto :goto_e

    :cond_2a
    move v1, v2

    goto/16 :goto_a

    :cond_2b
    move v4, v1

    goto/16 :goto_8
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 640
    .line 641
    if-nez p2, :cond_1

    .line 642
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 643
    new-instance v1, Lcom/avast/android/mobilesecurity/engine/ah;

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/ak;->d:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-direct {v1, v2}, Lcom/avast/android/mobilesecurity/engine/ah;-><init>(Lcom/avast/android/mobilesecurity/engine/ak;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    :cond_0
    :goto_0
    return-object v0

    .line 649
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_7

    .line 650
    :cond_2
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    .line 652
    const/4 v0, 0x1

    move v4, v0

    .line 655
    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_6

    .line 656
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 657
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->b:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/ah;->a()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->c:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->d:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/vps/i;->a:Lcom/avast/android/mobilesecurity/engine/internal/vps/i;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/engine/internal/vps/i;->a()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/x;->g:Lcom/avast/android/mobilesecurity/engine/internal/x;

    invoke-static {p0, v2, v0}, Lcom/avast/android/mobilesecurity/engine/internal/s;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/engine/internal/x;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/ah;->a([B)Ljava/util/List;

    move-result-object v3

    .line 669
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 670
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/ah;

    .line 672
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/j;->b:[I

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/ak;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    :cond_3
    move-object v0, v3

    .line 698
    :goto_2
    if-eqz v4, :cond_4

    .line 699
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;I)V

    .line 704
    :cond_4
    :goto_3
    if-nez v0, :cond_0

    .line 705
    invoke-static {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/q;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto/16 :goto_0

    .line 675
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/q;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 678
    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 679
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/ah;

    move-object v1, v0

    .line 681
    :cond_5
    if-eqz v1, :cond_3

    iget-object v0, v1, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    sget-object v5, Lcom/avast/android/mobilesecurity/engine/ak;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    if-eq v0, v5, :cond_3

    iget-object v0, v1, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ak;->d:Lcom/avast/android/mobilesecurity/engine/ak;

    if-eq v0, v1, :cond_3

    move-object v0, v2

    .line 684
    goto :goto_2

    .line 694
    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/avast/android/mobilesecurity/engine/internal/q;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v1

    goto :goto_3

    :cond_7
    move v4, v5

    goto/16 :goto_1

    .line 672
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 225
    if-gez p1, :cond_0

    .line 236
    :goto_0
    return-void

    .line 228
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 229
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->d:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->c:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget-object v1, Lcom/avast/android/mobilesecurity/engine/internal/x;->c:Lcom/avast/android/mobilesecurity/engine/internal/x;

    invoke-static {p0, v1, v0}, Lcom/avast/android/mobilesecurity/engine/internal/s;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/engine/internal/x;Ljava/util/Map;)Ljava/lang/Object;

    .line 234
    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/internal/o;->b()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ah;ZZ)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1032
    if-eqz p3, :cond_0

    iget-object v0, p3, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/avast/android/mobilesecurity/engine/ak;->f:Lcom/avast/android/mobilesecurity/engine/ak;

    iget-object v1, p3, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/engine/ak;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 1036
    :cond_1
    const/4 v0, 0x0

    .line 1037
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_3

    .line 1038
    :cond_2
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object v1

    .line 1039
    const/4 v0, 0x1

    move v6, v0

    .line 1041
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 1045
    invoke-static/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/engine/internal/q;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/ah;ZZ)V

    .line 1048
    if-eqz v6, :cond_0

    .line 1049
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    move v6, v0

    move-object v1, p1

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/avast/android/mobilesecurity/engine/d;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1265
    const/4 v0, 0x0

    .line 1266
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_1

    .line 1267
    :cond_0
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    .line 1268
    const/4 v0, 0x1

    .line 1270
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gez v1, :cond_3

    .line 1291
    :cond_2
    :goto_0
    return-void

    .line 1273
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1274
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->c:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->d:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;->a:Lcom/avast/android/mobilesecurity/engine/internal/vps/d;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;->a()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;->b:Lcom/avast/android/mobilesecurity/engine/internal/vps/d;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;->a()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;->c:Lcom/avast/android/mobilesecurity/engine/internal/vps/d;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/engine/internal/vps/d;->a()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v2

    invoke-virtual {p4}, Lcom/avast/android/mobilesecurity/engine/d;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    sget-object v2, Lcom/avast/android/mobilesecurity/engine/internal/x;->k:Lcom/avast/android/mobilesecurity/engine/internal/x;

    invoke-static {p0, v2, v1}, Lcom/avast/android/mobilesecurity/engine/internal/s;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/engine/internal/x;Ljava/util/Map;)Ljava/lang/Object;

    .line 1288
    if-eqz v0, :cond_2

    .line 1289
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;ZLjava/io/File;Landroid/content/pm/PackageInfo;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1555
    if-eqz p4, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1559
    if-nez p1, :cond_1

    .line 1663
    :cond_0
    :goto_0
    return-void

    .line 1562
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1563
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/s;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/s;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1564
    invoke-static {p3, p4, p1}, Lcom/avast/android/mobilesecurity/engine/i;->a(Ljava/io/File;Landroid/content/pm/PackageInfo;Ljava/util/List;)V

    goto :goto_0

    .line 1568
    :cond_2
    if-eqz p1, :cond_0

    .line 1576
    if-nez p2, :cond_4

    .line 1577
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 1578
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1579
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/s;

    .line 1580
    iget-object v2, v0, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v2, " [PUP]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1583
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1588
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_6

    .line 1589
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 1590
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/s;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/s;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1593
    :cond_5
    invoke-static {p3, p4, p1}, Lcom/avast/android/mobilesecurity/engine/i;->a(Ljava/io/File;Landroid/content/pm/PackageInfo;Ljava/util/List;)V

    goto :goto_0

    .line 1598
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 1599
    :cond_7
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1600
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/s;

    .line 1601
    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    if-nez v0, :cond_7

    .line 1602
    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 1607
    :cond_9
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/s;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/s;-><init>()V

    .line 1608
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    move-object v1, v0

    .line 1609
    :cond_a
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1610
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/s;

    .line 1611
    iget-object v3, v0, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/x;->a()I

    move-result v3

    iget-object v4, v1, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/engine/x;->a()I

    move-result v4

    if-le v3, v4, :cond_a

    move-object v1, v0

    .line 1612
    goto :goto_3

    .line 1617
    :cond_b
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 1618
    :cond_c
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1619
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/s;

    .line 1620
    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/engine/x;->a()I

    move-result v0

    iget-object v3, v1, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/x;->a()I

    move-result v3

    if-ge v0, v3, :cond_c

    .line 1621
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 1626
    :cond_d
    iget-object v0, v1, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 1628
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1629
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 1630
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1631
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/s;

    .line 1632
    iget-object v3, v0, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    if-eqz v3, :cond_f

    .line 1633
    iget-object v3, v0, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1635
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 1637
    :cond_e
    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1640
    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 1645
    :cond_10
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1646
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 1647
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1648
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/s;

    .line 1649
    iget-object v3, v0, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1650
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 1652
    :cond_11
    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1658
    :cond_12
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_13

    .line 1659
    new-instance v0, Lcom/avast/android/mobilesecurity/engine/s;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/engine/s;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1662
    :cond_13
    invoke-static {p3, p4, p1}, Lcom/avast/android/mobilesecurity/engine/i;->a(Ljava/io/File;Landroid/content/pm/PackageInfo;Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private static a(Ljava/io/File;Landroid/content/pm/PackageInfo;Ljava/util/List;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1677
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 1734
    :cond_0
    :goto_0
    return-void

    .line 1684
    :cond_1
    if-nez p0, :cond_3

    .line 1685
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    move-object v2, v0

    .line 1690
    :goto_1
    const/4 v1, 0x0

    .line 1691
    const/4 v0, 0x0

    .line 1692
    invoke-interface {p2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v3

    move v6, v0

    move-object v0, v1

    move v1, v6

    .line 1693
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1694
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/s;

    .line 1695
    sget-object v4, Lcom/avast/android/mobilesecurity/engine/j;->d:[I

    iget-object v5, v0, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/engine/x;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1722
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : CLEAN"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    goto :goto_2

    .line 1731
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1687
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    goto :goto_1

    .line 1698
    :pswitch_0
    iget-object v4, v0, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, " [PUP]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1701
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : INFECTED ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/avast/android/mobilesecurity/engine/s;->b:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 1703
    add-int/lit8 v1, v1, 0x1

    .line 1704
    goto :goto_2

    .line 1706
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : SUSPICIOUS ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1718
    :pswitch_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : ERROR ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1727
    :cond_4
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/x;->l:Lcom/avast/android/mobilesecurity/engine/x;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/s;->a:Lcom/avast/android/mobilesecurity/engine/x;

    invoke-virtual {v3, v0}, Lcom/avast/android/mobilesecurity/engine/x;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 1729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " : CLEAN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1695
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 721
    const/16 v0, 0x384

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/q;->a(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 722
    return-void
.end method

.method public static a(Lcom/avast/android/generic/g/e;Landroid/content/Context;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 899
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 905
    :cond_0
    :goto_0
    return v0

    .line 902
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, p1, v1, v2}, Lcom/avast/android/mobilesecurity/engine/internal/c;->a(Lcom/avast/android/generic/g/e;Landroid/content/Context;Ljava/lang/Integer;Landroid/os/Bundle;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 904
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Integer;Lcom/avast/android/mobilesecurity/engine/q;)[B
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 957
    if-eqz p0, :cond_0

    if-nez p2, :cond_2

    :cond_0
    move-object v0, v1

    .line 1004
    :cond_1
    :goto_0
    return-object v0

    .line 962
    :cond_2
    const/4 v0, 0x0

    .line 963
    if-eqz p1, :cond_3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_6

    .line 964
    :cond_3
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    .line 966
    const/4 v0, 0x1

    move v2, v0

    .line 968
    :goto_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_5

    :cond_4
    move-object v0, v1

    .line 970
    goto :goto_0

    .line 972
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 973
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/j;->c:[I

    invoke-virtual {p2}, Lcom/avast/android/mobilesecurity/engine/q;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 989
    :goto_2
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->c:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v0, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->d:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-virtual {p2}, Lcom/avast/android/mobilesecurity/engine/q;->a()S

    move-result v4

    invoke-static {v4}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 996
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/internal/x;->a:Lcom/avast/android/mobilesecurity/engine/internal/x;

    invoke-static {p0, v3, v0}, Lcom/avast/android/mobilesecurity/engine/internal/s;->a(Landroid/content/Context;Lcom/avast/android/mobilesecurity/engine/internal/x;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    .line 998
    if-eqz v2, :cond_1

    .line 999
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p0, v2}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;I)V

    goto :goto_0

    .line 1003
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 1004
    goto :goto_0

    .line 982
    :pswitch_0
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->b:Lcom/avast/android/mobilesecurity/engine/internal/vps/c;

    invoke-virtual {v3}, Lcom/avast/android/mobilesecurity/engine/internal/vps/c;->a()S

    move-result v3

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    invoke-static {}, Lcom/avast/android/mobilesecurity/engine/y;->b()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_6
    move v2, v0

    goto :goto_1

    .line 973
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static b(Landroid/content/Context;Ljava/lang/Integer;)Landroid/os/Bundle;
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 923
    const/4 v1, 0x0

    .line 924
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_1

    .line 925
    :cond_0
    invoke-static {p0}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;)Ljava/lang/Integer;

    move-result-object p1

    .line 926
    const/4 v1, 0x1

    .line 928
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-gez v2, :cond_3

    .line 936
    :cond_2
    :goto_0
    return-object v0

    .line 931
    :cond_3
    invoke-static {p0, v0, v0}, Lcom/avast/android/mobilesecurity/engine/internal/c;->a(Landroid/content/Context;Ljava/lang/Integer;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 933
    if-eqz v1, :cond_2

    .line 934
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p0, v1}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

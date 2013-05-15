.class final Lcom/avast/android/mobilesecurity/app/fileshield/t;
.super Ljava/lang/Thread;
.source "FileShieldService.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/Map;

.field private final d:Lcom/avast/android/mobilesecurity/app/fileshield/e;

.field private final e:Lcom/avast/android/mobilesecurity/app/fileshield/v;

.field private f:J

.field private g:J

.field private h:I


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 756
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    .line 757
    const-string v0, "AMS-SS$SThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 719
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->c:Ljava/util/Map;

    .line 724
    invoke-static {}, Lcom/avast/android/mobilesecurity/app/fileshield/e;->a()Lcom/avast/android/mobilesecurity/app/fileshield/e;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->d:Lcom/avast/android/mobilesecurity/app/fileshield/e;

    .line 730
    invoke-static {}, Lcom/avast/android/mobilesecurity/app/fileshield/v;->a()Lcom/avast/android/mobilesecurity/app/fileshield/v;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->e:Lcom/avast/android/mobilesecurity/app/fileshield/v;

    .line 758
    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->b:Landroid/content/Context;

    .line 759
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->f:J

    .line 760
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->g:J

    .line 761
    const/4 v0, 0x0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->h:I

    .line 762
    return-void
.end method

.method private a()V
    .locals 5

    .prologue
    .line 849
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->c:Ljava/util/Map;

    monitor-enter v2

    .line 850
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    monitor-exit v2

    .line 865
    :goto_0
    return-void

    .line 853
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 856
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 857
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 858
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->f(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/app/fileshield/c;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcom/avast/android/mobilesecurity/app/fileshield/c;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 864
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 861
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Lcom/avast/android/mobilesecurity/app/fileshield/a;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 876
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->c:Ljava/util/Map;

    monitor-enter v1

    .line 877
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->c:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    monitor-exit v1

    .line 879
    return-void

    .line 878
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 906
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    move-result-object v0

    .line 908
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->f:J

    sub-long/2addr v3, v5

    .line 909
    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-wide/16 v5, 0x3c

    div-long/2addr v3, v5

    long-to-double v3, v3

    .line 910
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    .line 911
    sget-object v1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->M:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    iget-wide v5, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->g:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object v3, v2

    move-object v4, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 914
    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/mobilesecurity/app/fileshield/a;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 892
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->f(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/app/fileshield/c;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/avast/android/mobilesecurity/app/fileshield/c;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 897
    invoke-direct {p0, p2, p1}, Lcom/avast/android/mobilesecurity/app/fileshield/t;->a(Ljava/lang/String;Lcom/avast/android/mobilesecurity/app/fileshield/a;)V

    .line 899
    :cond_0
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    .line 766
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 773
    :cond_0
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/fileshield/t;->a()V

    .line 774
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 776
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->f(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/app/fileshield/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/fileshield/c;->a()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/avast/android/mobilesecurity/app/fileshield/a;

    move-object v5, v0

    .line 779
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v1, v6, v2

    const-wide/32 v3, 0x3b9aca00

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 780
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->c(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/t;

    move-result-object v1

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->h:I

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/t;->f(I)V

    .line 782
    const/4 v1, 0x0

    iput v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->h:I

    .line 785
    :cond_1
    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/app/fileshield/a;->b()Ljava/io/File;

    move-result-object v3

    .line 786
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->d:Lcom/avast/android/mobilesecurity/app/fileshield/e;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/app/fileshield/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->e:Lcom/avast/android/mobilesecurity/app/fileshield/v;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/app/fileshield/v;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 800
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->b:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/app/fileshield/a;->a()J

    move-result-wide v5

    invoke-static/range {v1 .. v6}, Lcom/avast/android/mobilesecurity/engine/i;->a(Landroid/content/Context;Ljava/lang/Integer;Ljava/lang/Object;Landroid/content/pm/PackageInfo;J)Ljava/util/List;

    move-result-object v2

    .line 803
    iget-wide v4, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->g:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->g:J

    .line 804
    iget-wide v4, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->g:J

    const-wide/16 v6, 0x3e8

    rem-long/2addr v4, v6

    cmp-long v1, v4, v9

    if-nez v1, :cond_2

    .line 805
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 806
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->c(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/t;

    move-result-object v1

    iget v4, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->h:I

    invoke-virtual {v1, v4}, Lcom/avast/android/mobilesecurity/t;->f(I)V

    .line 808
    const/4 v1, 0x0

    iput v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->h:I

    .line 825
    :cond_2
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->h(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/app/scanner/o;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v6, 0x8

    move-object v3, v7

    invoke-virtual/range {v1 .. v6}, Lcom/avast/android/mobilesecurity/app/scanner/o;->a(Ljava/util/List;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/avast/android/mobilesecurity/app/locking/core/App;I)V

    .line 828
    iget v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->h:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->h:I

    .line 829
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->f:J

    const-wide/32 v5, 0xdbba0

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 831
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/fileshield/t;->b()V

    .line 832
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->f:J

    .line 833
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->g:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 835
    :catch_0
    move-exception v1

    .line 836
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 840
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->a:Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;->c(Lcom/avast/android/mobilesecurity/app/fileshield/FileShieldService;)Lcom/avast/android/mobilesecurity/t;

    move-result-object v1

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->h:I

    invoke-virtual {v1, v2}, Lcom/avast/android/mobilesecurity/t;->f(I)V

    .line 842
    iput v8, p0, Lcom/avast/android/mobilesecurity/app/fileshield/t;->h:I

    .line 843
    return-void
.end method

.class Lcom/antivirus/core/scanners/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lcom/antivirus/core/scanners/h;

.field b:Lcom/antivirus/core/d/a/f;

.field final synthetic c:Lcom/antivirus/core/scanners/a;

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lcom/antivirus/core/scanners/a;Lcom/antivirus/core/scanners/h;)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/antivirus/core/scanners/d;->c:Lcom/antivirus/core/scanners/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/antivirus/core/scanners/d;->d:Z

    iput-boolean v0, p0, Lcom/antivirus/core/scanners/d;->e:Z

    iput-boolean v0, p0, Lcom/antivirus/core/scanners/d;->f:Z

    new-instance v0, Lcom/antivirus/core/d/a/f;

    invoke-direct {v0, v1}, Lcom/antivirus/core/d/a/f;-><init>(Z)V

    iput-object v0, p0, Lcom/antivirus/core/scanners/d;->b:Lcom/antivirus/core/d/a/f;

    iput-object p2, p0, Lcom/antivirus/core/scanners/d;->a:Lcom/antivirus/core/scanners/h;

    return-void
.end method

.method private a(Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V
    .locals 7

    iget-boolean v0, p0, Lcom/antivirus/core/scanners/d;->d:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/antivirus/core/scanners/f;

    iget-boolean v1, p0, Lcom/antivirus/core/scanners/d;->d:Z

    if-nez v1, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/antivirus/core/scanners/d;->d:Z

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/antivirus/core/scanners/f;

    iget-boolean v5, p0, Lcom/antivirus/core/scanners/d;->d:Z

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/antivirus/core/scanners/f;->a:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/antivirus/core/scanners/f;->a:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/antivirus/core/scanners/f;->b:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v2, v2, Lcom/antivirus/core/scanners/f;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/antivirus/core/scanners/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/core/scanners/d;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/antivirus/core/scanners/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/antivirus/core/scanners/d;->f:Z

    return v0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/antivirus/core/scanners/d;->d:Z

    iget-object v0, p0, Lcom/antivirus/core/scanners/d;->b:Lcom/antivirus/core/d/a/f;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/antivirus/core/d/a/f;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/antivirus/core/scanners/d;->c:Lcom/antivirus/core/scanners/a;

    iget-object v0, v0, Lcom/antivirus/core/scanners/a;->b:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/antivirus/core/scanners/d;->d:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/antivirus/core/scanners/d;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/antivirus/core/scanners/d;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v0, v0, Lcom/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/antivirus/core/scanners/d;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v0, v0, Lcom/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/antivirus/core/scanners/d;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v0, v0, Lcom/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/antivirus/core/scanners/d;->a:Lcom/antivirus/core/scanners/h;

    iget-object v3, v3, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v3, v3, Lcom/antivirus/core/scanners/ScannerPackagesResult;->e:Ljava/util/TreeMap;

    invoke-static {v0, v3}, Lcom/antivirus/core/d/a/f;->a(Ljava/util/List;Ljava/util/Map;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/antivirus/core/scanners/d;->b:Lcom/antivirus/core/d/a/f;

    iget-object v4, p0, Lcom/antivirus/core/scanners/d;->c:Lcom/antivirus/core/scanners/a;

    iget-object v4, v4, Lcom/antivirus/core/scanners/a;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/antivirus/core/scanners/d;->a:Lcom/antivirus/core/scanners/h;

    iget-object v5, v5, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v5, v5, Lcom/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0}, Lcom/antivirus/core/d/a/f;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/antivirus/core/scanners/d;->e:Z

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/antivirus/core/scanners/d;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v0, v0, Lcom/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/antivirus/core/scanners/d;->a:Lcom/antivirus/core/scanners/h;

    iget-object v3, v3, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v3, v3, Lcom/antivirus/core/scanners/ScannerPackagesResult;->e:Ljava/util/TreeMap;

    iget-object v4, p0, Lcom/antivirus/core/scanners/d;->b:Lcom/antivirus/core/d/a/f;

    invoke-virtual {v4}, Lcom/antivirus/core/d/a/f;->e()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4}, Lcom/antivirus/core/scanners/d;->a(Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V

    iget-object v0, p0, Lcom/antivirus/core/scanners/d;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v0, v0, Lcom/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/core/scanners/d;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/antivirus/core/scanners/ScannerPackagesResult;->a:Z

    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_3
    :try_start_2
    iget-boolean v0, p0, Lcom/antivirus/core/scanners/d;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/scanners/d;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/scanners/d;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget-object v0, v0, Lcom/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/scanners/d;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget-object v0, v0, Lcom/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/core/scanners/d;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget-object v0, v0, Lcom/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/antivirus/core/scanners/d;->a:Lcom/antivirus/core/scanners/h;

    iget-object v3, v3, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget-object v3, v3, Lcom/antivirus/core/scanners/ScannerFilesResult;->e:Ljava/util/TreeMap;

    invoke-static {v0, v3}, Lcom/antivirus/core/d/a/f;->a(Ljava/util/List;Ljava/util/Map;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/antivirus/core/scanners/d;->b:Lcom/antivirus/core/d/a/f;

    iget-object v4, p0, Lcom/antivirus/core/scanners/d;->c:Lcom/antivirus/core/scanners/a;

    iget-object v4, v4, Lcom/antivirus/core/scanners/a;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/antivirus/core/scanners/d;->a:Lcom/antivirus/core/scanners/h;

    iget-object v5, v5, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget-object v5, v5, Lcom/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v5, v0}, Lcom/antivirus/core/d/a/f;->a(Landroid/content/Context;ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/antivirus/core/scanners/d;->f:Z

    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v0, p0, Lcom/antivirus/core/scanners/d;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget-object v0, v0, Lcom/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/antivirus/core/scanners/d;->a:Lcom/antivirus/core/scanners/h;

    iget-object v1, v1, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget-object v1, v1, Lcom/antivirus/core/scanners/ScannerFilesResult;->e:Ljava/util/TreeMap;

    iget-object v2, p0, Lcom/antivirus/core/scanners/d;->b:Lcom/antivirus/core/d/a/f;

    invoke-virtual {v2}, Lcom/antivirus/core/d/a/f;->e()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/antivirus/core/scanners/d;->a(Ljava/util/List;Ljava/util/Map;Ljava/util/List;)V

    iget-object v0, p0, Lcom/antivirus/core/scanners/d;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget-object v0, v0, Lcom/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcom/antivirus/core/scanners/d;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/antivirus/core/scanners/ScannerFilesResult;->a:Z

    :cond_4
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_6
    move v0, v2

    goto :goto_2
.end method

.class Lcom/antivirus/core/scanners/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/antivirus/core/scanners/j;


# instance fields
.field final synthetic a:Lcom/antivirus/core/scanners/j;

.field final synthetic b:Lcom/antivirus/core/scanners/a;


# direct methods
.method constructor <init>(Lcom/antivirus/core/scanners/a;Lcom/antivirus/core/scanners/j;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/core/scanners/b;->b:Lcom/antivirus/core/scanners/a;

    iput-object p2, p0, Lcom/antivirus/core/scanners/b;->a:Lcom/antivirus/core/scanners/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/antivirus/core/scanners/h;Lcom/antivirus/core/scanners/c;)V
    .locals 6

    const/16 v5, 0x7d6

    iget-object v0, p0, Lcom/antivirus/core/scanners/b;->b:Lcom/antivirus/core/scanners/a;

    invoke-static {v0}, Lcom/antivirus/core/scanners/a;->a(Lcom/antivirus/core/scanners/a;)[Lcom/antivirus/core/scanners/h;

    move-result-object v0

    invoke-virtual {p2}, Lcom/antivirus/core/scanners/c;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/antivirus/core/scanners/b;->b:Lcom/antivirus/core/scanners/a;

    invoke-static {v2}, Lcom/antivirus/core/scanners/a;->b(Lcom/antivirus/core/scanners/a;)[Lcom/antivirus/core/scanners/i;

    move-result-object v2

    invoke-virtual {p2}, Lcom/antivirus/core/scanners/c;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/antivirus/core/scanners/i;->a:Lcom/antivirus/core/scanners/h;

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/antivirus/core/scanners/b;->b:Lcom/antivirus/core/scanners/a;

    invoke-static {v0}, Lcom/antivirus/core/scanners/a;->b(Lcom/antivirus/core/scanners/a;)[Lcom/antivirus/core/scanners/i;

    move-result-object v0

    invoke-virtual {p2}, Lcom/antivirus/core/scanners/c;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    new-instance v0, Lcom/antivirus/core/scanners/d;

    iget-object v1, p0, Lcom/antivirus/core/scanners/b;->b:Lcom/antivirus/core/scanners/a;

    invoke-direct {v0, v1, p1}, Lcom/antivirus/core/scanners/d;-><init>(Lcom/antivirus/core/scanners/a;Lcom/antivirus/core/scanners/h;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string v2, "LogSecurityThreats"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const-wide/16 v2, 0x9c4

    :try_start_0
    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v0}, Lcom/antivirus/core/scanners/d;->a()V

    invoke-static {v0}, Lcom/antivirus/core/scanners/d;->a(Lcom/antivirus/core/scanners/d;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v1, v1, Lcom/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v1, v1, Lcom/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "basenames"

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v4, v4, Lcom/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v2, "detection_info"

    new-instance v3, Ljava/util/TreeMap;

    iget-object v4, p1, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v4, v4, Lcom/antivirus/core/scanners/ScannerPackagesResult;->e:Ljava/util/TreeMap;

    invoke-direct {v3, v4}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v2, p0, Lcom/antivirus/core/scanners/b;->b:Lcom/antivirus/core/scanners/a;

    invoke-virtual {v2, v5, v1}, Lcom/antivirus/core/scanners/a;->a(ILandroid/os/Bundle;)V

    :cond_0
    invoke-static {v0}, Lcom/antivirus/core/scanners/d;->b(Lcom/antivirus/core/scanners/d;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget-object v0, v0, Lcom/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget-object v0, v0, Lcom/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "basenames"

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget-object v3, v3, Lcom/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "detection_info"

    new-instance v2, Ljava/util/TreeMap;

    iget-object v3, p1, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget-object v3, v3, Lcom/antivirus/core/scanners/ScannerFilesResult;->e:Ljava/util/TreeMap;

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lcom/antivirus/core/scanners/b;->b:Lcom/antivirus/core/scanners/a;

    invoke-virtual {v1, v5, v0}, Lcom/antivirus/core/scanners/a;->a(ILandroid/os/Bundle;)V

    :cond_1
    iget-object v0, p1, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    invoke-virtual {v0}, Lcom/antivirus/core/scanners/ScannerPackagesResult;->b()V

    :cond_2
    iget-object v0, p1, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    invoke-virtual {v0}, Lcom/antivirus/core/scanners/ScannerFilesResult;->b()V

    :cond_3
    sget-object v0, Lcom/antivirus/core/scanners/c;->a:Lcom/antivirus/core/scanners/c;

    invoke-virtual {v0, p2}, Lcom/antivirus/core/scanners/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/antivirus/core/scanners/b;->b:Lcom/antivirus/core/scanners/a;

    iget-object v0, v0, Lcom/antivirus/core/scanners/a;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/antivirus/core/scanners/h;->b(Landroid/content/Context;)V

    :cond_4
    iget-object v0, p0, Lcom/antivirus/core/scanners/b;->a:Lcom/antivirus/core/scanners/j;

    invoke-interface {v0, p1, p2}, Lcom/antivirus/core/scanners/j;->a(Lcom/antivirus/core/scanners/h;Lcom/antivirus/core/scanners/c;)V

    return-void

    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.class final Lorg/antivirus/core/scanners/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/antivirus/core/scanners/i;


# instance fields
.field final synthetic a:Lorg/antivirus/core/scanners/i;

.field final synthetic b:Lorg/antivirus/core/scanners/a;


# direct methods
.method constructor <init>(Lorg/antivirus/core/scanners/a;Lorg/antivirus/core/scanners/i;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/core/scanners/b;->b:Lorg/antivirus/core/scanners/a;

    iput-object p2, p0, Lorg/antivirus/core/scanners/b;->a:Lorg/antivirus/core/scanners/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScanDone(Lorg/antivirus/core/scanners/g;Lorg/antivirus/core/scanners/c;)V
    .locals 4

    iget-object v0, p0, Lorg/antivirus/core/scanners/b;->b:Lorg/antivirus/core/scanners/a;

    iget-object v0, v0, Lorg/antivirus/core/scanners/a;->e:[Lorg/antivirus/core/scanners/g;

    invoke-virtual {p2}, Lorg/antivirus/core/scanners/c;->ordinal()I

    move-result v1

    iget-object v2, p0, Lorg/antivirus/core/scanners/b;->b:Lorg/antivirus/core/scanners/a;

    iget-object v2, v2, Lorg/antivirus/core/scanners/a;->d:[Lorg/antivirus/core/scanners/h;

    invoke-virtual {p2}, Lorg/antivirus/core/scanners/c;->ordinal()I

    move-result v3

    aget-object v2, v2, v3

    iget-object v2, v2, Lorg/antivirus/core/scanners/h;->a:Lorg/antivirus/core/scanners/g;

    aput-object v2, v0, v1

    iget-object v0, p0, Lorg/antivirus/core/scanners/b;->b:Lorg/antivirus/core/scanners/a;

    iget-object v0, v0, Lorg/antivirus/core/scanners/a;->d:[Lorg/antivirus/core/scanners/h;

    invoke-virtual {p2}, Lorg/antivirus/core/scanners/c;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iget-object v0, p1, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v0, v0, Lorg/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v0, v0, Lorg/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "basenames"

    iget-object v2, p1, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v2, v2, Lorg/antivirus/core/scanners/ScannerPackagesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "detection_info"

    iget-object v2, p1, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    iget-object v2, v2, Lorg/antivirus/core/scanners/ScannerPackagesResult;->e:Ljava/util/TreeMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lorg/antivirus/core/scanners/b;->b:Lorg/antivirus/core/scanners/a;

    invoke-virtual {v1, v0}, Lorg/antivirus/core/scanners/a;->a(Landroid/os/Bundle;)V

    :cond_0
    iget-object v0, p1, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    iget-object v0, v0, Lorg/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    iget-object v0, v0, Lorg/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "basenames"

    iget-object v2, p1, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    iget-object v2, v2, Lorg/antivirus/core/scanners/ScannerFilesResult;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v1, "detection_info"

    iget-object v2, p1, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    iget-object v2, v2, Lorg/antivirus/core/scanners/ScannerFilesResult;->e:Ljava/util/TreeMap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    iget-object v1, p0, Lorg/antivirus/core/scanners/b;->b:Lorg/antivirus/core/scanners/a;

    invoke-virtual {v1, v0}, Lorg/antivirus/core/scanners/a;->a(Landroid/os/Bundle;)V

    :cond_1
    sget-object v0, Lorg/antivirus/core/scanners/c;->a:Lorg/antivirus/core/scanners/c;

    invoke-virtual {v0, p2}, Lorg/antivirus/core/scanners/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/core/scanners/b;->b:Lorg/antivirus/core/scanners/a;

    iget-object v0, v0, Lorg/antivirus/core/scanners/a;->a:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lorg/antivirus/core/scanners/g;->b(Landroid/content/Context;)V

    :cond_2
    iget-object v0, p0, Lorg/antivirus/core/scanners/b;->a:Lorg/antivirus/core/scanners/i;

    invoke-interface {v0, p1, p2}, Lorg/antivirus/core/scanners/i;->onScanDone(Lorg/antivirus/core/scanners/g;Lorg/antivirus/core/scanners/c;)V

    return-void
.end method

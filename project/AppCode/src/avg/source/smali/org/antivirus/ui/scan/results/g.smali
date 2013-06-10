.class final Lorg/antivirus/ui/scan/results/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lorg/antivirus/ui/scan/results/j;

.field final synthetic d:Lorg/antivirus/ui/scan/results/d;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/scan/results/d;IILorg/antivirus/ui/scan/results/j;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    iput p2, p0, Lorg/antivirus/ui/scan/results/g;->a:I

    iput p3, p0, Lorg/antivirus/ui/scan/results/g;->b:I

    iput-object p4, p0, Lorg/antivirus/ui/scan/results/g;->c:Lorg/antivirus/ui/scan/results/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    iget v1, p0, Lorg/antivirus/ui/scan/results/g;->a:I

    invoke-static {v0, v1}, Lorg/antivirus/ui/scan/results/d;->a(Lorg/antivirus/ui/scan/results/d;I)I

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    iget v1, p0, Lorg/antivirus/ui/scan/results/g;->b:I

    invoke-static {v0, v1}, Lorg/antivirus/ui/scan/results/d;->b(Lorg/antivirus/ui/scan/results/d;I)I

    iget v0, p0, Lorg/antivirus/ui/scan/results/g;->a:I

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    invoke-static {v1}, Lorg/antivirus/ui/scan/results/d;->e(Lorg/antivirus/ui/scan/results/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/antivirus/ui/scan/results/g;->b:I

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lorg/antivirus/ui/scan/results/d;->e(Lorg/antivirus/ui/scan/results/d;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lorg/antivirus/ui/scan/results/g;->a:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lorg/antivirus/ui/scan/results/d;->e(Lorg/antivirus/ui/scan/results/d;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lorg/antivirus/ui/scan/results/g;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget v1, p0, Lorg/antivirus/ui/scan/results/g;->b:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->c:Lorg/antivirus/ui/scan/results/j;

    instance-of v0, v0, Lorg/antivirus/ui/scan/results/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lorg/antivirus/ui/scan/results/d;->d(Lorg/antivirus/ui/scan/results/d;)Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    move-result-object v0

    const-string v1, "scan_results"

    const-string v2, "ignore_checked"

    const-string v3, "apps"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->c:Lorg/antivirus/ui/scan/results/j;

    iget-object v0, v0, Lorg/antivirus/ui/scan/results/j;->d:Ljava/lang/String;

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    iget-object v1, v1, Lorg/antivirus/ui/scan/results/d;->a:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v1, v0}, Lorg/antivirus/core/EngineSettings;->setIgnorePackages(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    invoke-static {v1}, Lorg/antivirus/ui/scan/results/d;->d(Lorg/antivirus/ui/scan/results/d;)Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    move-result-object v1

    iget-object v1, v1, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v1, v1, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    invoke-virtual {v1, v0}, Lorg/antivirus/core/scanners/ScannerPackagesResult;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/results/d;->g()V

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->c:Lorg/antivirus/ui/scan/results/j;

    instance-of v0, v0, Lorg/antivirus/ui/scan/results/q;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lorg/antivirus/ui/scan/results/d;->d(Lorg/antivirus/ui/scan/results/d;)Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    move-result-object v0

    const-string v1, "scan_results"

    const-string v2, "ignore_checked"

    const-string v3, "settings"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->c:Lorg/antivirus/ui/scan/results/j;

    check-cast v0, Lorg/antivirus/ui/scan/results/q;

    iget-object v0, v0, Lorg/antivirus/ui/scan/results/q;->a:Lorg/antivirus/ui/scan/results/r;

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    invoke-static {v1, v0}, Lorg/antivirus/ui/scan/results/d;->a(Lorg/antivirus/ui/scan/results/d;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    iget-object v2, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    invoke-static {v2}, Lorg/antivirus/ui/scan/results/d;->d(Lorg/antivirus/ui/scan/results/d;)Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->getApplicationContext()Landroid/content/Context;

    invoke-static {v1, v0}, Lorg/antivirus/ui/scan/results/d;->a(Lorg/antivirus/ui/scan/results/d;Lorg/antivirus/ui/scan/results/r;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->c:Lorg/antivirus/ui/scan/results/j;

    instance-of v0, v0, Lorg/antivirus/ui/scan/results/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lorg/antivirus/ui/scan/results/d;->d(Lorg/antivirus/ui/scan/results/d;)Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    move-result-object v0

    const-string v1, "scan_results"

    const-string v2, "ignore_checked"

    const-string v3, "content"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->c:Lorg/antivirus/ui/scan/results/j;

    check-cast v0, Lorg/antivirus/ui/scan/results/b;

    sget-object v1, Lorg/antivirus/ui/scan/results/h;->a:[I

    iget-object v0, v0, Lorg/antivirus/ui/scan/results/b;->a:Lorg/antivirus/ui/scan/results/c;

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/results/c;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    iget-object v0, v0, Lorg/antivirus/ui/scan/results/d;->a:Lorg/antivirus/core/EngineSettings;

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/g;->c:Lorg/antivirus/ui/scan/results/j;

    iget-object v1, v1, Lorg/antivirus/ui/scan/results/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/antivirus/core/EngineSettings;->setIgnoreFile(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lorg/antivirus/ui/scan/results/d;->d(Lorg/antivirus/ui/scan/results/d;)Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    move-result-object v0

    iget-object v0, v0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/g;->c:Lorg/antivirus/ui/scan/results/j;

    iget-object v1, v1, Lorg/antivirus/ui/scan/results/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/antivirus/core/scanners/ScannerFilesResult;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/results/d;->g()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->c:Lorg/antivirus/ui/scan/results/j;

    instance-of v0, v0, Lorg/antivirus/ui/scan/results/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lorg/antivirus/ui/scan/results/d;->d(Lorg/antivirus/ui/scan/results/d;)Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    move-result-object v0

    const-string v1, "scan_results"

    const-string v2, "ignore_unchecked"

    const-string v3, "apps"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->c:Lorg/antivirus/ui/scan/results/j;

    iget-object v0, v0, Lorg/antivirus/ui/scan/results/j;->d:Ljava/lang/String;

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    iget-object v1, v1, Lorg/antivirus/ui/scan/results/d;->a:Lorg/antivirus/core/EngineSettings;

    invoke-virtual {v1, v0}, Lorg/antivirus/core/EngineSettings;->removeIgnorePackages(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    invoke-static {v1}, Lorg/antivirus/ui/scan/results/d;->d(Lorg/antivirus/ui/scan/results/d;)Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    move-result-object v1

    iget-object v1, v1, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v1, v1, Lorg/antivirus/core/scanners/g;->c:Lorg/antivirus/core/scanners/ScannerPackagesResult;

    invoke-virtual {v1, v0}, Lorg/antivirus/core/scanners/ScannerPackagesResult;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/results/d;->g()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->c:Lorg/antivirus/ui/scan/results/j;

    instance-of v0, v0, Lorg/antivirus/ui/scan/results/q;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lorg/antivirus/ui/scan/results/d;->d(Lorg/antivirus/ui/scan/results/d;)Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    move-result-object v0

    const-string v1, "scan_results"

    const-string v2, "ignore_unchecked"

    const-string v3, "settings"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->c:Lorg/antivirus/ui/scan/results/j;

    check-cast v0, Lorg/antivirus/ui/scan/results/q;

    iget-object v0, v0, Lorg/antivirus/ui/scan/results/q;->a:Lorg/antivirus/ui/scan/results/r;

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    invoke-static {v1, v0}, Lorg/antivirus/ui/scan/results/d;->a(Lorg/antivirus/ui/scan/results/d;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    iget-object v2, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    invoke-static {v2}, Lorg/antivirus/ui/scan/results/d;->d(Lorg/antivirus/ui/scan/results/d;)Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    move-result-object v2

    invoke-virtual {v2}, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->getApplicationContext()Landroid/content/Context;

    invoke-static {v1, v0}, Lorg/antivirus/ui/scan/results/d;->b(Lorg/antivirus/ui/scan/results/d;Lorg/antivirus/ui/scan/results/r;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->c:Lorg/antivirus/ui/scan/results/j;

    instance-of v0, v0, Lorg/antivirus/ui/scan/results/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lorg/antivirus/ui/scan/results/d;->d(Lorg/antivirus/ui/scan/results/d;)Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    move-result-object v0

    const-string v1, "scan_results"

    const-string v2, "ignore_unchecked"

    const-string v3, "content"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->c:Lorg/antivirus/ui/scan/results/j;

    check-cast v0, Lorg/antivirus/ui/scan/results/b;

    sget-object v1, Lorg/antivirus/ui/scan/results/h;->a:[I

    iget-object v0, v0, Lorg/antivirus/ui/scan/results/b;->a:Lorg/antivirus/ui/scan/results/c;

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/results/c;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lorg/antivirus/core/Logger;->errorBadAgrument()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    iget-object v0, v0, Lorg/antivirus/ui/scan/results/d;->a:Lorg/antivirus/core/EngineSettings;

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/g;->c:Lorg/antivirus/ui/scan/results/j;

    iget-object v1, v1, Lorg/antivirus/ui/scan/results/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/antivirus/core/EngineSettings;->removeIgnoreFile(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lorg/antivirus/ui/scan/results/d;->d(Lorg/antivirus/ui/scan/results/d;)Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    move-result-object v0

    iget-object v0, v0, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;->a:Lorg/antivirus/core/scanners/g;

    iget-object v0, v0, Lorg/antivirus/core/scanners/g;->f:Lorg/antivirus/core/scanners/ScannerFilesResult;

    iget-object v1, p0, Lorg/antivirus/ui/scan/results/g;->c:Lorg/antivirus/ui/scan/results/j;

    iget-object v1, v1, Lorg/antivirus/ui/scan/results/j;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/antivirus/core/scanners/ScannerFilesResult;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/ui/scan/results/g;->d:Lorg/antivirus/ui/scan/results/d;

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/results/d;->g()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

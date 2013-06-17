.class Lcom/antivirus/ui/scan/results/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/antivirus/ui/scan/results/k;

.field final synthetic d:Lcom/antivirus/ui/scan/results/d;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/scan/results/d;IILcom/antivirus/ui/scan/results/k;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    iput p2, p0, Lcom/antivirus/ui/scan/results/g;->a:I

    iput p3, p0, Lcom/antivirus/ui/scan/results/g;->b:I

    iput-object p4, p0, Lcom/antivirus/ui/scan/results/g;->c:Lcom/antivirus/ui/scan/results/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    const/16 v6, 0x61a8

    const/16 v5, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    iget v1, p0, Lcom/antivirus/ui/scan/results/g;->a:I

    invoke-static {v0, v1}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/d;I)I

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    iget v1, p0, Lcom/antivirus/ui/scan/results/g;->b:I

    invoke-static {v0, v1}, Lcom/antivirus/ui/scan/results/d;->b(Lcom/antivirus/ui/scan/results/d;I)I

    iget v0, p0, Lcom/antivirus/ui/scan/results/g;->a:I

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v1}, Lcom/antivirus/ui/scan/results/d;->d(Lcom/antivirus/ui/scan/results/d;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/antivirus/ui/scan/results/g;->b:I

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lcom/antivirus/ui/scan/results/d;->d(Lcom/antivirus/ui/scan/results/d;)Ljava/util/ArrayList;

    move-result-object v0

    iget v2, p0, Lcom/antivirus/ui/scan/results/g;->a:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lcom/antivirus/ui/scan/results/d;->d(Lcom/antivirus/ui/scan/results/d;)Ljava/util/ArrayList;

    move-result-object v0

    iget v1, p0, Lcom/antivirus/ui/scan/results/g;->a:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/antivirus/ui/scan/results/g;->b:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lcom/antivirus/ui/scan/results/d;->e(Lcom/antivirus/ui/scan/results/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v1}, Lcom/antivirus/ui/scan/results/d;->e(Lcom/antivirus/ui/scan/results/d;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090238

    invoke-static {v1, v2}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->c:Lcom/antivirus/ui/scan/results/k;

    instance-of v0, v0, Lcom/antivirus/ui/scan/results/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lcom/antivirus/ui/scan/results/d;->c(Lcom/antivirus/ui/scan/results/d;)Lcom/antivirus/ui/scan/results/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v0

    const-string v1, "category_scan_results"

    const-string v2, "action_ignore_checked"

    const-string v3, "label_apps"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->c:Lcom/antivirus/ui/scan/results/k;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/k;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    iget-object v1, v1, Lcom/antivirus/ui/scan/results/d;->a:Lcom/antivirus/core/b;

    invoke-virtual {v1, v0}, Lcom/antivirus/core/b;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v1}, Lcom/antivirus/ui/scan/results/d;->c(Lcom/antivirus/ui/scan/results/d;)Lcom/antivirus/ui/scan/results/m;

    move-result-object v1

    iget-object v1, v1, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v1, v1, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    invoke-virtual {v1, v0}, Lcom/antivirus/core/scanners/ScannerPackagesResult;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lcom/antivirus/ui/scan/results/d;->c(Lcom/antivirus/ui/scan/results/d;)Lcom/antivirus/ui/scan/results/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {}, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->k()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v6, v5, v1}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->c:Lcom/antivirus/ui/scan/results/k;

    instance-of v0, v0, Lcom/antivirus/ui/scan/results/r;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lcom/antivirus/ui/scan/results/d;->c(Lcom/antivirus/ui/scan/results/d;)Lcom/antivirus/ui/scan/results/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v0

    const-string v1, "category_scan_results"

    const-string v2, "action_ignore_checked"

    const-string v3, "label_settings"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->c:Lcom/antivirus/ui/scan/results/k;

    check-cast v0, Lcom/antivirus/ui/scan/results/r;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/r;->a()Lcom/antivirus/ui/scan/results/s;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v1, v0}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/d;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v1, v0}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/d;Lcom/antivirus/ui/scan/results/s;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->c:Lcom/antivirus/ui/scan/results/k;

    instance-of v0, v0, Lcom/antivirus/ui/scan/results/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lcom/antivirus/ui/scan/results/d;->c(Lcom/antivirus/ui/scan/results/d;)Lcom/antivirus/ui/scan/results/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v0

    const-string v1, "category_scan_results"

    const-string v2, "action_ignore_checked"

    const-string v3, "label_content"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->c:Lcom/antivirus/ui/scan/results/k;

    check-cast v0, Lcom/antivirus/ui/scan/results/b;

    sget-object v1, Lcom/antivirus/ui/scan/results/h;->a:[I

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/b;->b()Lcom/antivirus/ui/scan/results/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/c;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    iget-object v0, v0, Lcom/antivirus/ui/scan/results/d;->a:Lcom/antivirus/core/b;

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/g;->c:Lcom/antivirus/ui/scan/results/k;

    invoke-virtual {v1}, Lcom/antivirus/ui/scan/results/k;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/antivirus/core/b;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lcom/antivirus/ui/scan/results/d;->c(Lcom/antivirus/ui/scan/results/d;)Lcom/antivirus/ui/scan/results/m;

    move-result-object v0

    iget-object v0, v0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/g;->c:Lcom/antivirus/ui/scan/results/k;

    invoke-virtual {v1}, Lcom/antivirus/ui/scan/results/k;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/antivirus/core/scanners/ScannerFilesResult;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lcom/antivirus/ui/scan/results/d;->c(Lcom/antivirus/ui/scan/results/d;)Lcom/antivirus/ui/scan/results/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {}, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->k()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v6, v5, v1}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->c:Lcom/antivirus/ui/scan/results/k;

    instance-of v0, v0, Lcom/antivirus/ui/scan/results/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lcom/antivirus/ui/scan/results/d;->c(Lcom/antivirus/ui/scan/results/d;)Lcom/antivirus/ui/scan/results/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v0

    const-string v1, "category_scan_results"

    const-string v2, "action_ignore_unchecked"

    const-string v3, "label_apps"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->c:Lcom/antivirus/ui/scan/results/k;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/k;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    iget-object v1, v1, Lcom/antivirus/ui/scan/results/d;->a:Lcom/antivirus/core/b;

    invoke-virtual {v1, v0}, Lcom/antivirus/core/b;->d(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v1}, Lcom/antivirus/ui/scan/results/d;->c(Lcom/antivirus/ui/scan/results/d;)Lcom/antivirus/ui/scan/results/m;

    move-result-object v1

    iget-object v1, v1, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v1, v1, Lcom/antivirus/core/scanners/h;->c:Lcom/antivirus/core/scanners/ScannerPackagesResult;

    invoke-virtual {v1, v0}, Lcom/antivirus/core/scanners/ScannerPackagesResult;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lcom/antivirus/ui/scan/results/d;->c(Lcom/antivirus/ui/scan/results/d;)Lcom/antivirus/ui/scan/results/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {}, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->k()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v6, v5, v1}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->c:Lcom/antivirus/ui/scan/results/k;

    instance-of v0, v0, Lcom/antivirus/ui/scan/results/r;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lcom/antivirus/ui/scan/results/d;->c(Lcom/antivirus/ui/scan/results/d;)Lcom/antivirus/ui/scan/results/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v0

    const-string v1, "category_scan_results"

    const-string v2, "action_ignore_unchecked"

    const-string v3, "label_settings"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->c:Lcom/antivirus/ui/scan/results/k;

    check-cast v0, Lcom/antivirus/ui/scan/results/r;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/r;->a()Lcom/antivirus/ui/scan/results/s;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v1, v0}, Lcom/antivirus/ui/scan/results/d;->a(Lcom/antivirus/ui/scan/results/d;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v1, v0}, Lcom/antivirus/ui/scan/results/d;->b(Lcom/antivirus/ui/scan/results/d;Lcom/antivirus/ui/scan/results/s;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->c:Lcom/antivirus/ui/scan/results/k;

    instance-of v0, v0, Lcom/antivirus/ui/scan/results/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lcom/antivirus/ui/scan/results/d;->c(Lcom/antivirus/ui/scan/results/d;)Lcom/antivirus/ui/scan/results/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v0

    const-string v1, "category_scan_results"

    const-string v2, "action_ignore_unchecked"

    const-string v3, "label_content"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/avg/toolkit/c/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->c:Lcom/antivirus/ui/scan/results/k;

    check-cast v0, Lcom/antivirus/ui/scan/results/b;

    sget-object v1, Lcom/antivirus/ui/scan/results/h;->a:[I

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/b;->b()Lcom/antivirus/ui/scan/results/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/c;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lcom/avg/toolkit/f/a;->a()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    iget-object v0, v0, Lcom/antivirus/ui/scan/results/d;->a:Lcom/antivirus/core/b;

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/g;->c:Lcom/antivirus/ui/scan/results/k;

    invoke-virtual {v1}, Lcom/antivirus/ui/scan/results/k;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/antivirus/core/b;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lcom/antivirus/ui/scan/results/d;->c(Lcom/antivirus/ui/scan/results/d;)Lcom/antivirus/ui/scan/results/m;

    move-result-object v0

    iget-object v0, v0, Lcom/antivirus/ui/scan/results/m;->a:Lcom/antivirus/core/scanners/h;

    iget-object v0, v0, Lcom/antivirus/core/scanners/h;->f:Lcom/antivirus/core/scanners/ScannerFilesResult;

    iget-object v1, p0, Lcom/antivirus/ui/scan/results/g;->c:Lcom/antivirus/ui/scan/results/k;

    invoke-virtual {v1}, Lcom/antivirus/ui/scan/results/k;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/antivirus/core/scanners/ScannerFilesResult;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/antivirus/ui/scan/results/g;->d:Lcom/antivirus/ui/scan/results/d;

    invoke-static {v0}, Lcom/antivirus/ui/scan/results/d;->c(Lcom/antivirus/ui/scan/results/d;)Lcom/antivirus/ui/scan/results/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/results/m;->h()Landroid/support/v4/app/i;

    move-result-object v0

    invoke-static {}, Lcom/antivirus/widget/protection/ProtectionWidgetPlugin;->k()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v6, v5, v1}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    goto/16 :goto_0

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

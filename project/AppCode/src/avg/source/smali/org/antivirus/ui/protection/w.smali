.class final Lorg/antivirus/ui/protection/w;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/protection/ProtectionActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/protection/ProtectionActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    long-to-int v2, p4

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->f(Lorg/antivirus/ui/protection/ProtectionActivity;)V

    iget-object v0, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-static {v0, v6}, Lorg/antivirus/a/a;->a(Landroid/content/Context;Lorg/antivirus/core/Engine;)V

    iget-object v0, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    const-string v1, "protection"

    const-string v2, "update_now"

    invoke-static {v0, v1, v2, v6}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-static {v1}, Lorg/antivirus/ui/protection/ProtectionActivity;->g(Lorg/antivirus/ui/protection/ProtectionActivity;)Lorg/antivirus/core/scanners/g;

    move-result-object v1

    invoke-virtual {v1}, Lorg/antivirus/core/scanners/g;->a()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    const-string v2, "protection"

    const-string v3, "scan_now"

    invoke-static {v1, v2, v3, v6}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    const-class v3, Lorg/antivirus/ui/main/AntivirusMainScreen;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "avmsStartScan"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/protection/ProtectionActivity;->startActivity(Landroid/content/Intent;)V

    :goto_1
    iget-object v0, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-virtual {v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->finish()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    const-class v2, Lorg/antivirus/ui/scan/results/ScanResultsExpandable;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ScannerClient"

    sget-object v2, Lorg/antivirus/ui/main/AntivirusMainScreen;->a:Lorg/antivirus/core/scanners/c;

    invoke-virtual {v2}, Lorg/antivirus/core/scanners/c;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    const-string v1, "app_landing"

    const-string v2, "view_scan_results"

    invoke-static {v0, v1, v2, v6}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    const-class v3, Lorg/antivirus/ui/protection/FileScannerActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lorg/antivirus/ui/protection/ProtectionActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    const-string v1, "protection"

    const-string v2, "file_scanner"

    const-string v3, "permitted"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09000b

    invoke-static {v2}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0200b6

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lorg/antivirus/tuneup/at;

    iget-object v3, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    iget-object v4, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-virtual {v4}, Lorg/antivirus/ui/protection/ProtectionActivity;->d()I

    move-result v4

    const/high16 v5, 0x7f0a

    invoke-static {v5}, Lorg/antivirus/Strings;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/antivirus/tuneup/at;-><init>(Landroid/content/Context;I[Ljava/lang/String;)V

    iget-object v3, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-virtual {v3}, Lorg/antivirus/ui/protection/ProtectionActivity;->d()I

    move-result v3

    new-instance v4, Lorg/antivirus/ui/protection/x;

    invoke-direct {v4, p0}, Lorg/antivirus/ui/protection/x;-><init>(Lorg/antivirus/ui/protection/w;)V

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    const-string v1, "protection"

    const-string v2, "scan_freq"

    invoke-static {v0, v1, v2, v6}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->h(Lorg/antivirus/ui/protection/ProtectionActivity;)V

    iget-object v0, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->i(Lorg/antivirus/ui/protection/ProtectionActivity;)Lorg/antivirus/ui/protection/ab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/ui/protection/ab;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->j(Lorg/antivirus/ui/protection/ProtectionActivity;)V

    iget-object v0, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->i(Lorg/antivirus/ui/protection/ProtectionActivity;)Lorg/antivirus/ui/protection/ab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/ui/protection/ab;->notifyDataSetChanged()V

    goto/16 :goto_0

    :pswitch_6
    iget-object v2, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    iget-object v3, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-virtual {v3}, Lorg/antivirus/ui/protection/ProtectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(Lorg/antivirus/ui/protection/ProtectionActivity;Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v2

    invoke-virtual {v2}, Lorg/antivirus/core/EngineSettings;->isSDScanEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    iget-object v2, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-virtual {v2}, Lorg/antivirus/ui/protection/ProtectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/antivirus/ui/protection/ProtectionActivity;->b(Lorg/antivirus/ui/protection/ProtectionActivity;Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/antivirus/core/EngineSettings;->setSDScanEnabled(Z)V

    iget-object v0, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    const-string v1, "protection"

    const-string v2, "scan_sd"

    const-string v3, "off"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->i(Lorg/antivirus/ui/protection/ProtectionActivity;)Lorg/antivirus/ui/protection/ab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/ui/protection/ab;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    iget-object v2, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-virtual {v2}, Lorg/antivirus/ui/protection/ProtectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/antivirus/ui/protection/ProtectionActivity;->c(Lorg/antivirus/ui/protection/ProtectionActivity;Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/antivirus/core/EngineSettings;->setSDScanEnabled(Z)V

    iget-object v0, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    const-string v1, "protection"

    const-string v2, "scan_sd"

    const-string v3, "on"

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_7
    iget-object v2, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    iget-object v3, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-virtual {v3}, Lorg/antivirus/ui/protection/ProtectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/antivirus/ui/protection/ProtectionActivity;->d(Lorg/antivirus/ui/protection/ProtectionActivity;Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v2

    invoke-virtual {v2}, Lorg/antivirus/core/EngineSettings;->isPUPEnabled()Z

    move-result v2

    iget-object v3, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    iget-object v4, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-virtual {v4}, Lorg/antivirus/ui/protection/ProtectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/antivirus/ui/protection/ProtectionActivity;->e(Lorg/antivirus/ui/protection/ProtectionActivity;Landroid/content/Context;)Lorg/antivirus/core/EngineSettings;

    move-result-object v3

    if-nez v2, :cond_2

    :goto_3
    invoke-virtual {v3, v0}, Lorg/antivirus/core/EngineSettings;->setPUPEnabled(Z)V

    iget-object v1, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    const-string v3, "protection"

    const-string v4, "enable_pup"

    if-eqz v2, :cond_3

    const-string v0, "off"

    :goto_4
    invoke-static {v1, v3, v4, v0}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/antivirus/ui/protection/w;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->i(Lorg/antivirus/ui/protection/ProtectionActivity;)Lorg/antivirus/ui/protection/ab;

    move-result-object v0

    invoke-virtual {v0}, Lorg/antivirus/ui/protection/ab;->notifyDataSetChanged()V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    const-string v0, "on"

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method

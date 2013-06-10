.class final Lorg/antivirus/ui/versionUpdate/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/versionUpdate/c;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/c;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;

    const-string v1, "version_update"

    const-string v2, "ok"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/antivirus/ganalytics/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/ui/versionUpdate/c;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;

    const-class v2, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "progress"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "progress_max"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/ui/versionUpdate/c;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;->startActivity(Landroid/content/Intent;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/ui/versionUpdate/c;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;

    const-class v2, Lorg/antivirus/AVService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "__SAC"

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "url"

    iget-object v2, p0, Lorg/antivirus/ui/versionUpdate/c;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;

    invoke-static {v2}, Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;->a(Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "revision"

    iget-object v2, p0, Lorg/antivirus/ui/versionUpdate/c;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;

    invoke-static {v2}, Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;->b(Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "action"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/ui/versionUpdate/c;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/c;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;

    invoke-virtual {v0}, Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;->finish()V

    return-void
.end method

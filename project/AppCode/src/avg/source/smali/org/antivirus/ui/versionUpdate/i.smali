.class final Lorg/antivirus/ui/versionUpdate/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/versionUpdate/i;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/ui/versionUpdate/i;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    const-class v2, Lorg/antivirus/AVService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "__SAC"

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "action"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/ui/versionUpdate/i;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/i;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-static {v0}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->i(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/i;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-virtual {v0}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->finish()V

    return-void
.end method

.class Lcom/antivirus/ui/versionUpdate/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/versionUpdate/e;->a:Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "vu_action"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/antivirus/ui/versionUpdate/e;->a:Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    const/16 v2, 0x1770

    invoke-static {v1, v2, v3, v0}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/antivirus/ui/versionUpdate/e;->a:Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->a(Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/antivirus/ui/versionUpdate/e;->a:Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-virtual {v0}, Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->finish()V

    return-void
.end method

.class Lcom/antivirus/ui/versionUpdate/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

.field final synthetic b:Lcom/antivirus/ui/versionUpdate/f;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/versionUpdate/f;Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/versionUpdate/g;->b:Lcom/antivirus/ui/versionUpdate/f;

    iput-object p2, p0, Lcom/antivirus/ui/versionUpdate/g;->a:Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/antivirus/ui/versionUpdate/g;->a:Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-static {v0}, Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->e(Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "__SAH"

    new-instance v2, Landroid/os/Messenger;

    iget-object v3, p0, Lcom/antivirus/ui/versionUpdate/g;->b:Lcom/antivirus/ui/versionUpdate/f;

    invoke-direct {v2, v3}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/antivirus/ui/versionUpdate/g;->a:Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    const/16 v2, 0x1770

    const/4 v3, 0x2

    invoke-static {v1, v2, v3, v0}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

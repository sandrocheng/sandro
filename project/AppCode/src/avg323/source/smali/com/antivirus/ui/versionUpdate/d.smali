.class Lcom/antivirus/ui/versionUpdate/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/versionUpdate/d;->a:Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/versionUpdate/d;->a:Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->a(Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/antivirus/ui/versionUpdate/d;->a:Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-virtual {v0}, Lcom/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->finish()V

    return-void
.end method

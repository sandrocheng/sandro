.class final Lorg/antivirus/ui/versionUpdate/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/versionUpdate/h;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/h;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-static {v0}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->i(Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/h;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;

    invoke-virtual {v0}, Lorg/antivirus/ui/versionUpdate/VersionUpdateProgressDialog;->finish()V

    return-void
.end method

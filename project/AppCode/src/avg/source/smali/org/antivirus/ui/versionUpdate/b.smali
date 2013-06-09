.class final Lorg/antivirus/ui/versionUpdate/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/versionUpdate/b;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/versionUpdate/b;->a:Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;

    invoke-virtual {v0}, Lorg/antivirus/ui/versionUpdate/VersionUpdateDialog;->finish()V

    return-void
.end method

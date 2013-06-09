.class final Lorg/antivirus/ui/scan/k;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/scan/UnInstall;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/scan/UnInstall;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/scan/k;->a:Lorg/antivirus/ui/scan/UnInstall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lorg/antivirus/ui/scan/k;->a:Lorg/antivirus/ui/scan/UnInstall;

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/UnInstall;->finish()V

    return-void
.end method

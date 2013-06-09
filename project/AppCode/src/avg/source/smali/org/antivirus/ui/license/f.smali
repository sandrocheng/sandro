.class final Lorg/antivirus/ui/license/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/license/LicenseEnteringActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/license/LicenseEnteringActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/license/f;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lorg/antivirus/ui/license/f;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->a(Lorg/antivirus/ui/license/LicenseEnteringActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    return-void
.end method

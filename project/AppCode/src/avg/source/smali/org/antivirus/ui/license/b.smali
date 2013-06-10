.class final Lorg/antivirus/ui/license/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lorg/antivirus/ui/license/a;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/license/a;Z)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/license/b;->b:Lorg/antivirus/ui/license/a;

    iput-boolean p2, p0, Lorg/antivirus/ui/license/b;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/ui/license/b;->b:Lorg/antivirus/ui/license/a;

    iget-object v0, v0, Lorg/antivirus/ui/license/a;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-static {v0}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->b(Lorg/antivirus/ui/license/LicenseEnteringActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lorg/antivirus/ui/license/b;->b:Lorg/antivirus/ui/license/a;

    iget-object v0, v0, Lorg/antivirus/ui/license/a;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->a(Lorg/antivirus/ui/license/LicenseEnteringActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-boolean v0, p0, Lorg/antivirus/ui/license/b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/ui/license/b;->b:Lorg/antivirus/ui/license/a;

    iget-object v0, v0, Lorg/antivirus/ui/license/a;->a:Lorg/antivirus/ui/license/LicenseEnteringActivity;

    invoke-virtual {v0}, Lorg/antivirus/ui/license/LicenseEnteringActivity;->finish()V

    :cond_0
    return-void
.end method

.class final Lorg/antivirus/ui/protection/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/protection/r;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/protection/r;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/protection/t;->a:Lorg/antivirus/ui/protection/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/antivirus/ui/protection/t;->a:Lorg/antivirus/ui/protection/r;

    iget-object v0, v0, Lorg/antivirus/ui/protection/r;->b:Lorg/antivirus/ui/protection/q;

    iget-object v0, v0, Lorg/antivirus/ui/protection/q;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(Lorg/antivirus/ui/protection/ProtectionActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/antivirus/ui/protection/t;->a:Lorg/antivirus/ui/protection/r;

    iget-object v0, v0, Lorg/antivirus/ui/protection/r;->b:Lorg/antivirus/ui/protection/q;

    iget-object v0, v0, Lorg/antivirus/ui/protection/q;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(Lorg/antivirus/ui/protection/ProtectionActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lorg/antivirus/ui/protection/t;->a:Lorg/antivirus/ui/protection/r;

    iget-object v0, v0, Lorg/antivirus/ui/protection/r;->b:Lorg/antivirus/ui/protection/q;

    iget-object v0, v0, Lorg/antivirus/ui/protection/q;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->b(Lorg/antivirus/ui/protection/ProtectionActivity;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lorg/antivirus/ui/protection/t;->a:Lorg/antivirus/ui/protection/r;

    iget-object v0, v0, Lorg/antivirus/ui/protection/r;->b:Lorg/antivirus/ui/protection/q;

    iget-object v0, v0, Lorg/antivirus/ui/protection/q;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-static {v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->c(Lorg/antivirus/ui/protection/ProtectionActivity;)Landroid/view/View;

    iget-object v0, p0, Lorg/antivirus/ui/protection/t;->a:Lorg/antivirus/ui/protection/r;

    iget-object v0, v0, Lorg/antivirus/ui/protection/r;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "NOCHANGE"

    iget-object v1, p0, Lorg/antivirus/ui/protection/t;->a:Lorg/antivirus/ui/protection/r;

    iget-object v1, v1, Lorg/antivirus/ui/protection/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const v0, 0x7f090132

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/antivirus/AvApplication;->mAvgFeatures:Lorg/antivirus/core/b/a;

    if-eqz v1, :cond_1

    sget-object v1, Lorg/antivirus/AvApplication;->mAvgFeatures:Lorg/antivirus/core/b/a;

    invoke-virtual {v1}, Lorg/antivirus/core/b/a;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f090131

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const v1, 0x7f090017

    invoke-static {v1}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "[appname]"

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/antivirus/ui/protection/t;->a:Lorg/antivirus/ui/protection/r;

    iget-object v2, v2, Lorg/antivirus/ui/protection/r;->b:Lorg/antivirus/ui/protection/q;

    iget-object v2, v2, Lorg/antivirus/ui/protection/q;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f09003e

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f020134

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    const v0, 0x7f090003

    invoke-static {v0}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/antivirus/ui/protection/u;

    invoke-direct {v2, p0}, Lorg/antivirus/ui/protection/u;-><init>(Lorg/antivirus/ui/protection/t;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lorg/antivirus/ui/protection/t;->a:Lorg/antivirus/ui/protection/r;

    iget-object v0, v0, Lorg/antivirus/ui/protection/r;->b:Lorg/antivirus/ui/protection/q;

    iget-object v0, v0, Lorg/antivirus/ui/protection/q;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/antivirus/ui/protection/ProtectionActivity;->a(Lorg/antivirus/ui/protection/ProtectionActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lorg/antivirus/ui/protection/t;->a:Lorg/antivirus/ui/protection/r;

    iget-object v0, v0, Lorg/antivirus/ui/protection/r;->b:Lorg/antivirus/ui/protection/q;

    iget-object v0, v0, Lorg/antivirus/ui/protection/q;->a:Lorg/antivirus/ui/protection/ProtectionActivity;

    invoke-virtual {v0}, Lorg/antivirus/ui/protection/ProtectionActivity;->e()V

    goto :goto_0
.end method

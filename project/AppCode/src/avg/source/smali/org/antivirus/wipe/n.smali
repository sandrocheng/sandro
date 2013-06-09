.class final Lorg/antivirus/wipe/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/antivirus/wipe/WipeByApp;


# direct methods
.method constructor <init>(Lorg/antivirus/wipe/WipeByApp;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/wipe/n;->a:Lorg/antivirus/wipe/WipeByApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    const v3, 0x7f0900a9

    iget-object v0, p0, Lorg/antivirus/wipe/n;->a:Lorg/antivirus/wipe/WipeByApp;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lorg/antivirus/wipe/n;->a:Lorg/antivirus/wipe/WipeByApp;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lorg/antivirus/wipe/WipeByApp;->a(Lorg/antivirus/wipe/WipeByApp;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lorg/antivirus/wipe/n;->a:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeByApp;->l(Lorg/antivirus/wipe/WipeByApp;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/antivirus/wipe/n;->a:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeByApp;->l(Lorg/antivirus/wipe/WipeByApp;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-static {v3}, Lorg/antivirus/Strings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/antivirus/wipe/n;->a:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeByApp;->l(Lorg/antivirus/wipe/WipeByApp;)Landroid/app/ProgressDialog;

    move-result-object v0

    const v1, 0x7f0200c3

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    iget-object v0, p0, Lorg/antivirus/wipe/n;->a:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeByApp;->l(Lorg/antivirus/wipe/WipeByApp;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lorg/antivirus/wipe/n;->a:Lorg/antivirus/wipe/WipeByApp;

    invoke-static {v0}, Lorg/antivirus/wipe/WipeByApp;->l(Lorg/antivirus/wipe/WipeByApp;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

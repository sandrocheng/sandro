.class Lcom/antivirus/wipe/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/antivirus/wipe/b;


# direct methods
.method constructor <init>(Lcom/antivirus/wipe/b;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/wipe/h;->a:Lcom/antivirus/wipe/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const v3, 0x7f09016e

    iget-object v0, p0, Lcom/antivirus/wipe/h;->a:Lcom/antivirus/wipe/b;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/antivirus/wipe/h;->a:Lcom/antivirus/wipe/b;

    invoke-static {v2}, Lcom/antivirus/wipe/b;->y(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/antivirus/wipe/b;->a(Lcom/antivirus/wipe/b;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/antivirus/wipe/h;->a:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->A(Lcom/antivirus/wipe/b;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/wipe/h;->a:Lcom/antivirus/wipe/b;

    invoke-static {v1}, Lcom/antivirus/wipe/b;->z(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/wipe/h;->a:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->A(Lcom/antivirus/wipe/b;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/wipe/h;->a:Lcom/antivirus/wipe/b;

    invoke-static {v1}, Lcom/antivirus/wipe/b;->B(Lcom/antivirus/wipe/b;)Lcom/avg/ui/general/a/a;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/antivirus/m;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/antivirus/wipe/h;->a:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->A(Lcom/antivirus/wipe/b;)Landroid/app/ProgressDialog;

    move-result-object v0

    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIcon(I)V

    iget-object v0, p0, Lcom/antivirus/wipe/h;->a:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->A(Lcom/antivirus/wipe/b;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/antivirus/wipe/h;->a:Lcom/antivirus/wipe/b;

    invoke-static {v0}, Lcom/antivirus/wipe/b;->A(Lcom/antivirus/wipe/b;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

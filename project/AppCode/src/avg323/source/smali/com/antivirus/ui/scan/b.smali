.class Lcom/antivirus/ui/scan/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/antivirus/ui/scan/FileRemover;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/scan/FileRemover;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/scan/b;->c:Lcom/antivirus/ui/scan/FileRemover;

    iput-object p2, p0, Lcom/antivirus/ui/scan/b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/antivirus/ui/scan/b;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Lcom/antivirus/core/b;

    iget-object v1, p0, Lcom/antivirus/ui/scan/b;->c:Lcom/antivirus/ui/scan/FileRemover;

    invoke-virtual {v1}, Lcom/antivirus/ui/scan/FileRemover;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/antivirus/core/b;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/antivirus/ui/scan/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/antivirus/core/b;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/antivirus/ui/scan/b;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/antivirus/ui/scan/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/antivirus/core/b;->c(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/antivirus/ui/scan/b;->c:Lcom/antivirus/ui/scan/FileRemover;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/FileRemover;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "continue"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/antivirus/ui/scan/b;->c:Lcom/antivirus/ui/scan/FileRemover;

    invoke-virtual {v1, v0}, Lcom/antivirus/ui/scan/FileRemover;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/antivirus/ui/scan/b;->c:Lcom/antivirus/ui/scan/FileRemover;

    invoke-virtual {v0}, Lcom/antivirus/ui/scan/FileRemover;->finish()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/avg/toolkit/f/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method

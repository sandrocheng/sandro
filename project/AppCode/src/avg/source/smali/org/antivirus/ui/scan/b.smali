.class final Lorg/antivirus/ui/scan/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lorg/antivirus/ui/scan/FileRemover;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/scan/FileRemover;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/scan/b;->b:Lorg/antivirus/ui/scan/FileRemover;

    iput-object p2, p0, Lorg/antivirus/ui/scan/b;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    new-instance v0, Lorg/antivirus/core/EngineSettings;

    iget-object v1, p0, Lorg/antivirus/ui/scan/b;->b:Lorg/antivirus/ui/scan/FileRemover;

    invoke-virtual {v1}, Lorg/antivirus/ui/scan/FileRemover;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/antivirus/core/EngineSettings;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lorg/antivirus/ui/scan/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/antivirus/core/EngineSettings;->setIgnoreFile(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lorg/antivirus/ui/scan/b;->b:Lorg/antivirus/ui/scan/FileRemover;

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/FileRemover;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "continue"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/antivirus/ui/scan/b;->b:Lorg/antivirus/ui/scan/FileRemover;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/scan/FileRemover;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/antivirus/ui/scan/b;->b:Lorg/antivirus/ui/scan/FileRemover;

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/FileRemover;->finish()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

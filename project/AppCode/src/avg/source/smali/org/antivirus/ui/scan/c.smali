.class final Lorg/antivirus/ui/scan/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/scan/FileRemover;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/scan/FileRemover;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/scan/c;->a:Lorg/antivirus/ui/scan/FileRemover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lorg/antivirus/ui/scan/c;->a:Lorg/antivirus/ui/scan/FileRemover;

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/FileRemover;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "file_path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/antivirus/ui/scan/c;->a:Lorg/antivirus/ui/scan/FileRemover;

    invoke-virtual {v0}, Lorg/antivirus/ui/scan/FileRemover;->finish()V

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/antivirus/core/Logger;->log(Ljava/lang/Exception;)V

    goto :goto_0
.end method

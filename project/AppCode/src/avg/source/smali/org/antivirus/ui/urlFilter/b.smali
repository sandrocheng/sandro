.class final Lorg/antivirus/ui/urlFilter/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/urlFilter/UrlWarningActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/urlFilter/UrlWarningActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/urlFilter/b;->a:Lorg/antivirus/ui/urlFilter/UrlWarningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lorg/antivirus/core/AVCoreService;->SERVICE_IDENTIFIER:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "__SAC"

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "__SAD"

    iget-object v2, p0, Lorg/antivirus/ui/urlFilter/b;->a:Lorg/antivirus/ui/urlFilter/UrlWarningActivity;

    invoke-virtual {v2}, Lorg/antivirus/ui/urlFilter/UrlWarningActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "md5sum"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/ui/urlFilter/b;->a:Lorg/antivirus/ui/urlFilter/UrlWarningActivity;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/urlFilter/UrlWarningActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lorg/antivirus/ui/urlFilter/b;->a:Lorg/antivirus/ui/urlFilter/UrlWarningActivity;

    invoke-virtual {v0}, Lorg/antivirus/ui/urlFilter/UrlWarningActivity;->finish()V

    return-void
.end method

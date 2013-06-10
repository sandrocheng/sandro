.class final Lorg/antivirus/ui/urlFilter/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/urlFilter/UrlWarningActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/urlFilter/UrlWarningActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/urlFilter/a;->a:Lorg/antivirus/ui/urlFilter/UrlWarningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/ui/urlFilter/a;->a:Lorg/antivirus/ui/urlFilter/UrlWarningActivity;

    const-class v2, Lorg/antivirus/AVService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "__SAC"

    const/16 v2, 0x7a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "__SAD"

    const-string v2, "/mobile/urlfiltering.jsp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lorg/antivirus/ui/urlFilter/a;->a:Lorg/antivirus/ui/urlFilter/UrlWarningActivity;

    invoke-virtual {v1, v0}, Lorg/antivirus/ui/urlFilter/UrlWarningActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lorg/antivirus/ui/urlFilter/a;->a:Lorg/antivirus/ui/urlFilter/UrlWarningActivity;

    invoke-virtual {v0}, Lorg/antivirus/ui/urlFilter/UrlWarningActivity;->finish()V

    return-void
.end method

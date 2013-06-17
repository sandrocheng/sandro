.class Lcom/antivirus/ui/urlFilter/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/urlFilter/UrlWarningActivity;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/urlFilter/UrlWarningActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/urlFilter/a;->a:Lcom/antivirus/ui/urlFilter/UrlWarningActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "__SAD"

    const-string v2, "/mobile/urlfiltering.jsp"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/antivirus/ui/urlFilter/a;->a:Lcom/antivirus/ui/urlFilter/UrlWarningActivity;

    const/16 v2, 0x1b58

    const/16 v3, 0x1b5b

    invoke-static {v1, v2, v3, v0}, Lcom/antivirus/AVService;->a(Landroid/content/Context;IILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/antivirus/ui/urlFilter/a;->a:Lcom/antivirus/ui/urlFilter/UrlWarningActivity;

    invoke-virtual {v0}, Lcom/antivirus/ui/urlFilter/UrlWarningActivity;->finish()V

    return-void
.end method

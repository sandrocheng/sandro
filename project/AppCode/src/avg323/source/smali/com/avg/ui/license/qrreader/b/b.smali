.class Lcom/avg/ui/license/qrreader/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avg/ui/license/qrreader/b/a;


# direct methods
.method constructor <init>(Lcom/avg/ui/license/qrreader/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/ui/license/qrreader/b/b;->a:Lcom/avg/ui/license/qrreader/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/b/b;->a:Lcom/avg/ui/license/qrreader/b/a;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "market://details?id=com.google.android.apps.shopper&referrer=utm_source%3Dbarcodescanner%26utm_medium%3Dapps%26utm_campaign%3Dscan"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/avg/ui/license/qrreader/b/a;->a(Landroid/content/Intent;)V

    return-void
.end method

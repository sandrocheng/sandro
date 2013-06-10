.class Lorg/antivirus/license/qrreader/result/ResultHandler$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/antivirus/license/qrreader/result/ResultHandler;


# direct methods
.method constructor <init>(Lorg/antivirus/license/qrreader/result/ResultHandler;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/license/qrreader/result/ResultHandler$1;->this$0:Lorg/antivirus/license/qrreader/result/ResultHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object v0, p0, Lorg/antivirus/license/qrreader/result/ResultHandler$1;->this$0:Lorg/antivirus/license/qrreader/result/ResultHandler;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    const-string v3, "market://details?id=com.google.android.apps.shopper&referrer=utm_source%3Dbarcodescanner%26utm_medium%3Dapps%26utm_campaign%3Dscan"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lorg/antivirus/license/qrreader/result/ResultHandler;->launchIntent(Landroid/content/Intent;)V

    return-void
.end method

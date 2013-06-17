.class Lcom/avg/ui/general/d/c;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/avg/ui/general/d/b;


# direct methods
.method constructor <init>(Lcom/avg/ui/general/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/ui/general/d/c;->a:Lcom/avg/ui/general/d/b;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inAppIntentFilterScreen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "result"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/avg/ui/general/d/c;->a:Lcom/avg/ui/general/d/b;

    invoke-static {v1}, Lcom/avg/ui/general/d/b;->a(Lcom/avg/ui/general/d/b;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v1, p0, Lcom/avg/ui/general/d/c;->a:Lcom/avg/ui/general/d/b;

    invoke-static {v1}, Lcom/avg/ui/general/d/b;->b(Lcom/avg/ui/general/d/b;)V

    if-eqz v0, :cond_1

    const-string v0, "url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/avg/ui/general/d/c;->a:Lcom/avg/ui/general/d/b;

    invoke-static {v0}, Lcom/avg/ui/general/d/b;->c(Lcom/avg/ui/general/d/b;)V

    goto :goto_0
.end method

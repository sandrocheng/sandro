.class final Lorg/antivirus/ui/help/a;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lorg/antivirus/ui/help/Help;


# direct methods
.method constructor <init>(Lorg/antivirus/ui/help/Help;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/ui/help/a;->a:Lorg/antivirus/ui/help/Help;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
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

    iget-object v1, p0, Lorg/antivirus/ui/help/a;->a:Lorg/antivirus/ui/help/Help;

    invoke-static {v1}, Lorg/antivirus/ui/help/Help;->a(Lorg/antivirus/ui/help/Help;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v1, p0, Lorg/antivirus/ui/help/a;->a:Lorg/antivirus/ui/help/Help;

    invoke-static {v1}, Lorg/antivirus/ui/help/Help;->b(Lorg/antivirus/ui/help/Help;)V

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
    iget-object v0, p0, Lorg/antivirus/ui/help/a;->a:Lorg/antivirus/ui/help/Help;

    invoke-static {v0}, Lorg/antivirus/ui/help/Help;->c(Lorg/antivirus/ui/help/Help;)V

    goto :goto_0
.end method

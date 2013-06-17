.class Lcom/antivirus/ui/help/d;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/help/HelpTabletActivity;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/help/HelpTabletActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/help/d;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

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

    if-eqz v0, :cond_1

    const-string v0, "url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/antivirus/ui/help/d;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    invoke-static {v1}, Lcom/antivirus/ui/help/HelpTabletActivity;->a(Lcom/antivirus/ui/help/HelpTabletActivity;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/antivirus/ui/help/d;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    invoke-virtual {v0}, Lcom/antivirus/ui/help/HelpTabletActivity;->m()V

    iget-object v0, p0, Lcom/antivirus/ui/help/d;->a:Lcom/antivirus/ui/help/HelpTabletActivity;

    invoke-static {v0}, Lcom/antivirus/ui/help/HelpTabletActivity;->g(Lcom/antivirus/ui/help/HelpTabletActivity;)V

    goto :goto_0
.end method

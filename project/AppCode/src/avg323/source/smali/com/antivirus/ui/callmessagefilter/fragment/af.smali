.class Lcom/antivirus/ui/callmessagefilter/fragment/af;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/antivirus/ui/callmessagefilter/fragment/v;

.field private b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/antivirus/ui/callmessagefilter/fragment/v;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/antivirus/ui/callmessagefilter/fragment/af;->a:Lcom/antivirus/ui/callmessagefilter/fragment/v;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p2, p0, Lcom/antivirus/ui/callmessagefilter/fragment/af;->b:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/antivirus/ui/callmessagefilter/fragment/af;->b:Landroid/os/Handler;

    const/16 v1, 0x9e

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

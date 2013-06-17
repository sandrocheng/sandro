.class final Lcom/avg/ui/license/qrreader/general/m;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/avg/ui/license/qrreader/general/j;


# direct methods
.method private constructor <init>(Lcom/avg/ui/license/qrreader/general/j;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/ui/license/qrreader/general/m;->a:Lcom/avg/ui/license/qrreader/general/j;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/avg/ui/license/qrreader/general/j;Lcom/avg/ui/license/qrreader/general/k;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/avg/ui/license/qrreader/general/m;-><init>(Lcom/avg/ui/license/qrreader/general/j;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "plugged"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/avg/ui/license/qrreader/general/m;->a:Lcom/avg/ui/license/qrreader/general/j;

    invoke-static {v0}, Lcom/avg/ui/license/qrreader/general/j;->a(Lcom/avg/ui/license/qrreader/general/j;)V

    :cond_0
    return-void
.end method

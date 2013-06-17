.class Lcom/avg/tuneup/battery/d;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/avg/tuneup/battery/c;


# direct methods
.method constructor <init>(Lcom/avg/tuneup/battery/c;)V
    .locals 0

    iput-object p1, p0, Lcom/avg/tuneup/battery/d;->a:Lcom/avg/tuneup/battery/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avg/tuneup/battery/d;->a:Lcom/avg/tuneup/battery/c;

    invoke-static {v0}, Lcom/avg/tuneup/battery/c;->a(Lcom/avg/tuneup/battery/c;)Lcom/avg/tuneup/battery/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/tuneup/battery/l;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/avg/tuneup/battery/d;->a:Lcom/avg/tuneup/battery/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/avg/tuneup/battery/c;->a(Lcom/avg/tuneup/battery/c;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/avg/tuneup/battery/d;->a:Lcom/avg/tuneup/battery/c;

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-static {v1, v0}, Lcom/avg/tuneup/battery/c;->a(Lcom/avg/tuneup/battery/c;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    iget-object v0, p0, Lcom/avg/tuneup/battery/d;->a:Lcom/avg/tuneup/battery/c;

    invoke-static {v0}, Lcom/avg/tuneup/battery/c;->a(Lcom/avg/tuneup/battery/c;)Lcom/avg/tuneup/battery/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/tuneup/battery/l;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/avg/tuneup/battery/d;->a:Lcom/avg/tuneup/battery/c;

    invoke-static {v0}, Lcom/avg/tuneup/battery/c;->a(Lcom/avg/tuneup/battery/c;)Lcom/avg/tuneup/battery/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/tuneup/battery/l;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/avg/tuneup/battery/d;->a:Lcom/avg/tuneup/battery/c;

    invoke-static {v0}, Lcom/avg/tuneup/battery/c;->a(Lcom/avg/tuneup/battery/c;)Lcom/avg/tuneup/battery/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/tuneup/battery/l;->notifyDataSetChanged()V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/avg/tuneup/battery/d;->a:Lcom/avg/tuneup/battery/c;

    invoke-static {v0}, Lcom/avg/tuneup/battery/c;->a(Lcom/avg/tuneup/battery/c;)Lcom/avg/tuneup/battery/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/tuneup/battery/l;->notifyDataSetChanged()V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avg/tuneup/battery/d;->a:Lcom/avg/tuneup/battery/c;

    invoke-static {v0}, Lcom/avg/tuneup/battery/c;->a(Lcom/avg/tuneup/battery/c;)Lcom/avg/tuneup/battery/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avg/tuneup/battery/l;->notifyDataSetChanged()V

    goto :goto_0
.end method

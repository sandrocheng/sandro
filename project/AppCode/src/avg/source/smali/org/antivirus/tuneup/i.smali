.class final Lorg/antivirus/tuneup/i;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;


# direct methods
.method constructor <init>(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/antivirus/tuneup/i;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/antivirus/tuneup/i;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lorg/antivirus/tuneup/q;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/q;->notifyDataSetChanged()V

    iget-object v0, p0, Lorg/antivirus/tuneup/i;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->a(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

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

    iget-object v1, p0, Lorg/antivirus/tuneup/i;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-static {v1, v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->a(Lorg/antivirus/tuneup/BatterySaveSettingsActivity;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    iget-object v0, p0, Lorg/antivirus/tuneup/i;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lorg/antivirus/tuneup/q;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/q;->notifyDataSetChanged()V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/antivirus/tuneup/i;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lorg/antivirus/tuneup/q;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/q;->notifyDataSetChanged()V

    goto :goto_0

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/antivirus/tuneup/i;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lorg/antivirus/tuneup/q;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/q;->notifyDataSetChanged()V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/antivirus/tuneup/i;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lorg/antivirus/tuneup/q;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/q;->notifyDataSetChanged()V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/antivirus/tuneup/i;->a:Lorg/antivirus/tuneup/BatterySaveSettingsActivity;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/BatterySaveSettingsActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lorg/antivirus/tuneup/q;

    invoke-virtual {v0}, Lorg/antivirus/tuneup/q;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method

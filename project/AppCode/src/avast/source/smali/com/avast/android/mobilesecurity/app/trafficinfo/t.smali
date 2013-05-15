.class Lcom/avast/android/mobilesecurity/app/trafficinfo/t;
.super Ljava/lang/Object;
.source "TrafficInfoSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/trafficinfo/s;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/s;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/t;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/s;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/t;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 206
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/t;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/s;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/s;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/t;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/s;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/s;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->b(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;)Lcom/avast/android/mobilesecurity/t;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/t;->n(Z)Z

    .line 210
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/t;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/s;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/s;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->c(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;)Lcom/avast/android/generic/ui/widget/CheckBoxRow;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/CheckBoxRow;->b(Z)V

    .line 211
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/t;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/s;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/s;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->a(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;)Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->setEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/t;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/s;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/s;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;

    const-string v1, "ms-Settings"

    const-string v2, "networkMeterEnabled"

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 214
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/t;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->a(Landroid/content/Context;)V

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.avast.android.mobilesecurity.action.CLEAN_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/t;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/s;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/s;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 227
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/t;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/s;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/s;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Landroid/content/Context;)Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;

    move-result-object v1

    sget-object v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->x:Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v1 .. v8}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/u;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0
.end method

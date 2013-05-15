.class Lcom/avast/android/mobilesecurity/app/trafficinfo/p;
.super Ljava/lang/Object;
.source "TrafficInfoSettingsFragment.java"

# interfaces
.implements Lcom/avast/android/mobilesecurity/ui/widget/l;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 110
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/p;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;I)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/p;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    :goto_0
    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/p;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 120
    const v1, 0x7f0c037a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/p;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;

    const v3, 0x7f0c0063

    invoke-virtual {v2, v3}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/p;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;

    const v4, 0x7f0c0064

    invoke-virtual {v3, v4}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/avast/android/mobilesecurity/app/trafficinfo/q;

    invoke-direct {v4, p0, p2}, Lcom/avast/android/mobilesecurity/app/trafficinfo/q;-><init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/p;I)V

    new-instance v5, Lcom/avast/android/mobilesecurity/app/trafficinfo/r;

    invoke-direct {v5, p0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/r;-><init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/p;)V

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/avast/android/generic/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)V

    goto :goto_0
.end method

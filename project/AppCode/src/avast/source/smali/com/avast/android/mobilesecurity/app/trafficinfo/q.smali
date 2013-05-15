.class Lcom/avast/android/mobilesecurity/app/trafficinfo/q;
.super Ljava/lang/Object;
.source "TrafficInfoSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/trafficinfo/p;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/p;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 122
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/q;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/p;

    iput p2, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/q;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/p;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/p;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/q;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/p;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/p;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->a(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;)Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;

    move-result-object v0

    iget v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/q;->a:I

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->a(I)V

    .line 130
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/q;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/p;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/p;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->b(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;)Lcom/avast/android/mobilesecurity/t;

    move-result-object v0

    iget v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/q;->a:I

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/t;->g(I)Z

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.avast.android.mobilesecurity.action.CLEAN_DATA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/q;->b:Lcom/avast/android/mobilesecurity/app/trafficinfo/p;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/p;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/NetworkStatsService;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

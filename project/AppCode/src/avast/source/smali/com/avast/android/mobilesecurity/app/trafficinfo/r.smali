.class Lcom/avast/android/mobilesecurity/app/trafficinfo/r;
.super Ljava/lang/Object;
.source "TrafficInfoSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/trafficinfo/p;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/p;)V
    .locals 0
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/r;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 139
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/r;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/p;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/p;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/r;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/p;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/p;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->a(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;)Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/r;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/p;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/trafficinfo/p;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->b(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;)Lcom/avast/android/mobilesecurity/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->aL()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/DayButtonRow;->a(I)V

    goto :goto_0
.end method

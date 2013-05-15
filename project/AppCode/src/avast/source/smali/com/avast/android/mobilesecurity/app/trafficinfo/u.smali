.class Lcom/avast/android/mobilesecurity/app/trafficinfo/u;
.super Ljava/lang/Object;
.source "TrafficInfoSettingsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/trafficinfo/s;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/s;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/u;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/u;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/s;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/s;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoSettingsFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    :cond_0
    return-void
.end method

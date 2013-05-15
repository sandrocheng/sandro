.class public Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerActivity;
.super Lcom/avast/android/generic/ui/BaseSinglePaneActivity;
.source "TrafficInfoPagerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/avast/android/generic/ui/BaseSinglePaneActivity;-><init>()V

    return-void
.end method

.method public static call(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 17
    check-cast p0, Lcom/avast/android/generic/ui/BaseActivity;

    const-class v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerActivity;

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/BaseActivity;->a(Ljava/lang/Class;)V

    .line 18
    return-void
.end method


# virtual methods
.method protected d()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;-><init>()V

    return-object v0
.end method

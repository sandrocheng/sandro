.class Lcom/avast/android/mobilesecurity/app/trafficinfo/m;
.super Ljava/lang/Object;
.source "TrafficInfoPagerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/m;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/16 v0, 0xb

    .line 309
    .line 310
    packed-switch p2, :pswitch_data_0

    .line 322
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/trafficinfo/m;->a:Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;

    invoke-static {v1, v0}, Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;->a(Lcom/avast/android/mobilesecurity/app/trafficinfo/TrafficInfoPagerFragment;I)V

    .line 323
    return-void

    .line 315
    :pswitch_1
    const/16 v0, 0xc

    .line 316
    goto :goto_0

    .line 318
    :pswitch_2
    const/16 v0, 0xd

    goto :goto_0

    .line 310
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.class final Lad;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/powermanager/service/BatteryEventReceiver$a;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 3

    const/16 v0, 0x64

    const-string v1, "status"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    invoke-static {}, Lac;->d()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "level"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "scale"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v2

    if-le v1, v0, :cond_1

    :goto_1
    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->b(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.class public final Ldo;
.super Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->h()I

    move-result v1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x2

    new-array v2, v0, [I

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i()Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i()Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->a(Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;)Lcom/tencent/powermanager/uilib/view/BatteryScreenView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i()Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->b(Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;)Lcom/tencent/powermanager/uilib/view/BatteryScreenView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i()Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->c(Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;)Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lac;->a:I

    if-ne v0, v8, :cond_2

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i()Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->b(Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;)Lcom/tencent/powermanager/uilib/view/BatteryScreenView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/powermanager/uilib/view/BatteryScreenView;->getLocationInWindow([I)V

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i()Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->b(Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;)Lcom/tencent/powermanager/uilib/view/BatteryScreenView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/BatteryScreenView;->getWidth()I

    move-result v1

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i()Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->b(Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;)Lcom/tencent/powermanager/uilib/view/BatteryScreenView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/BatteryScreenView;->getHeight()I

    move-result v0

    :goto_1
    new-instance v3, Landroid/graphics/Rect;

    aget v4, v2, v9

    aget v5, v2, v8

    aget v6, v2, v9

    add-int/2addr v6, v1

    aget v7, v2, v8

    add-int/2addr v7, v0

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v4, Landroid/graphics/Rect;

    aget v5, v2, v9

    aget v6, v2, v8

    shl-int/lit8 v6, v6, 0x1

    div-int/lit8 v6, v6, 0x3

    aget v7, v2, v9

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v7

    aget v7, v2, v8

    invoke-direct {v4, v5, v6, v1, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i()Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->c(Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;)Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    move-result-object v1

    aget v2, v2, v8

    add-int/2addr v0, v2

    invoke-virtual {v1, v3, v4, v0}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->setRestrictRect(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i()Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->c(Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;)Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->b()V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i()Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->a(Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;)Lcom/tencent/powermanager/uilib/view/BatteryScreenView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/powermanager/uilib/view/BatteryScreenView;->getLocationInWindow([I)V

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i()Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->a(Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;)Lcom/tencent/powermanager/uilib/view/BatteryScreenView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/BatteryScreenView;->getWidth()I

    move-result v1

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i()Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->a(Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;)Lcom/tencent/powermanager/uilib/view/BatteryScreenView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/BatteryScreenView;->getHeight()I

    move-result v0

    goto :goto_1

    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->j()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->i()Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->c(Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;)Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/powermanager/uilib/view/fireflyView/FireflyPointLayout;->a()V

    goto/16 :goto_0
.end method

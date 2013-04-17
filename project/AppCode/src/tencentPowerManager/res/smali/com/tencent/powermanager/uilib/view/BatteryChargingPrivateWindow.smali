.class public Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;
.super Landroid/widget/LinearLayout;


# static fields
.field private static a:Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;


# instance fields
.field private b:Z

.field private c:Landroid/view/WindowManager$LayoutParams;

.field private d:Landroid/content/Context;

.field private e:Landroid/view/View;

.field private f:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->b:Z

    iput-object v3, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->c:Landroid/view/WindowManager$LayoutParams;

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c8

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->f:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030015

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->e:Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->e:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static a()V
    .locals 3

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->a:Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->a:Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->c:Landroid/view/WindowManager$LayoutParams;

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->a:Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;

    iget-boolean v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->a:Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->d:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->a:Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;

    sget-object v2, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->a:Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;

    invoke-direct {v2}, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->d()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->a:Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;

    invoke-direct {v0, p0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->a:Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;

    :cond_0
    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->a:Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;

    iget-boolean v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->b:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->a:Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->b:Z

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->a:Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->d:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->a:Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;

    invoke-direct {v1}, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->d()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    sget-object v2, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->a:Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static b()V
    .locals 2

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->a:Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->a:Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;

    iget-boolean v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->b:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->a:Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->b:Z

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->a:Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->d:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    :try_start_0
    sget-object v1, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->a:Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static c()V
    .locals 1

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->b()V

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->a:Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;

    return-void
.end method

.method private d()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->c:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->c:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->c:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7da

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->c:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->c:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->c:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sget v0, Lac;->a:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Ldv;->h()I

    move-result v1

    iget v2, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->f:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->c:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f80

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    :cond_1
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->c:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->c:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->f:I

    rsub-int/lit8 v1, v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->c:Landroid/view/WindowManager$LayoutParams;

    return-object v0

    :cond_2
    sget v0, Lac;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->c:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Ldv;->g()I

    move-result v1

    iget v2, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingPrivateWindow;->f:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0
.end method

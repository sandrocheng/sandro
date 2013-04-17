.class public Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;
.super Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;


# static fields
.field private static g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

.field private static l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lac$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private h:Landroid/view/WindowManager$LayoutParams;

.field private i:Landroid/content/Context;

.field private j:Landroid/view/View;

.field private k:I

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->l:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->h:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->m:Z

    iput-object p1, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->i:Landroid/content/Context;

    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->e:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->d:I

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

    iput v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->k:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030014

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->j:Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->j:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static a(Lac$b;)V
    .locals 1

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    invoke-direct {v0, p0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    :cond_0
    return-void
.end method

.method public static b()V
    .locals 4

    const/4 v3, -0x1

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->h:Landroid/view/WindowManager$LayoutParams;

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    iget-boolean v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->m:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->i:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    sget-object v2, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    invoke-virtual {v2, v3, v3}, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->a(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    invoke-direct {v0, p0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    :cond_0
    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    iget-boolean v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->m:Z

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->m:Z

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->i:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    invoke-virtual {v1, v2, v2}, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->a(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    sget-object v2, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    invoke-interface {v0, v2, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public static c()V
    .locals 1

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->d()V

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    return-void
.end method

.method public static d()V
    .locals 2

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    iget-boolean v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->m:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->m:Z

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->i:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    :try_start_0
    sget-object v1, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static setOnTouchBehindListener(Lac$b;)V
    .locals 1

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->l:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(II)Landroid/view/WindowManager$LayoutParams;
    .locals 4

    const/4 v2, 0x1

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->h:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->h:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->h:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7da

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sget v0, Lac;->a:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Ldv;->h()I

    move-result v1

    iget v2, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->k:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->h:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    :cond_1
    if-eq p1, v3, :cond_3

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_1
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->h:Landroid/view/WindowManager$LayoutParams;

    return-object v0

    :cond_2
    sget v0, Lac;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->h:Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Ldv;->g()I

    move-result v1

    iget v2, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->k:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->h:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->h:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->k:I

    rsub-int/lit8 v1, v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->k:I

    rsub-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->b:I

    goto :goto_1
.end method

.method public final a(I)V
    .locals 0

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->b()Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->b()Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/tencent/powermanager/uilib/view/BatteryChargingWindow;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    const/4 v3, -0x1

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->requestFocus()Z

    sget-object v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    iget-object v0, v0, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->i:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    sget-object v1, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    sget-object v1, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    sget-object v2, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->g:Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;

    invoke-virtual {v2, v3, v3}, Lcom/tencent/powermanager/uilib/view/BatteryChargingBehindWindow;->a(II)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    invoke-super {p0, p1}, Lcom/tencent/powermanager/uilib/services/OnSuspendedViewTouch;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method

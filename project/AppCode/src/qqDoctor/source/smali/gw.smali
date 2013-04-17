.class public final Lgw;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field private static e:I

.field private static f:F

.field private static g:F

.field private static h:I

.field private static i:I

.field private static j:I

.field private static k:I

.field private static l:I

.field private static m:I

.field private static n:I

.field private static o:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput v1, Lgw;->a:I

    sput v1, Lgw;->b:I

    sput v1, Lgw;->e:I

    sput v1, Lgw;->c:I

    sput v1, Lgw;->d:I

    const v0, 0x3e5c28f6

    sput v0, Lgw;->f:F

    const v0, 0x3f35c28f

    sput v0, Lgw;->g:F

    sput v1, Lgw;->h:I

    sput v1, Lgw;->i:I

    const/16 v0, 0x280

    sput v0, Lgw;->j:I

    const/16 v0, 0x3c0

    sput v0, Lgw;->k:I

    const/16 v0, 0x140

    sput v0, Lgw;->l:I

    const/16 v0, 0x320

    sput v0, Lgw;->m:I

    const/16 v0, 0x4b5

    sput v0, Lgw;->n:I

    const/16 v0, 0xd5

    sput v0, Lgw;->o:I

    invoke-static {}, Lgw;->a()Z

    return-void
.end method

.method public static a(Landroid/app/Activity;)I
    .locals 2

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public static a(I)V
    .locals 0

    sput p0, Lgw;->i:I

    return-void
.end method

.method public static a(Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V
    .locals 3

    invoke-static {}, Lgw;->a()Z

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "M040"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sput v0, Lgw;->b:I

    :cond_0
    sget v0, Lgw;->h:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getFrameworkHeight()I

    move-result v0

    sput v0, Lgw;->h:I

    :cond_1
    sget v0, Lgw;->b:I

    sget v1, Lgw;->h:I

    sub-int/2addr v0, v1

    sget v1, Lgw;->i:I

    sub-int/2addr v0, v1

    int-to-float v1, v0

    sget v2, Lgw;->g:F

    mul-float/2addr v1, v2

    const/high16 v2, 0x4080

    div-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lgw;->c:I

    int-to-float v0, v0

    sget v1, Lgw;->f:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    sput v0, Lgw;->d:I

    return-void
.end method

.method public static a()Z
    .locals 2

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lgw;->a:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lgw;->b:I

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lgw;->e:I

    const/4 v0, 0x1

    return v0
.end method

.method public static b()Z
    .locals 2

    invoke-static {}, Lgw;->a()Z

    sget v0, Lgw;->e:I

    const/16 v1, 0x78

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static c()Z
    .locals 2

    invoke-static {}, Lgw;->a()Z

    sget v0, Lgw;->e:I

    const/16 v1, 0x78

    if-le v0, v1, :cond_0

    sget v0, Lgw;->e:I

    const/16 v1, 0xa0

    if-le v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lgw;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lgw;->a()Z

    sget v2, Lgw;->e:I

    const/16 v3, 0xa0

    if-le v2, v3, :cond_0

    sget v2, Lgw;->e:I

    const/16 v3, 0xf0

    if-gt v2, v3, :cond_0

    sget v2, Lgw;->b:I

    const/16 v3, 0x320

    if-gt v2, v3, :cond_0

    invoke-static {}, Lgw;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-static {}, Lgw;->a()Z

    sget v2, Lgw;->a:I

    sget v3, Lgw;->m:I

    if-ne v2, v3, :cond_3

    sget v2, Lgw;->b:I

    sget v3, Lgw;->n:I

    if-ne v2, v3, :cond_3

    sget v2, Lgw;->e:I

    sget v3, Lgw;->o:I

    if-ne v2, v3, :cond_3

    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :cond_3
    move v2, v0

    goto :goto_0
.end method

.method public static e()Z
    .locals 4

    const/16 v3, 0x78

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lgw;->a()Z

    invoke-static {}, Lgw;->a()Z

    sget v2, Lgw;->e:I

    if-gt v2, v3, :cond_2

    move v2, v0

    :goto_0
    if-nez v2, :cond_4

    invoke-static {}, Lgw;->a()Z

    sget v2, Lgw;->e:I

    if-le v2, v3, :cond_0

    sget v2, Lgw;->e:I

    const/16 v3, 0xa0

    if-le v2, v3, :cond_1

    :cond_0
    invoke-static {}, Lgw;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    move v2, v0

    :goto_1
    if-nez v2, :cond_4

    invoke-static {}, Lgw;->d()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lgw;->g()Z

    move-result v2

    if-nez v2, :cond_4

    :goto_2
    return v0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public static f()I
    .locals 2

    invoke-static {}, Lgw;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lft;->d(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43f0

    div-float/2addr v0, v1

    const/high16 v1, 0x432d

    mul-float/2addr v0, v1

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xad

    goto :goto_0
.end method

.method private static g()Z
    .locals 2

    invoke-static {}, Lgw;->a()Z

    sget v0, Lgw;->a:I

    sget v1, Lgw;->j:I

    if-ne v0, v1, :cond_0

    sget v0, Lgw;->b:I

    sget v1, Lgw;->k:I

    if-ne v0, v1, :cond_0

    sget v0, Lgw;->e:I

    sget v1, Lgw;->l:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

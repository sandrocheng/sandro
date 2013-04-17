.class public final Ldv;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I

.field private static c:I

.field private static d:I

.field private static e:I

.field private static f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Ldv;->a:I

    sput v0, Ldv;->b:I

    sput v0, Ldv;->c:I

    const/16 v0, 0x280

    sput v0, Ldv;->d:I

    const/16 v0, 0x3c0

    sput v0, Ldv;->e:I

    const/16 v0, 0x140

    sput v0, Ldv;->f:I

    return-void
.end method

.method public static a()I
    .locals 2

    sget v0, Ldv;->a:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScreenUtil getApplicationContext = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScreenUtil getApplicationContext = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScreenUtil getApplicationContext = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Ldv;->a:I

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Ldv;->b:I

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Ldv;->c:I

    :cond_0
    sget v0, Ldv;->a:I

    return v0
.end method

.method public static b()Z
    .locals 2

    sget v0, Ldv;->c:I

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
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget v2, Ldv;->c:I

    const/16 v3, 0x78

    if-le v2, v3, :cond_0

    sget v2, Ldv;->c:I

    const/16 v3, 0xa0

    if-le v2, v3, :cond_1

    :cond_0
    sget v2, Ldv;->a:I

    sget v3, Ldv;->d:I

    if-ne v2, v3, :cond_3

    sget v2, Ldv;->b:I

    sget v3, Ldv;->e:I

    if-ne v2, v3, :cond_3

    sget v2, Ldv;->c:I

    sget v3, Ldv;->f:I

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

.method public static d()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Ldv;->c:I

    const/16 v3, 0xa0

    if-le v2, v3, :cond_1

    sget v2, Ldv;->c:I

    const/16 v3, 0xf0

    if-gt v2, v3, :cond_1

    sget v2, Ldv;->b:I

    const/16 v3, 0x356

    if-gt v2, v3, :cond_1

    sget v2, Ldv;->a:I

    sget v3, Ldv;->d:I

    if-ne v2, v3, :cond_0

    sget v2, Ldv;->b:I

    sget v3, Ldv;->e:I

    if-ne v2, v3, :cond_0

    sget v2, Ldv;->c:I

    sget v3, Ldv;->f:I

    if-ne v2, v3, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static e()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Ldv;->c:I

    const/16 v3, 0xf0

    if-lt v2, v3, :cond_1

    sget v2, Ldv;->b:I

    const/16 v3, 0x356

    if-le v2, v3, :cond_1

    sget v2, Ldv;->a:I

    sget v3, Ldv;->d:I

    if-ne v2, v3, :cond_0

    sget v2, Ldv;->b:I

    sget v3, Ldv;->e:I

    if-ne v2, v3, :cond_0

    sget v2, Ldv;->c:I

    sget v3, Ldv;->f:I

    if-ne v2, v3, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static f()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Ldv;->c:I

    const/16 v3, 0xf0

    if-lt v2, v3, :cond_1

    sget v2, Ldv;->b:I

    const/16 v3, 0x3e8

    if-le v2, v3, :cond_1

    sget v2, Ldv;->a:I

    sget v3, Ldv;->d:I

    if-ne v2, v3, :cond_0

    sget v2, Ldv;->b:I

    sget v3, Ldv;->e:I

    if-ne v2, v3, :cond_0

    sget v2, Ldv;->c:I

    sget v3, Ldv;->f:I

    if-ne v2, v3, :cond_0

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static g()I
    .locals 3

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v1, v2, :cond_0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method public static h()I
    .locals 3

    invoke-static {}, Lcom/tencent/powermanager/PowerManagerApplication;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-ge v1, v2, :cond_0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    return v0

    :cond_0
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

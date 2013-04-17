.class final Lbxr$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/plugin/IContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbxr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "b"
.end annotation


# instance fields
.field private a:Lcom/tencent/tmsecure/module/plugin/IContext$ILayoutInflater;

.field private b:Landroid/content/res/AssetManager;

.field private c:Landroid/content/res/Resources;

.field private d:Landroid/content/res/Resources$Theme;

.field private e:Lbxr$c;

.field private f:Landroid/view/LayoutInflater$Factory;

.field private synthetic g:Lbxr;


# direct methods
.method public constructor <init>(Lbxr;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iput-object p1, p0, Lbxr$b;->g:Lbxr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbxu;

    invoke-direct {v0, p0}, Lbxu;-><init>(Lbxr$b;)V

    iput-object v0, p0, Lbxr$b;->f:Landroid/view/LayoutInflater$Factory;

    :try_start_0
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    iput-object v0, p0, Lbxr$b;->b:Landroid/content/res/AssetManager;

    const-class v0, Landroid/content/res/AssetManager;

    const-string v1, "addAssetPath"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lbxr$b;->b:Landroid/content/res/AssetManager;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    :goto_0
    new-instance v0, Lbxr$c;

    invoke-direct {v0, v6}, Lbxr$c;-><init>(B)V

    iput-object v0, p0, Lbxr$b;->e:Lbxr$c;

    new-instance v0, Landroid/content/res/Resources;

    iget-object v1, p0, Lbxr$b;->b:Landroid/content/res/AssetManager;

    invoke-static {p1}, Lbxr;->a(Lbxr;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {p1}, Lbxr;->a(Lbxr;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lbxr$b;->c:Landroid/content/res/Resources;

    iget-object v0, p0, Lbxr$b;->c:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    iput-object v0, p0, Lbxr$b;->d:Landroid/content/res/Resources$Theme;

    iget-object v0, p0, Lbxr$b;->d:Landroid/content/res/Resources$Theme;

    sget v1, Lbxr$c;->a:I

    invoke-virtual {v0, v1, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v0, Lbxv;

    invoke-direct {v0, p0}, Lbxv;-><init>(Lbxr$b;)V

    iput-object v0, p0, Lbxr$b;->a:Lcom/tencent/tmsecure/module/plugin/IContext$ILayoutInflater;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lbxr$b;)Lbxr$c;
    .locals 1

    iget-object v0, p0, Lbxr$b;->e:Lbxr$c;

    return-object v0
.end method

.method static synthetic b(Lbxr$b;)Landroid/content/res/Resources$Theme;
    .locals 1

    iget-object v0, p0, Lbxr$b;->d:Landroid/content/res/Resources$Theme;

    return-object v0
.end method

.method static synthetic c(Lbxr$b;)Landroid/view/LayoutInflater$Factory;
    .locals 1

    iget-object v0, p0, Lbxr$b;->f:Landroid/view/LayoutInflater$Factory;

    return-object v0
.end method

.method static synthetic d(Lbxr$b;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lbxr$b;->c:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic e(Lbxr$b;)Lbxr;
    .locals 1

    iget-object v0, p0, Lbxr$b;->g:Lbxr;

    return-object v0
.end method


# virtual methods
.method public final getAssertManager()Landroid/content/res/AssetManager;
    .locals 1

    iget-object v0, p0, Lbxr$b;->b:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbxr$b;->g:Lbxr;

    invoke-static {v0}, Lbxr;->a(Lbxr;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getLayoutInflater()Lcom/tencent/tmsecure/module/plugin/IContext$ILayoutInflater;
    .locals 1

    iget-object v0, p0, Lbxr$b;->a:Lcom/tencent/tmsecure/module/plugin/IContext$ILayoutInflater;

    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lbxr$b;->c:Landroid/content/res/Resources;

    return-object v0
.end method

.class final Lbxr$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/tmsecure/module/plugin/IContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbxr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/tencent/tmsecure/module/plugin/IContext$ILayoutInflater;

.field private b:Landroid/content/res/AssetManager;

.field private c:Landroid/content/res/Resources;

.field private synthetic d:Lbxr;


# direct methods
.method public constructor <init>(Lbxr;)V
    .locals 1

    iput-object p1, p0, Lbxr$a;->d:Lbxr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbxt;

    invoke-direct {v0, p0}, Lbxt;-><init>(Lbxr$a;)V

    iput-object v0, p0, Lbxr$a;->a:Lcom/tencent/tmsecure/module/plugin/IContext$ILayoutInflater;

    invoke-static {p1}, Lbxr;->a(Lbxr;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lbxr$a;->b:Landroid/content/res/AssetManager;

    invoke-static {p1}, Lbxr;->a(Lbxr;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lbxr$a;->c:Landroid/content/res/Resources;

    return-void
.end method

.method static synthetic a(Lbxr$a;)Lbxr;
    .locals 1

    iget-object v0, p0, Lbxr$a;->d:Lbxr;

    return-object v0
.end method


# virtual methods
.method public final getAssertManager()Landroid/content/res/AssetManager;
    .locals 1

    iget-object v0, p0, Lbxr$a;->b:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbxr$a;->d:Lbxr;

    invoke-static {v0}, Lbxr;->a(Lbxr;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final getLayoutInflater()Lcom/tencent/tmsecure/module/plugin/IContext$ILayoutInflater;
    .locals 1

    iget-object v0, p0, Lbxr$a;->a:Lcom/tencent/tmsecure/module/plugin/IContext$ILayoutInflater;

    return-object v0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lbxr$a;->c:Landroid/content/res/Resources;

    return-object v0
.end method

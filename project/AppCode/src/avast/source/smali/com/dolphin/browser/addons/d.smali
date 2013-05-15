.class Lcom/dolphin/browser/addons/d;
.super Landroid/os/Handler;
.source "AddonService.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/addons/AddonService;


# direct methods
.method private constructor <init>(Lcom/dolphin/browser/addons/AddonService;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/dolphin/browser/addons/d;->a:Lcom/dolphin/browser/addons/AddonService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dolphin/browser/addons/AddonService;Lcom/dolphin/browser/addons/d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/dolphin/browser/addons/d;-><init>(Lcom/dolphin/browser/addons/AddonService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/dolphin/browser/addons/d;->a:Lcom/dolphin/browser/addons/AddonService;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcom/dolphin/browser/addons/AddonService;->a(Lcom/dolphin/browser/addons/AddonService;I)V

    .line 69
    iget-object v0, p0, Lcom/dolphin/browser/addons/d;->a:Lcom/dolphin/browser/addons/AddonService;

    invoke-static {v0}, Lcom/dolphin/browser/addons/AddonService;->b(Lcom/dolphin/browser/addons/AddonService;)Landroid/util/SparseArray;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/addons/d;->a:Lcom/dolphin/browser/addons/AddonService;

    invoke-static {v1}, Lcom/dolphin/browser/addons/AddonService;->d(Lcom/dolphin/browser/addons/AddonService;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/addons/h;

    .line 70
    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/dolphin/browser/addons/d;->a:Lcom/dolphin/browser/addons/AddonService;

    invoke-static {v1, p1, v0}, Lcom/dolphin/browser/addons/AddonService;->a(Lcom/dolphin/browser/addons/AddonService;Landroid/os/Message;Lcom/dolphin/browser/addons/h;)V

    .line 73
    :cond_0
    return-void
.end method

.class Lcom/dolphin/browser/addons/m;
.super Lcom/dolphin/browser/addons/ba;
.source "Browser.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/addons/h;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/addons/h;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/dolphin/browser/addons/m;->a:Lcom/dolphin/browser/addons/h;

    .line 347
    invoke-direct {p0}, Lcom/dolphin/browser/addons/ba;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 351
    iget-object v0, p0, Lcom/dolphin/browser/addons/m;->a:Lcom/dolphin/browser/addons/h;

    invoke-static {v0}, Lcom/dolphin/browser/addons/h;->o(Lcom/dolphin/browser/addons/h;)Lcom/dolphin/browser/addons/bo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/dolphin/browser/addons/m;->a:Lcom/dolphin/browser/addons/h;

    invoke-static {v0}, Lcom/dolphin/browser/addons/h;->o(Lcom/dolphin/browser/addons/h;)Lcom/dolphin/browser/addons/bo;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/addons/m;->a:Lcom/dolphin/browser/addons/h;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/addons/bo;->a(Lcom/dolphin/browser/addons/h;)V

    .line 354
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 367
    iget-object v0, p0, Lcom/dolphin/browser/addons/m;->a:Lcom/dolphin/browser/addons/h;

    invoke-static {v0}, Lcom/dolphin/browser/addons/h;->j(Lcom/dolphin/browser/addons/h;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    return-void

    .line 367
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/addons/bu;

    .line 368
    invoke-interface {v0, p1}, Lcom/dolphin/browser/addons/bu;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/dolphin/browser/addons/m;->a:Lcom/dolphin/browser/addons/h;

    invoke-static {v0}, Lcom/dolphin/browser/addons/h;->i(Lcom/dolphin/browser/addons/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/dolphin/browser/addons/m;->a:Lcom/dolphin/browser/addons/h;

    invoke-static {v0}, Lcom/dolphin/browser/addons/h;->h(Lcom/dolphin/browser/addons/h;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 361
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

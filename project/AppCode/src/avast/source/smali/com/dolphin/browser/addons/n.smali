.class Lcom/dolphin/browser/addons/n;
.super Lcom/dolphin/browser/addons/bl;
.source "Browser.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/addons/h;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/addons/h;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/dolphin/browser/addons/n;->a:Lcom/dolphin/browser/addons/h;

    .line 410
    invoke-direct {p0}, Lcom/dolphin/browser/addons/bl;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/dolphin/browser/addons/be;)V
    .locals 2
    .parameter

    .prologue
    .line 421
    iget-object v0, p0, Lcom/dolphin/browser/addons/n;->a:Lcom/dolphin/browser/addons/h;

    invoke-static {v0}, Lcom/dolphin/browser/addons/h;->l(Lcom/dolphin/browser/addons/h;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 424
    return-void

    .line 421
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/addons/bz;

    .line 422
    invoke-interface {v0, p1}, Lcom/dolphin/browser/addons/bz;->a(Lcom/dolphin/browser/addons/be;)V

    goto :goto_0
.end method

.method public a(Lcom/dolphin/browser/addons/bh;)V
    .locals 2
    .parameter

    .prologue
    .line 414
    iget-object v0, p0, Lcom/dolphin/browser/addons/n;->a:Lcom/dolphin/browser/addons/h;

    invoke-static {v0}, Lcom/dolphin/browser/addons/h;->l(Lcom/dolphin/browser/addons/h;)Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    return-void

    .line 414
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dolphin/browser/addons/bz;

    .line 415
    invoke-interface {v0, p1}, Lcom/dolphin/browser/addons/bz;->a(Lcom/dolphin/browser/addons/bh;)V

    goto :goto_0
.end method

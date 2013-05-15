.class Lcom/dolphin/browser/addons/v;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Lcom/dolphin/browser/addons/bs;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/addons/h;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/addons/h;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/dolphin/browser/addons/v;->a:Lcom/dolphin/browser/addons/h;

    .line 545
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/dolphin/browser/addons/aw;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lcom/dolphin/browser/addons/v;->a:Lcom/dolphin/browser/addons/h;

    invoke-static {v0}, Lcom/dolphin/browser/addons/h;->m(Lcom/dolphin/browser/addons/h;)Lcom/dolphin/browser/addons/bp;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/addons/bp;->a()Lcom/dolphin/browser/addons/aw;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/dolphin/browser/addons/aw;
    .locals 1
    .parameter

    .prologue
    .line 574
    iget-object v0, p0, Lcom/dolphin/browser/addons/v;->a:Lcom/dolphin/browser/addons/h;

    invoke-static {v0}, Lcom/dolphin/browser/addons/h;->m(Lcom/dolphin/browser/addons/h;)Lcom/dolphin/browser/addons/bp;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dolphin/browser/addons/bp;->c(I)Lcom/dolphin/browser/addons/aw;

    move-result-object v0

    return-object v0
.end method

.method public b()[I
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/dolphin/browser/addons/v;->a:Lcom/dolphin/browser/addons/h;

    invoke-static {v0}, Lcom/dolphin/browser/addons/h;->m(Lcom/dolphin/browser/addons/h;)Lcom/dolphin/browser/addons/bp;

    move-result-object v0

    invoke-interface {v0}, Lcom/dolphin/browser/addons/bp;->b()[I

    move-result-object v0

    return-object v0
.end method

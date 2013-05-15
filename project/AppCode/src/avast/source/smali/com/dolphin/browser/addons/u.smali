.class Lcom/dolphin/browser/addons/u;
.super Ljava/lang/Object;
.source "Browser.java"

# interfaces
.implements Lcom/dolphin/browser/addons/ad;


# instance fields
.field final synthetic a:Lcom/dolphin/browser/addons/h;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/addons/h;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/dolphin/browser/addons/u;->a:Lcom/dolphin/browser/addons/h;

    .line 516
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 526
    iget-object v0, p0, Lcom/dolphin/browser/addons/u;->a:Lcom/dolphin/browser/addons/h;

    invoke-static {v0}, Lcom/dolphin/browser/addons/h;->g(Lcom/dolphin/browser/addons/h;)Lcom/dolphin/browser/addons/x;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/dolphin/browser/addons/x;->c(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/dolphin/browser/addons/al;)V
    .locals 1
    .parameter

    .prologue
    .line 520
    iget-object v0, p0, Lcom/dolphin/browser/addons/u;->a:Lcom/dolphin/browser/addons/h;

    invoke-static {v0}, Lcom/dolphin/browser/addons/h;->g(Lcom/dolphin/browser/addons/h;)Lcom/dolphin/browser/addons/x;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dolphin/browser/addons/x;->d(Lcom/dolphin/browser/addons/al;)V

    .line 521
    return-void
.end method

.method public b(Lcom/dolphin/browser/addons/al;)V
    .locals 1
    .parameter

    .prologue
    .line 531
    iget-object v0, p0, Lcom/dolphin/browser/addons/u;->a:Lcom/dolphin/browser/addons/h;

    invoke-static {v0}, Lcom/dolphin/browser/addons/h;->g(Lcom/dolphin/browser/addons/h;)Lcom/dolphin/browser/addons/x;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/dolphin/browser/addons/x;->c(Lcom/dolphin/browser/addons/al;)V

    .line 532
    return-void
.end method

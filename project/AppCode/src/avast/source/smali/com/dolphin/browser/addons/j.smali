.class Lcom/dolphin/browser/addons/j;
.super Lcom/dolphin/browser/addons/ag;
.source "Browser.java"


# instance fields
.field final synthetic a:Lcom/dolphin/browser/addons/h;


# direct methods
.method constructor <init>(Lcom/dolphin/browser/addons/h;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/dolphin/browser/addons/j;->a:Lcom/dolphin/browser/addons/h;

    .line 169
    invoke-direct {p0}, Lcom/dolphin/browser/addons/ag;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/dolphin/browser/addons/j;->a:Lcom/dolphin/browser/addons/h;

    invoke-static {v0}, Lcom/dolphin/browser/addons/h;->d(Lcom/dolphin/browser/addons/h;)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/dolphin/browser/addons/j;->a:Lcom/dolphin/browser/addons/h;

    invoke-static {v0}, Lcom/dolphin/browser/addons/h;->n(Lcom/dolphin/browser/addons/h;)Lcom/dolphin/browser/addons/bo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/dolphin/browser/addons/j;->a:Lcom/dolphin/browser/addons/h;

    invoke-static {v0}, Lcom/dolphin/browser/addons/h;->n(Lcom/dolphin/browser/addons/h;)Lcom/dolphin/browser/addons/bo;

    move-result-object v0

    iget-object v1, p0, Lcom/dolphin/browser/addons/j;->a:Lcom/dolphin/browser/addons/h;

    invoke-interface {v0, v1}, Lcom/dolphin/browser/addons/bo;->a(Lcom/dolphin/browser/addons/h;)V

    .line 181
    :cond_0
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/dolphin/browser/addons/j;->a:Lcom/dolphin/browser/addons/h;

    invoke-static {v0}, Lcom/dolphin/browser/addons/h;->b(Lcom/dolphin/browser/addons/h;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/dolphin/browser/addons/j;->a:Lcom/dolphin/browser/addons/h;

    invoke-static {v0}, Lcom/dolphin/browser/addons/h;->c(Lcom/dolphin/browser/addons/h;)I

    move-result v0

    return v0
.end method

.method public e()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/dolphin/browser/addons/j;->a:Lcom/dolphin/browser/addons/h;

    invoke-static {v0}, Lcom/dolphin/browser/addons/h;->a(Lcom/dolphin/browser/addons/h;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

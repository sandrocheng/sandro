.class final Lcom/a/a/x;
.super Lcom/a/b/a;
.source "PreHoneycombCompat.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/a/b/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)Ljava/lang/Float;
    .locals 1
    .parameter

    .prologue
    .line 161
    invoke-static {p1}, Lcom/a/c/a/a;->a(Landroid/view/View;)Lcom/a/c/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/a/c/a/a;->n()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 153
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/a/a/x;->a(Landroid/view/View;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;F)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 156
    invoke-static {p1}, Lcom/a/c/a/a;->a(Landroid/view/View;)Lcom/a/c/a/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/a/c/a/a;->l(F)V

    .line 157
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/a/a/x;->a(Landroid/view/View;F)V

    return-void
.end method
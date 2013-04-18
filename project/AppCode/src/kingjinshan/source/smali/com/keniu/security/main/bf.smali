.class final Lcom/keniu/security/main/bf;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/keniu/security/main/MainActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/main/MainActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/keniu/security/main/bf;->a:Lcom/keniu/security/main/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    const/4 v3, -0x2

    .line 429
    iget-object v0, p0, Lcom/keniu/security/main/bf;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->k(Lcom/keniu/security/main/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/keniu/security/main/bf;->a:Lcom/keniu/security/main/MainActivity;

    invoke-virtual {v0}, Lcom/keniu/security/main/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 432
    const v1, 0x7f0300be

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 435
    iget-object v1, p0, Lcom/keniu/security/main/bf;->a:Lcom/keniu/security/main/MainActivity;

    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, v0, v3, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    invoke-static {v1, v2}, Lcom/keniu/security/main/MainActivity;->a(Lcom/keniu/security/main/MainActivity;Landroid/widget/PopupWindow;)Landroid/widget/PopupWindow;

    .line 438
    iget-object v0, p0, Lcom/keniu/security/main/bf;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->i(Lcom/keniu/security/main/MainActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 439
    iget-object v0, p0, Lcom/keniu/security/main/bf;->a:Lcom/keniu/security/main/MainActivity;

    invoke-virtual {v0}, Lcom/keniu/security/main/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 440
    iget-object v1, p0, Lcom/keniu/security/main/bf;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v1}, Lcom/keniu/security/main/MainActivity;->i(Lcom/keniu/security/main/MainActivity;)Landroid/widget/PopupWindow;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/main/bf;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v2}, Lcom/keniu/security/main/MainActivity;->l(Lcom/keniu/security/main/MainActivity;)Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x51

    const/4 v4, 0x0

    const/high16 v5, 0x4220

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 445
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/main/bf;->a:Lcom/keniu/security/main/MainActivity;

    invoke-static {v0}, Lcom/keniu/security/main/MainActivity;->m(Lcom/keniu/security/main/MainActivity;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

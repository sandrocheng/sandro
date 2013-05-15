.class Lcom/avast/android/mobilesecurity/ui/h;
.super Ljava/lang/Object;
.source "SideMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/avast/android/mobilesecurity/ui/g;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/ui/g;Landroid/view/ViewGroup;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/ui/h;->b:Lcom/avast/android/mobilesecurity/ui/g;

    iput-object p2, p0, Lcom/avast/android/mobilesecurity/ui/h;->a:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 257
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/h;->b:Lcom/avast/android/mobilesecurity/ui/g;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/h;->b:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/ui/g;->i(Lcom/avast/android/mobilesecurity/ui/g;)I

    move-result v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/h;->b:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/ui/g;->f(Lcom/avast/android/mobilesecurity/ui/g;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/ui/h;->b:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v3}, Lcom/avast/android/mobilesecurity/ui/g;->g(Lcom/avast/android/mobilesecurity/ui/g;)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/ui/g;->d(Lcom/avast/android/mobilesecurity/ui/g;I)I

    .line 258
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/h;->b:Lcom/avast/android/mobilesecurity/ui/g;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/h;->b:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/ui/g;->f(Lcom/avast/android/mobilesecurity/ui/g;)Landroid/widget/FrameLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/h;->b:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/ui/g;->i(Lcom/avast/android/mobilesecurity/ui/g;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/ui/g;->e(Lcom/avast/android/mobilesecurity/ui/g;I)I

    .line 260
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v4, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 262
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/h;->b:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/ui/g;->g(Lcom/avast/android/mobilesecurity/ui/g;)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 265
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/h;->a:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    .line 266
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 267
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/ui/h;->b:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/ui/g;->j(Lcom/avast/android/mobilesecurity/ui/g;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 268
    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/ui/h;->b:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/ui/g;->b(Lcom/avast/android/mobilesecurity/ui/g;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/ui/h;->b:Lcom/avast/android/mobilesecurity/ui/g;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/ui/g;->b(Lcom/avast/android/mobilesecurity/ui/g;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    return-void
.end method

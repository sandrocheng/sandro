.class Lcom/avast/android/generic/ui/widget/z;
.super Ljava/lang/Object;
.source "SwitchRow.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/avast/android/generic/ui/widget/SwitchRow;


# direct methods
.method constructor <init>(Lcom/avast/android/generic/ui/widget/SwitchRow;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/avast/android/generic/ui/widget/z;->a:Lcom/avast/android/generic/ui/widget/SwitchRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 129
    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/z;->a:Lcom/avast/android/generic/ui/widget/SwitchRow;

    invoke-static {v1}, Lcom/avast/android/generic/ui/widget/SwitchRow;->a(Lcom/avast/android/generic/ui/widget/SwitchRow;)Landroid/widget/CompoundButton;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->getHitRect(Landroid/graphics/Rect;)V

    .line 130
    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/z;->a:Lcom/avast/android/generic/ui/widget/SwitchRow;

    invoke-virtual {v1}, Lcom/avast/android/generic/ui/widget/SwitchRow;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/avast/android/generic/r;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 132
    iget-object v2, p0, Lcom/avast/android/generic/ui/widget/z;->a:Lcom/avast/android/generic/ui/widget/SwitchRow;

    invoke-virtual {v2}, Lcom/avast/android/generic/ui/widget/SwitchRow;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/avast/android/generic/r;->b:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 134
    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v2

    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 135
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 136
    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 137
    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 138
    iget-object v1, p0, Lcom/avast/android/generic/ui/widget/z;->a:Lcom/avast/android/generic/ui/widget/SwitchRow;

    new-instance v2, Landroid/view/TouchDelegate;

    iget-object v3, p0, Lcom/avast/android/generic/ui/widget/z;->a:Lcom/avast/android/generic/ui/widget/SwitchRow;

    invoke-static {v3}, Lcom/avast/android/generic/ui/widget/SwitchRow;->a(Lcom/avast/android/generic/ui/widget/SwitchRow;)Landroid/widget/CompoundButton;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/ui/widget/SwitchRow;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 140
    return-void
.end method

.class public final Lasn;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/TextView;

.field d:[I

.field e:I

.field f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Laso;

    invoke-direct {v0, p0}, Laso;-><init>(Lasn;)V

    iput-object v0, p0, Lasn;->f:Landroid/os/Handler;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-direct {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lasn;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lasn;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->getBodyParentLayout()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lasn;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitlevisible(I)V

    iget-object v0, p0, Lasn;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setIconVisibility(I)V

    iget-object v0, p0, Lasn;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setCancelable(Z)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000e

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f08002c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lasn;->b:Landroid/widget/ImageView;

    const v0, 0x7f08002d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lasn;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lasn;->a:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lasn;->d:[I

    iget-object v0, p0, Lasn;->d:[I

    const v1, 0x7f0200ee

    aput v1, v0, v2

    iget-object v0, p0, Lasn;->d:[I

    const/4 v1, 0x1

    const v2, 0x7f0200ef

    aput v2, v0, v1

    iget-object v0, p0, Lasn;->d:[I

    const/4 v1, 0x2

    const v2, 0x7f0200f0

    aput v2, v0, v1

    return-void
.end method

.class public Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;
.super Landroid/widget/LinearLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrivacySafeSuspensionView"
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;

.field private b:Landroid/content/Context;

.field private c:Landroid/widget/FrameLayout;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    iput-object p1, p0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;->a:Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;->b:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;->setClickable(Z)V

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;->setEnabled(Z)V

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;->setFocusable(Z)V

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ab

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;->c:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;->c:Landroid/widget/FrameLayout;

    const v1, 0x7f08010e

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;->c:Landroid/widget/FrameLayout;

    const v1, 0x7f080218

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;->c:Landroid/widget/FrameLayout;

    new-instance v1, Lym;

    invoke-direct {v1, p0}, Lym;-><init>(Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1, v0}, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;II)V
    .locals 3

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-gtz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    if-gtz p2, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow$PrivacySafeSuspensionView;->e:Landroid/widget/TextView;

    const v1, 0x7f0b0ac9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

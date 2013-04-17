.class public Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;->d:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030026

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;->setContentView(I)V

    iput-object p0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;->d:Landroid/content/Context;

    const v0, 0x7f08001e

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;->a:Landroid/widget/TextView;

    const v0, 0x7f080030

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;->a:Landroid/widget/TextView;

    const v1, 0x7f0b002c

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v1, 0x7f0b002d

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v1, 0x7f0b0033

    invoke-virtual {p0, v1}, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;->c:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v1, Lagf;

    invoke-direct {v1, p0}, Lagf;-><init>(Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;->b:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v1, Lagg;

    invoke-direct {v1, p0}, Lagg;-><init>(Lcom/tencent/qqpimsecure/ui/activity/market/SDcardNotEnoughDialog;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

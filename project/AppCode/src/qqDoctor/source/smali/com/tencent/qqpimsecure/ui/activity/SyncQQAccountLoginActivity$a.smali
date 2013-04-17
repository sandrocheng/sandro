.class public final Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private i:Lcd;

.field private j:Lho;

.field private k:I

.field private l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity;Landroid/content/Context;I)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity;

    const v0, 0x7f0300dc

    invoke-direct {p0, p2, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    const/16 v0, -0x3e8

    iput v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->k:I

    new-instance v0, Laeo;

    invoke-direct {v0, p0}, Laeo;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->l:Landroid/os/Handler;

    iput p3, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->k:I

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;I)V
    .locals 5

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0131

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b015f

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b05f4

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->l:Landroid/os/Handler;

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x3eb

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->l:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :sswitch_4
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->b()V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0119

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b011a

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->b()V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b011e

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e8 -> :sswitch_1
        -0x64 -> :sswitch_2
        0x0 -> :sswitch_0
        0x65 -> :sswitch_4
        0xcb -> :sswitch_7
        0xcd -> :sswitch_5
        0xd1 -> :sswitch_6
        0x3eb -> :sswitch_3
    .end sparse-switch
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b00ef

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b00f9

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    new-instance v0, Laep;

    invoke-direct {v0, p0, p1}, Laep;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;Ljava/lang/String;)V

    invoke-virtual {v0}, Laep;->start()V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->i:Lcd;

    invoke-interface {v0, p1}, Lcd;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->j:Lho;

    invoke-virtual {v0, p2}, Lho;->y(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->j:Lho;

    invoke-virtual {v0, p1}, Lho;->m(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->j:Lho;

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v1

    invoke-virtual {v1}, Lcw;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lho;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Processing login["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0117

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0118

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b00ef

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b00f2

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b0033

    new-instance v2, Laey;

    invoke-direct {v2, p0}, Laey;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    new-instance v0, Laez;

    invoke-direct {v0, p0, p1, p2}, Laez;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Laez;->start()V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->e:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    return-object v0
.end method

.method private b()V
    .locals 6

    const/4 v5, 0x2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030014

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f080034

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0201bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080035

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v2, Laeq;

    invoke-direct {v2, p0}, Laeq;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)V

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080036

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v2, Lafa;

    invoke-direct {v2, p0}, Lafa;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)V

    invoke-virtual {v2}, Lafa;->start()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0124

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setView(Landroid/view/View;)V

    const v1, 0x7f0b0045

    new-instance v3, Laer;

    invoke-direct {v3, p0, v0, v2}, Laer;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;Landroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v2, v1, v3, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v1, Laes;

    invoke-direct {v1, v2}, Laes;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v2, v0, v1, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void
.end method

.method public static synthetic c(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Lho;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->j:Lho;

    return-object v0
.end method

.method public static synthetic d(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic e(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Z
    .locals 2

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->k:I

    const v1, 0x11171

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->k:I

    const v1, 0x11172

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->k:I

    const v1, 0x11173

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static synthetic f(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic g(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic h(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)V
    .locals 3

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->k:I

    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "JOB_KEY"

    iget v2, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->k:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "LOGIN_ACCOUNT"

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v2

    invoke-virtual {v2}, Lcw;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LOGIN_KEY"

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v2

    invoke-virtual {v2}, Lcw;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    return-void
.end method

.method public static synthetic i(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static synthetic j(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic k(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic l(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->h:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    return-object v0
.end method

.method public static synthetic m(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method public static synthetic n(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Lcd;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->i:Lcd;

    return-object v0
.end method

.method public static synthetic o(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->l:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic p(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)V
    .locals 1

    new-instance v0, Lafa;

    invoke-direct {v0, p0}, Lafa;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)V

    invoke-virtual {v0}, Lafa;->start()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_0
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onBackClick()V
    .locals 3

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->k:I

    const v1, 0x11171

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->k:I

    const v1, 0x11172

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->k:I

    const v1, 0x11173

    if-ne v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onCreate()V
    .locals 7

    const v3, 0x7f0802ba

    const v6, 0x7f0802b9

    const v5, 0x11173

    const/16 v4, 0x8

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->mContext:Landroid/content/Context;

    new-instance v2, Laz;

    invoke-direct {v2, v0}, Laz;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->i:Lcd;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->j:Lho;

    const v0, 0x7f0802c0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->g:Landroid/widget/TextView;

    const v0, 0x7f0802bb

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->c:Landroid/widget/EditText;

    const v0, 0x7f0802bc

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->d:Landroid/widget/EditText;

    const v0, 0x7f0802be

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->e:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->c:Landroid/widget/EditText;

    new-instance v2, Laet;

    invoke-direct {v2, p0}, Laet;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->d:Landroid/widget/EditText;

    new-instance v2, Laeu;

    invoke-direct {v2, p0}, Laeu;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)V

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0802b0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->h:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->h:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonByType(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->h:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v2, Laev;

    invoke-direct {v2, p0}, Laev;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)V

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->h:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setClickable(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "FIRST_TIME"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v3}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->k:I

    const v2, 0x11171

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->k:I

    const v2, 0x11172

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->k:I

    if-ne v0, v5, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    const v0, 0x7f0802bf

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "<u>"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->mContext:Landroid/content/Context;

    const v4, 0x7f0b089e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</u>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Laew;

    invoke-direct {v2, p0}, Laew;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->k:I

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->mContext:Landroid/content/Context;

    const v2, 0x7f0b08a0

    invoke-static {v0, v2}, Lha;->b(Landroid/content/Context;I)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->e:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->j:Lho;

    invoke-virtual {v2}, Lho;->bh()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    const v0, 0x7f0802c1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0802bd

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v6}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_2
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x65c5

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void

    :cond_3
    invoke-virtual {p0, v3}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->g:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "<u>"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->mContext:Landroid/content/Context;

    const v3, 0x7f0b089f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</u>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->g:Landroid/widget/TextView;

    new-instance v1, Laex;

    invoke-direct {v1, p0}, Laex;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802c1

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0802bd

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v6}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->e:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->j:Lho;

    invoke-virtual {v1}, Lho;->bh()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->k:I

    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->k:I

    const/16 v1, 0x3ef

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_2

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v0, v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onOptionClick(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity;->finish()V

    return-void
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    return-void
.end method

.method public final onStart()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onStart()V

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->k:I

    const v1, 0x11171

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->k:I

    const v1, 0x11172

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->k:I

    const v1, 0x11173

    if-ne v0, v1, :cond_1

    :cond_0
    const v0, 0x7f0b0001

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->setBackText(I)V

    :cond_1
    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 4

    const/16 v3, 0x31

    const/4 v1, 0x1

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->k:I

    const v2, 0x11171

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->k:I

    const v2, 0x11172

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity$a;->k:I

    const v2, 0x11173

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    const v0, 0x7f0b00d5

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    invoke-virtual {p1, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    invoke-virtual {p1, v3}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const v0, 0x7f0b00c9

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    invoke-virtual {p1, v3}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    const v0, 0x7f02032b

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonWithImageResource(I)V

    goto :goto_1
.end method

.class public final Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a$a;
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private g:Lcd;

.field private h:Lho;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity;Landroid/content/Context;I)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity;

    const v0, 0x7f0300d9

    invoke-direct {p0, p2, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->g:Lcd;

    const/16 v0, -0x3e8

    iput v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->i:I

    const-string v0, "86"

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->j:Ljava/lang/String;

    new-instance v0, Laec;

    invoke-direct {v0, p0}, Laec;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->k:Landroid/os/Handler;

    iput p3, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->i:I

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Lho;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->h:Lho;

    return-object v0
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->j:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;I)V
    .locals 5

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b015f

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b05f4

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b011e

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3e8 -> :sswitch_1
        -0x64 -> :sswitch_2
        0x0 -> :sswitch_0
        0xcb -> :sswitch_3
    .end sparse-switch
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0118

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b00ef

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b00f2

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b0033

    new-instance v2, Laei;

    invoke-direct {v2, p0}, Laei;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    invoke-static {p2}, Lde;->a(Ljava/lang/String;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->g:Lcd;

    invoke-interface {v1, p1, v0}, Lcd;->b(Ljava/lang/String;[B)I

    goto :goto_0
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic b()V
    .locals 1

    invoke-static {}, Lcw;->d()Lcw;

    move-result-object v0

    invoke-virtual {v0}, Lcw;->i()Z

    return-void
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;I)V
    .locals 5

    sparse-switch p1, :sswitch_data_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

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
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b05e9

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b05eb

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b05ea

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b05ec

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b05ed

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b05ee

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b05ef

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_7
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b05f0

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x12 -> :sswitch_1
        0xca -> :sswitch_2
        0xcb -> :sswitch_3
        0xce -> :sswitch_4
        0xd1 -> :sswitch_5
        0xff -> :sswitch_6
        0x194 -> :sswitch_7
    .end sparse-switch
.end method

.method public static synthetic c(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)V
    .locals 3

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->i:I

    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "JOB_KEY"

    iget v2, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->i:I

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

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->setResult(ILandroid/content/Intent;)V

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    return-void
.end method

.method public static synthetic d(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic e(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic f(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic g(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic h(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic i(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic j(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic k(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic l(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    return-object v0
.end method

.method public static synthetic m(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method public static synthetic n(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method public static synthetic o(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic p(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Lcd;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->g:Lcd;

    return-object v0
.end method

.method static synthetic q(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic r(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic s(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic t(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_0
    return-void
.end method

.method public final onBackClick()V
    .locals 3

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->i:I

    const v1, 0x11171

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->i:I

    const v1, 0x11172

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->i:I

    const v1, 0x11173

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "JOB_KEY"

    iget v2, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->i:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    goto :goto_0
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onCreate()V
    .locals 10

    const v9, 0x7f0802af

    const v8, 0x7f0802ae

    const/16 v7, 0x22

    const/16 v6, 0x21

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->k:Landroid/os/Handler;

    new-instance v2, Lba;

    invoke-direct {v2, v0, v1}, Lba;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->g:Lcd;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->h:Lho;

    const v0, 0x7f0802ab

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->b:Landroid/widget/TextView;

    const v0, 0x7f0802ac

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->c:Landroid/widget/EditText;

    const v0, 0x7f0802ad

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->d:Landroid/widget/EditText;

    const v0, 0x7f0802aa

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Laed;

    invoke-direct {v1, p0}, Laed;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->c:Landroid/widget/EditText;

    new-instance v1, Laef;

    invoke-direct {v1, p0}, Laef;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->d:Landroid/widget/EditText;

    new-instance v1, Laeg;

    invoke-direct {v1, p0}, Laeg;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0802b0

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonByType(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v1, Laeh;

    invoke-direct {v1, p0}, Laeh;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->e:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setClickable(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b05f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a$a;

    invoke-direct {v2, p0, v8}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a$a;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v5, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v8}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0b02

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a$a;

    invoke-direct {v2, p0, v9}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a$a;-><init>(Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v2, v5, v0, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v9}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->i:I

    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->i:I

    const/16 v1, 0x3ef

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->d:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "+"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x65c5

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void
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

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity;->finish()V

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
    .locals 6

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    invoke-static {}, Lda;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v3}, Lda;->a(Z)V

    invoke-static {}, Lda;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lda;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lda;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lda;->a(Z)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->b:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "+"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->c:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->d:Landroid/widget/EditText;

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "+"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b00c9

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    const v0, 0x7f02032e

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonWithImageResource(I)V

    return-void
.end method

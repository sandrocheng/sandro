.class public final Laqo;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laqo$a;
    }
.end annotation


# instance fields
.field a:Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/TextView;

.field private e:Z

.field private f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private g:Ljava/lang/String;

.field private h:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f03007e

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laqo;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Laqo;->g:Ljava/lang/String;

    new-instance v0, Laqp;

    invoke-direct {v0, p0}, Laqp;-><init>(Laqo;)V

    iput-object v0, p0, Laqo;->h:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Laqo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laqo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Laqo;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 0

    iput-object p1, p0, Laqo;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object p1
.end method

.method static synthetic a(Laqo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x2

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Laqo;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Laqo;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00a6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Laqo;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00a9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Laqo;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0045

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Laqs;

    invoke-direct {v2, p0, v0}, Laqs;-><init>(Laqo;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    iget-object v1, p0, Laqo;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0033

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Laqt;

    invoke-direct {v2, v0}, Laqt;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(Ljava/lang/String;Landroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void
.end method

.method static synthetic a(Laqo;Z)Z
    .locals 0

    iput-boolean p1, p0, Laqo;->e:Z

    return p1
.end method

.method static synthetic b(Laqo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laqo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Laqo;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    iget-object v0, p0, Laqo;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method static synthetic d(Laqo;)I
    .locals 3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, LQQPIM/FBMobile;

    invoke-direct {v0}, LQQPIM/FBMobile;-><init>()V

    iget-object v2, p0, Laqo;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, LQQPIM/FBMobile;->setPhone(Ljava/lang/String;)V

    iget-object v2, p0, Laqo;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, LQQPIM/FBMobile;->setCity(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-class v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/wupsession/WupSessionManager;->reportMobile(Ljava/util/ArrayList;)I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v0}, La;->b(I)Lfc;

    move-result-object v0

    sget-object v1, Lfc;->a:Lfc;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Laqo;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laqo;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Laqo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laqo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Laqo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laqo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Laqo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laqo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Laqo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laqo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Laqo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laqo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Laqo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laqo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic l(Laqo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laqo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Laqo;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Laqo;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic n(Laqo;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Laqo;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Laqo;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Laqo;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Laqo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laqo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic q(Laqo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laqo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic r(Laqo;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Laqo;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic s(Laqo;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laqo;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic t(Laqo;)V
    .locals 3

    iget-boolean v0, p0, Laqo;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Laqo;->h:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Laqo;->mContext:Landroid/content/Context;

    iget-object v1, p0, Laqo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0431

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onCreate()V
    .locals 3

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    iget-object v0, p0, Laqo;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0bbc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laqo;->g:Ljava/lang/String;

    const v0, 0x7f080157

    invoke-virtual {p0, v0}, Laqo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Laqo;->b:Landroid/widget/EditText;

    const v0, 0x7f080159

    invoke-virtual {p0, v0}, Laqo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Laqo;->c:Landroid/widget/EditText;

    const v0, 0x7f08015b

    invoke-virtual {p0, v0}, Laqo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laqo;->d:Landroid/widget/TextView;

    iget-object v0, p0, Laqo;->c:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Laqo;->c:Landroid/widget/EditText;

    iget-object v1, p0, Laqo;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    iget-object v0, p0, Laqo;->c:Landroid/widget/EditText;

    const/high16 v1, 0x4188

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    iget-object v0, p0, Laqo;->c:Landroid/widget/EditText;

    iget-object v1, p0, Laqo;->mContext:Landroid/content/Context;

    const v2, 0x7f0b007f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Laqo;->b:Landroid/widget/EditText;

    new-instance v1, Laqo$a;

    iget-object v2, p0, Laqo;->b:Landroid/widget/EditText;

    invoke-direct {v1, p0, v2}, Laqo$a;-><init>(Laqo;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f08015a

    invoke-virtual {p0, v0}, Laqo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v1, Laqr;

    invoke-direct {v1, p0}, Laqr;-><init>(Laqo;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b007e

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method

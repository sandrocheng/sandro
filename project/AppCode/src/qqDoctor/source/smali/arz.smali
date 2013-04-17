.class public Larz;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# static fields
.field protected static a:I


# instance fields
.field protected b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field protected c:Lasn;

.field protected d:Lib;

.field e:Lrv;

.field protected f:Z

.field protected g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Llj;",
            ">;"
        }
    .end annotation
.end field

.field protected h:I

.field protected i:Lajd;

.field protected j:Landroid/widget/AdapterView$OnItemClickListener;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Z

.field private n:Z

.field private o:Landroid/os/Handler;

.field private p:Landroid/os/Messenger;

.field private q:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Larz;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    const/4 v1, 0x0

    if-nez p2, :cond_0

    const v0, 0x7f03006d

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    const-string v0, "BaseFileSafeView"

    iput-object v0, p0, Larz;->k:Ljava/lang/String;

    iput-boolean v1, p0, Larz;->f:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Larz;->g:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Larz;->m:Z

    iput-boolean v1, p0, Larz;->n:Z

    new-instance v0, Lasa;

    invoke-direct {v0, p0}, Lasa;-><init>(Larz;)V

    iput-object v0, p0, Larz;->o:Landroid/os/Handler;

    new-instance v0, Lasc;

    invoke-direct {v0, p0}, Lasc;-><init>(Larz;)V

    iput-object v0, p0, Larz;->j:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lasj;

    invoke-direct {v0, p0}, Lasj;-><init>(Larz;)V

    iput-object v0, p0, Larz;->q:Landroid/content/BroadcastReceiver;

    iput p2, p0, Larz;->l:I

    return-void

    :cond_0
    const v0, 0x7f03006e

    goto :goto_0
.end method

.method static synthetic a(Larz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Larz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Larz;Ljava/util/ArrayList;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    invoke-direct {p0, p1}, Larz;->c(Ljava/util/ArrayList;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Larz;Llj;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 4

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Larz;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b09dd

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v1, 0x7f0b09e4

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v1, 0x7f0b0338

    new-instance v2, Lasg;

    invoke-direct {v2, p0, v0, p1}, Lasg;-><init>(Larz;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;Llj;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b0033

    new-instance v2, Lasi;

    invoke-direct {v2, v0}, Lasi;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-object v0
.end method

.method static synthetic a(Larz;I)V
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Larz;->h:I

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Larz;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/filesafe/GalleryActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "position"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Larz;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Larz;->h:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Larz;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llj;

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lasd;

    invoke-direct {v2, p0, v0}, Lasd;-><init>(Larz;Llj;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private a(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 3

    const v2, 0x7f090014

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Larz;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackGroundColor(Landroid/content/Context;I)V

    iget v0, p0, Larz;->l:I

    if-nez v0, :cond_1

    const v0, 0x7f0b09b5

    :goto_1
    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    iget-boolean v0, p0, Larz;->f:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    const v0, 0x7f020333

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonWithImageResource(I)V

    :goto_2
    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    iget-object v0, p0, Larz;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackGroundColor(Landroid/content/Context;I)V

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleBarLayoutPadding()V

    goto :goto_0

    :cond_1
    const v0, 0x7f0b0a32

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    const v0, 0x7f020338

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonWithImageResource(I)V

    iget-object v0, p0, Larz;->g:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Larz;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p1, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonEnable(Z)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonEnable(Z)V

    goto :goto_2
.end method

.method static synthetic a(Larz;Z)Z
    .locals 0

    iput-boolean p1, p0, Larz;->n:Z

    return p1
.end method

.method static synthetic b(Larz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Larz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Larz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Larz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private c(Ljava/util/ArrayList;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Llj;",
            ">;)",
            "Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;"
        }
    .end annotation

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Larz;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0a36

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v1, 0x7f0b09e1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v1, 0x7f0b0338

    new-instance v2, Lase;

    invoke-direct {v2, p0, v0, p1}, Lase;-><init>(Larz;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;Ljava/util/ArrayList;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b0033

    new-instance v2, Lasf;

    invoke-direct {v2, v0}, Lasf;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-object v0
.end method

.method static synthetic d(Larz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Larz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Larz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Larz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Larz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Larz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Larz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Larz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Larz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Larz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Larz;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Larz;->o:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Larz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Larz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Larz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Larz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic l(Larz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Larz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Larz;)I
    .locals 1

    iget v0, p0, Larz;->l:I

    return v0
.end method

.method static synthetic n(Larz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Larz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic o(Larz;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Larz;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Larz;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Larz;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic q(Larz;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Larz;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic r(Larz;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Larz;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 4

    iget-object v0, p0, Larz;->mContext:Landroid/content/Context;

    iget-object v1, p0, Larz;->mContext:Landroid/content/Context;

    const v2, 0x7f0b09ef

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, La;->a(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    move-result-object v0

    iput-object v0, p0, Larz;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    new-instance v0, Lasn;

    iget-object v1, p0, Larz;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lasn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Larz;->c:Lasn;

    invoke-virtual {p0}, Larz;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    iget-object v1, p0, Larz;->q:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "filesafe.reloadData"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final a(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Larz;->mContext:Landroid/content/Context;

    iget-object v1, p0, Larz;->p:Landroid/os/Messenger;

    invoke-static {v0, p1, v1}, Lfi;->a(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Messenger;)V

    return-void
.end method

.method protected b()V
    .locals 6

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0}, Larz;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Larz;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-direct {p0, v0}, Larz;->a(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V

    return-void

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v1

    if-nez v1, :cond_6

    iget v1, p0, Larz;->l:I

    if-nez v1, :cond_4

    iget v1, p0, Larz;->h:I

    if-nez v1, :cond_3

    iget-object v1, p0, Larz;->mContext:Landroid/content/Context;

    const v5, 0x7f0b09ce

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setText(Ljava/lang/String;)V

    :goto_2
    iget-boolean v1, p0, Larz;->f:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_3
    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setVisible(I)V

    :cond_2
    :goto_4
    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setNumber(I)V

    invoke-virtual {p0, v0}, Larz;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Larz;->mContext:Landroid/content/Context;

    const v5, 0x7f0b09d2

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Larz;->mContext:Landroid/content/Context;

    const v5, 0x7f0b09d5

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setText(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move v1, v3

    goto :goto_3

    :cond_6
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v1

    const/4 v5, 0x1

    if-ne v1, v5, :cond_8

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    iget-boolean v1, p0, Larz;->f:Z

    if-eqz v1, :cond_7

    move v1, v3

    :goto_5
    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setVisible(I)V

    goto :goto_4

    :cond_7
    move v1, v2

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_2

    iget-boolean v1, p0, Larz;->f:Z

    if-eqz v1, :cond_9

    move v1, v3

    :goto_6
    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setVisible(I)V

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setCheck(Z)V

    goto :goto_4

    :cond_9
    move v1, v2

    goto :goto_6
.end method

.method public final b(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Llj;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Larz;->mContext:Landroid/content/Context;

    iget-object v1, p0, Larz;->p:Landroid/os/Messenger;

    invoke-static {v0, p1, v1}, Lfi;->b(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Messenger;)V

    return-void
.end method

.method public final c()Lrv;
    .locals 1

    iget-object v0, p0, Larz;->e:Lrv;

    if-nez v0, :cond_0

    new-instance v0, Lrv;

    invoke-direct {v0}, Lrv;-><init>()V

    iput-object v0, p0, Larz;->e:Lrv;

    :cond_0
    iget-object v0, p0, Larz;->e:Lrv;

    return-object v0
.end method

.method public createOperatingBarDataList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;",
            ">;"
        }
    .end annotation

    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const v2, 0x7f0b09d5

    invoke-direct {v0, v3, v2, v4}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(III)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const v2, 0x7f0b09db

    invoke-direct {v0, v4, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(III)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const v2, 0x7f0b0015

    invoke-direct {v0, v5, v2, v5}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(III)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setVisible(I)V

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v6}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setVisible(I)V

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v6}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setVisible(I)V

    return-object v1
.end method

.method public loadDataList()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->loadDataList()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    invoke-virtual {v0}, Lho;->dG()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Larz;->n:Z

    iget-object v0, p0, Larz;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lfi;->b(Landroid/content/Context;)V

    :goto_0
    iget-boolean v0, p0, Larz;->n:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Larz;->mContext:Landroid/content/Context;

    iget-object v1, p0, Larz;->p:Landroid/os/Messenger;

    invoke-static {v0, v1}, Lfi;->a(Landroid/content/Context;Landroid/os/Messenger;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Larz;->d:Lib;

    if-nez v0, :cond_1

    new-instance v0, Lib;

    invoke-direct {v0}, Lib;-><init>()V

    iput-object v0, p0, Larz;->d:Lib;

    :cond_1
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Larz;->m:Z

    :goto_0
    return-void

    :cond_1
    iput-boolean v1, p0, Larz;->m:Z

    goto :goto_0
.end method

.method public onBackClick()V
    .locals 2

    iget-boolean v0, p0, Larz;->f:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Larz;->onOptionClick(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    iget v0, p0, Larz;->l:I

    sget v1, Larz;->a:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Larz;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finishActivityWithAnim()V

    goto :goto_0
.end method

.method protected onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 1

    const/4 v0, 0x1

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateImageLoaderService:Z

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateLoadingTemplateUI:Z

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mCreateEmptyTemplateUI:Z

    iput v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mEmptyTemplateType:I

    return-void
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    invoke-virtual {p0}, Larz;->a()V

    iget-object v0, p0, Larz;->p:Landroid/os/Messenger;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Larz;->o:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Larz;->p:Landroid/os/Messenger;

    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    iget-boolean v0, p0, Larz;->f:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v0, p0, Larz;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setContextItemPosition(I)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v3, p0, Larz;->mContext:Landroid/content/Context;

    const v4, 0x7f0b09db

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/4 v3, 0x1

    iput v3, v0, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v3, p0, Larz;->mContext:Landroid/content/Context;

    const v4, 0x7f0b09dd

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/4 v3, 0x2

    iput v3, v0, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, p0, Larz;->l:I

    if-nez v0, :cond_1

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget v0, p0, Larz;->h:I

    if-nez v0, :cond_2

    iget-object v0, p0, Larz;->mContext:Landroid/content/Context;

    const v4, 0x7f0b09f9

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/4 v0, 0x3

    iput v0, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setDataAdapter(Ljava/util/ArrayList;)V

    new-instance v0, Lasb;

    invoke-direct {v0, p0, v1}, Lasb;-><init>(Larz;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Larz;->mContext:Landroid/content/Context;

    const v2, 0x7f0b09e5

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->show()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Larz;->mContext:Landroid/content/Context;

    const v4, 0x7f0b09fa

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onDestroy()V

    invoke-virtual {p0}, Larz;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    iget-object v1, p0, Larz;->q:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onHandlerMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onHandlerMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Larz;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Larz;->b:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Larz;->refreshListData()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Larz;->l:I

    if-nez v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Larz;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/filesafe/FileSafeFolderGridActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget v1, p0, Larz;->h:I

    if-nez v1, :cond_1

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0}, Larz;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v1, "type"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Larz;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/filesafe/FileSafeAddEncryFileListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "type"

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0}, Larz;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1, v0, v4}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_3
    if-ne v0, v3, :cond_4

    iget-object v0, p0, Larz;->i:Lajd;

    invoke-virtual {v0}, Lajd;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Larz;->c(Ljava/util/ArrayList;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    goto :goto_1

    :cond_4
    if-ne v0, v4, :cond_0

    iget-object v0, p0, Larz;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Larz;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Larz;->i:Lajd;

    invoke-virtual {v0}, Lajd;->a()V

    goto :goto_1
.end method

.method public onOptionClick(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onOptionClick(I)V

    iget-object v0, p0, Larz;->g:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Larz;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Larz;->mContext:Landroid/content/Context;

    iget-object v1, p0, Larz;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0a15

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Larz;->f:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Larz;->f:Z

    invoke-virtual {p0}, Larz;->refreshListData()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onPause()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Larz;->m:Z

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    iget-boolean v0, p0, Larz;->m:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Larz;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Larz;->g:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Larz;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-nez v0, :cond_2

    const v0, 0x7f0200c9

    invoke-virtual {p0, v0}, Larz;->setEmptyImage(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Larz;->hideEmptyView()V

    goto :goto_0
.end method

.method public refreshListData()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->refreshListData()V

    invoke-virtual {p0}, Larz;->b()V

    return-void
.end method

.method protected subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 0

    invoke-direct {p0, p1}, Larz;->a(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V

    return-void
.end method

.class public final Lbcu;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:I

.field private i:Lho;

.field private j:Lyj;

.field private k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private l:Lcom/tencent/tmsecure/module/permission/PermissionManager;

.field private m:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f03009d

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    iput v0, p0, Lbcu;->h:I

    new-instance v0, Lbcx;

    invoke-direct {v0, p0}, Lbcx;-><init>(Lbcu;)V

    iput-object v0, p0, Lbcu;->m:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lbcu;I)I
    .locals 0

    iput p1, p0, Lbcu;->h:I

    return p1
.end method

.method static synthetic a(Lbcu;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lbcu;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method public static a()V
    .locals 2

    sget-object v0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;

    :cond_0
    sget-object v0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;

    iget-boolean v0, v0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;->f:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;

    if-nez v0, :cond_1

    new-instance v0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;

    :cond_1
    sget-object v0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;->g:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method static synthetic b(Lbcu;)Lho;
    .locals 1

    iget-object v0, p0, Lbcu;->i:Lho;

    return-object v0
.end method

.method private b()V
    .locals 5

    const/4 v4, 0x7

    const/16 v3, 0x8

    iget-object v0, p0, Lbcu;->b:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getItemByModelID(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    move-result-object v0

    iget-object v1, p0, Lbcu;->mContext:Landroid/content/Context;

    const v2, 0x7f0b09b9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbcu;->b:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getItemByModelID(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    move-result-object v0

    iget-object v1, p0, Lbcu;->mContext:Landroid/content/Context;

    const v2, 0x7f0b08af

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbcu;->b:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getItemByModelID(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    move-result-object v0

    iget-object v1, p0, Lbcu;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0294

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lbcu;->b:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getItemByModelID(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    move-result-object v0

    iget-object v1, p0, Lbcu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget v0, p0, Lbcu;->h:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lbcu;->b:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getItemByModelID(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    move-result-object v0

    iget-object v1, p0, Lbcu;->mContext:Landroid/content/Context;

    const v2, 0x7f0b08ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lbcu;->b:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->notifyDataSetChanged()V

    return-void

    :cond_0
    iget-object v0, p0, Lbcu;->b:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getItemByModelID(I)Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    move-result-object v0

    iget-object v1, p0, Lbcu;->mContext:Landroid/content/Context;

    const v2, 0x7f0b08ae

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->setContent(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic c(Lbcu;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbcu;->m:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic d(Lbcu;)V
    .locals 0

    invoke-direct {p0}, Lbcu;->b()V

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onBackClick()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "extra_back_to_main"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lbcu;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    return-void
.end method

.method public final onCreate()V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    iget-object v0, p0, Lbcu;->l:Lcom/tencent/tmsecure/module/permission/PermissionManager;

    if-nez v0, :cond_0

    const-class v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/permission/PermissionManager;

    iput-object v0, p0, Lbcu;->l:Lcom/tencent/tmsecure/module/permission/PermissionManager;

    :cond_0
    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lbcu;->i:Lho;

    new-instance v0, Laaj;

    iget-object v3, p0, Lbcu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Laaj;-><init>(Landroid/content/Context;)V

    new-instance v0, Lyj;

    iget-object v3, p0, Lbcu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lyj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbcu;->j:Lyj;

    const v0, 0x7f0801e1

    invoke-virtual {p0, v0}, Lbcu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbcu;->c:Landroid/widget/TextView;

    const v0, 0x7f0801e0

    invoke-virtual {p0, v0}, Lbcu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbcu;->d:Landroid/widget/TextView;

    const v0, 0x7f08010e

    invoke-virtual {p0, v0}, Lbcu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbcu;->e:Landroid/widget/ImageView;

    const v0, 0x7f0801de

    invoke-virtual {p0, v0}, Lbcu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbcu;->f:Landroid/widget/ImageView;

    const v0, 0x7f0801df

    invoke-virtual {p0, v0}, Lbcu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbcu;->g:Landroid/widget/ImageView;

    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Lbcu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lbcu;->a:Landroid/widget/ListView;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    iget-object v3, p0, Lbcu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v5, v5}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lbcu;->b:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    iget-object v0, p0, Lbcu;->a:Landroid/widget/ListView;

    iget-object v3, p0, Lbcu;->b:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lbcu;->a:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lbcu;->m:Landroid/os/Handler;

    const-wide/16 v3, 0xc8

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v3, p0, Lbcu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbcu;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lbcu;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lbcu;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v0, p0, Lbcu;->k:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v3, 0x7f0b0693

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    invoke-virtual {p0}, Lbcu;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "SHORTCUT_TO_SECURE_SPACE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbcu;->j:Lyj;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lyj;->a(ILjava/lang/String;)V

    invoke-virtual {p0}, Lbcu;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v3, 0x66d9

    invoke-virtual {v0, v3}, Lnd;->a(I)V

    :cond_1
    iget-object v0, p0, Lbcu;->i:Lho;

    invoke-virtual {v0}, Lho;->cg()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbcu;->i:Lho;

    invoke-virtual {v0}, Lho;->ci()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    if-nez v0, :cond_3

    iget-object v0, p0, Lbcu;->i:Lho;

    invoke-virtual {v0}, Lho;->ch()V

    sget-object v0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;

    if-nez v0, :cond_2

    new-instance v0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;

    :cond_2
    sget-object v0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;

    iget-object v2, v0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;->g:Landroid/os/Handler;

    const v3, 0x7f02013d

    const v4, 0x7f0b0ac9

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    iget-object v0, v0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public final onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onDestroy()V

    iget-object v0, p0, Lbcu;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lbcu;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    invoke-static {}, Lary;->a()Lary;

    move-result-object v0

    invoke-virtual {v0}, Lary;->b()V

    invoke-virtual {p0}, Lbcu;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "SHORTCUT_TO_SECURE_SPACE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lrj;->a()Lrj;

    move-result-object v0

    invoke-virtual {v0}, Lrj;->b()V

    :cond_0
    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v4

    iget-object v0, p0, Lbcu;->b:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->getDataList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;->getID()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbcu;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    :sswitch_0
    const/16 v0, 0x65fc

    invoke-virtual {v4, v0}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbcu;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SecureSpaceActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Laai;->a()Laai;

    move-result-object v1

    invoke-virtual {v1}, Laai;->b()V

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lbcu;->h:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v0, 0x6648

    invoke-virtual {v4, v0}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbcu;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/permission/PermissionMonitorTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "root_state"

    iget v2, p0, Lbcu;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :sswitch_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v5, "mounted"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    :goto_1
    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lbcu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lbcu;->mContext:Landroid/content/Context;

    const v3, 0x7f0b088a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, La;->b()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lbcu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lbcu;->mContext:Landroid/content/Context;

    const v3, 0x7f0b088d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_4
    invoke-static {}, Lfi;->c()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lbcu;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lbcu;->mContext:Landroid/content/Context;

    const v3, 0x7f0b088b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    move-object v0, v1

    goto/16 :goto_0

    :cond_5
    const/16 v0, 0x6649

    invoke-virtual {v4, v0}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbcu;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/filesafe/FileSafeGridActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_0

    :sswitch_3
    const/16 v0, 0x664a

    invoke-virtual {v4, v0}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbcu;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/privacylock/PrivacyLockTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_1
        0x8 -> :sswitch_0
        0x21 -> :sswitch_2
        0x30 -> :sswitch_3
    .end sparse-switch
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "SHORTCUT_TO_SECURE_SPACE"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbcu;->j:Lyj;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lyj;->a(ILjava/lang/String;)V

    invoke-virtual {p0}, Lbcu;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    :cond_0
    return-void
.end method

.method public final onOptionClick(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbcu;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/privacy/PrivacyPswCenterListActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lbcu;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x671c

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onPause()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onPause()V

    iget-object v0, p0, Lbcu;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lbcu;->g:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    sget-object v0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;

    invoke-direct {v0}, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;-><init>()V

    sput-object v0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;

    :cond_0
    sget-object v0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;->a:Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;

    iget-object v0, v0, Lcom/tencent/qqpimsecure/service/PrivacySafeSuspensionWindow;->g:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onResume()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/high16 v4, 0x3f00

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v2, 0x43b4

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    invoke-virtual {v0, v8}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setFillBefore(Z)V

    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    invoke-virtual {v0, v3}, Landroid/view/animation/RotateAnimation;->setRepeatMode(I)V

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v2, p0, Lbcu;->f:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    const/high16 v4, 0x3f80

    invoke-direct {v2, v4, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v2, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V

    invoke-virtual {v0, v7}, Landroid/view/animation/RotateAnimation;->setRepeatCount(I)V

    invoke-virtual {v2, v3}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lbcu;->g:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lbcu;->f:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v1, Lbcv;

    invoke-direct {v1, p0, v2}, Lbcv;-><init>(Lbcu;Landroid/view/animation/AlphaAnimation;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-direct {p0}, Lbcu;->b()V

    iget-object v0, p0, Lbcu;->e:Landroid/widget/ImageView;

    const v1, 0x7f020193

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lbcu;->d:Landroid/widget/TextView;

    const v1, 0x7f0b08a8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbcu;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lbcu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbcu;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lbcu;->mContext:Landroid/content/Context;

    const v2, 0x7f0b08ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbcu;->i:Lho;

    invoke-virtual {v0}, Lho;->w()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbcw;

    invoke-direct {v1, p0}, Lbcw;-><init>(Lbcu;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onStart()V

    const v0, 0x7f0b0001

    invoke-static {p0, v0}, La;->a(Lcom/tencent/qqpimsecure/uilib/view/BaseView;I)V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b0299

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method

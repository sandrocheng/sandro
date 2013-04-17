.class public final Lbhc;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Intent;

.field private f:Lho;

.field private g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private h:Lcd;

.field private i:Landroid/widget/ImageView;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Lyj;

.field private n:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f03013e

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lbhc;->a:Landroid/widget/EditText;

    iput-object v1, p0, Lbhc;->b:Landroid/widget/EditText;

    const-string v0, ""

    iput-object v0, p0, Lbhc;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbhc;->d:Ljava/lang/String;

    new-instance v0, Lbhd;

    invoke-direct {v0, p0}, Lbhd;-><init>(Lbhc;)V

    iput-object v0, p0, Lbhc;->n:Landroid/text/TextWatcher;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lbhc;->f:Lho;

    new-instance v0, Lyj;

    invoke-direct {v0, p1}, Lyj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbhc;->m:Lyj;

    return-void
.end method

.method static synthetic a(Lbhc;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lbhc;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method private a()V
    .locals 6

    const/4 v5, 0x2

    iget-object v0, p0, Lbhc;->mContext:Landroid/content/Context;

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

    iput-object v0, p0, Lbhc;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lbhc;->i:Landroid/widget/ImageView;

    iget-object v2, p0, Lbhc;->mContext:Landroid/content/Context;

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

    new-instance v2, Lbhh;

    invoke-direct {v2, p0}, Lbhh;-><init>(Lbhc;)V

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080036

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v2, Lbhk;

    invoke-direct {v2, p0}, Lbhk;-><init>(Lbhc;)V

    invoke-virtual {v2}, Lbhk;->start()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v3, p0, Lbhc;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lbhc;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0124

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setView(Landroid/view/View;)V

    const v1, 0x7f0b0045

    new-instance v3, Lbhi;

    invoke-direct {v3, p0, v0, v2}, Lbhi;-><init>(Lbhc;Landroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v2, v1, v3, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v1, Lbhj;

    invoke-direct {v1, v2}, Lbhj;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v2, v0, v1, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void
.end method

.method static synthetic a(Lbhc;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lbhc;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbhc;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lbhc;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v0, p0, Lbhc;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b00ef

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v0, p0, Lbhc;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b00f9

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    iget-object v0, p0, Lbhc;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    new-instance v0, Lbhl;

    invoke-direct {v0, p0, p1}, Lbhl;-><init>(Lbhc;Ljava/lang/String;)V

    invoke-virtual {v0}, Lbhl;->start()V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lbhc;->b(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lbhc;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lbhc;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIRELESS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic c(Lbhc;)Lcd;
    .locals 1

    iget-object v0, p0, Lbhc;->h:Lcd;

    return-object v0
.end method

.method static synthetic d(Lbhc;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    iget-object v0, p0, Lbhc;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method static synthetic e(Lbhc;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbhc;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lbhc;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbhc;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lbhc;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbhc;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lbhc;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbhc;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lbhc;)V
    .locals 1

    new-instance v0, Lbhk;

    invoke-direct {v0, p0}, Lbhk;-><init>(Lbhc;)V

    invoke-virtual {v0}, Lbhk;->start()V

    return-void
.end method

.method static synthetic j(Lbhc;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbhc;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lbhc;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbhc;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lbhc;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbhc;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic m(Lbhc;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbhc;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic n(Lbhc;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbhc;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic o(Lbhc;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbhc;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic p(Lbhc;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbhc;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final createOperatingBarDataList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const v2, 0x7f0b04b5

    const/4 v3, 0x1

    invoke-direct {v0, v4, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(III)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    return-object v1
.end method

.method public final onBackClick()V
    .locals 2

    iget v0, p0, Lbhc;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbhc;->m:Lyj;

    invoke-virtual {v0}, Lyj;->a()V

    :cond_0
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    return-void
.end method

.method public final onCreate()V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    const-string v0, ""

    iput-object v0, p0, Lbhc;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbhc;->d:Ljava/lang/String;

    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lbhc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lbhc;->a:Landroid/widget/EditText;

    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lbhc;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lbhc;->b:Landroid/widget/EditText;

    invoke-virtual {p0}, Lbhc;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lbhc;->e:Landroid/content/Intent;

    iget-object v0, p0, Lbhc;->e:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbhc;->e:Landroid/content/Intent;

    const-string v1, "action"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbhc;->l:I

    iget-object v0, p0, Lbhc;->e:Landroid/content/Intent;

    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbhc;->j:I

    iget v0, p0, Lbhc;->j:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbhc;->e:Landroid/content/Intent;

    const-string v1, "PkgName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbhc;->k:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lbhc;->f:Lho;

    invoke-virtual {v0}, Lho;->ci()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbhc;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbhc;->a:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lbhc;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lbhc;->mContext:Landroid/content/Context;

    new-instance v1, Laz;

    invoke-direct {v1, v0}, Laz;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lbhc;->h:Lcd;

    iget-object v0, p0, Lbhc;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lbhc;->n:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lbhc;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lbhc;->n:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public final onHandlerMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v1, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lbhc;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbhc;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbhc;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iput-object v1, p0, Lbhc;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_1
    invoke-virtual {p0}, Lbhc;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    iget-object v0, p0, Lbhc;->f:Lho;

    iget-object v1, p0, Lbhc;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lho;->z(Ljava/lang/String;)V

    iget-object v0, p0, Lbhc;->mContext:Landroid/content/Context;

    iget v1, p0, Lbhc;->j:I

    iget-object v2, p0, Lbhc;->k:Ljava/lang/String;

    iget v3, p0, Lbhc;->l:I

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/tencent/qqpimsecure/ui/activity/privacy/PrivacyPatternPasswordSettingActivity;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {v4, v1, v3, v2}, La;->a(Landroid/content/Intent;IILjava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbhc;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbhc;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbhc;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iput-object v1, p0, Lbhc;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v1, p0, Lbhc;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lbhc;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0131

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lbhc;->mContext:Landroid/content/Context;

    const v1, 0x7f0b015f

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lbhc;->mContext:Landroid/content/Context;

    const v1, 0x7f0b05f4

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lbhc;->mHandler:Landroid/os/Handler;

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lbhc;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :sswitch_4
    invoke-direct {p0}, Lbhc;->a()V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lbhc;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0119

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lbhc;->mContext:Landroid/content/Context;

    const v1, 0x7f0b011a

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    invoke-direct {p0}, Lbhc;->a()V

    goto/16 :goto_0

    :sswitch_7
    iget-object v0, p0, Lbhc;->mContext:Landroid/content/Context;

    const v1, 0x7f0b011e

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lbhc;->i:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v1, p0, Lbhc;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lbhc;->i:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbhc;->i:Landroid/widget/ImageView;

    const v1, 0x7f0201be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lbhc;->mContext:Landroid/content/Context;

    const v1, 0x7f0b011d

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x186a0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

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

.method public final onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 6

    const v5, 0x7f0b0033

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lbhc;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbhc;->c:Ljava/lang/String;

    iget-object v0, p0, Lbhc;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbhc;->d:Ljava/lang/String;

    iget-object v0, p0, Lbhc;->mContext:Landroid/content/Context;

    invoke-static {v0}, La;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lbhc;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0af7

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v1, 0x7f0b0af8

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v1, 0x7f0b0af9

    new-instance v2, Lbhm;

    invoke-direct {v2, p0, v0}, Lbhm;-><init>(Lbhc;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v1, Lbhe;

    invoke-direct {v1, v0}, Lbhe;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v5, v1, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbhc;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbhc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lbhc;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0ad1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbhc;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbhc;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lbhc;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0ad5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbhc;->c:Ljava/lang/String;

    iget-object v1, p0, Lbhc;->d:Ljava/lang/String;

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v3, p0, Lbhc;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lbhc;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Lbhc;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v2, p0, Lbhc;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v3, 0x7f0b00ef

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v2, p0, Lbhc;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v3, 0x7f0b00f2

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    iget-object v2, p0, Lbhc;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    new-instance v3, Lbhf;

    invoke-direct {v3, p0}, Lbhf;-><init>(Lbhc;)V

    invoke-virtual {v2, v5, v3, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    iget-object v2, p0, Lbhc;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    new-instance v2, Lbhg;

    invoke-direct {v2, p0, v0, v1}, Lbhg;-><init>(Lbhc;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lbhg;->start()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onOptionClick(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onOptionClick(I)V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b0ae2

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method

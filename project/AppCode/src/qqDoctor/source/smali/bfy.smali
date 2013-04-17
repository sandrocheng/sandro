.class public abstract Lbfy;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Landroid/widget/TextView;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private h:Lcd;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:I

.field private m:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f030002

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lbfy;->c:Landroid/widget/EditText;

    iput-object v1, p0, Lbfy;->d:Landroid/widget/EditText;

    const-string v0, ""

    iput-object v0, p0, Lbfy;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbfy;->f:Ljava/lang/String;

    new-instance v0, Lbgb;

    invoke-direct {v0, p0}, Lbgb;-><init>(Lbfy;)V

    iput-object v0, p0, Lbfy;->m:Landroid/text/TextWatcher;

    invoke-virtual {p0}, Lbfy;->a()V

    return-void
.end method

.method static synthetic a(Lbfy;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lbfy;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lbfy;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lbfy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbfy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lbfy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v0, p0, Lbfy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b00ef

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v0, p0, Lbfy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b00f9

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    iget-object v0, p0, Lbfy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    new-instance v0, Lbga;

    invoke-direct {v0, p0, p1}, Lbga;-><init>(Lbfy;Ljava/lang/String;)V

    invoke-virtual {v0}, Lbga;->start()V

    return-void
.end method

.method static synthetic b(Lbfy;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lbfy;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lbfy;)V
    .locals 0

    invoke-direct {p0}, Lbfy;->d()V

    return-void
.end method

.method static synthetic d(Lbfy;)Lcd;
    .locals 1

    iget-object v0, p0, Lbfy;->h:Lcd;

    return-object v0
.end method

.method private d()V
    .locals 6

    iget-object v0, p0, Lbfy;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbfy;->e:Ljava/lang/String;

    iget-object v0, p0, Lbfy;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbfy;->f:Ljava/lang/String;

    iget-object v0, p0, Lbfy;->mContext:Landroid/content/Context;

    invoke-static {v0}, La;->h(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbfy;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/16 v1, -0x3e9

    new-instance v2, Lbgc;

    invoke-direct {v2, p0}, Lbgc;-><init>(Lbfy;)V

    invoke-static {v0, v1, v2}, La;->a(Landroid/content/Context;ILcom/tencent/qqpimsecure/uilib/service/IRetryListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbfy;->e:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbfy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lbfy;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0ad1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbfy;->f:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbfy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lbfy;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0ad5

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbfy;->e:Ljava/lang/String;

    iget-object v1, p0, Lbfy;->f:Ljava/lang/String;

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v3, p0, Lbfy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lbfy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Lbfy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v2, p0, Lbfy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v3, 0x7f0b00ef

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v2, p0, Lbfy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v3, 0x7f0b00f2

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    iget-object v2, p0, Lbfy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v3, 0x7f0b0033

    new-instance v4, Lbgd;

    invoke-direct {v4, p0}, Lbgd;-><init>(Lbfy;)V

    const/4 v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    iget-object v2, p0, Lbfy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    new-instance v2, Lbge;

    invoke-direct {v2, p0, v0, v1}, Lbge;-><init>(Lbfy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lbge;->start()V

    goto :goto_0
.end method

.method static synthetic e(Lbfy;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    iget-object v0, p0, Lbfy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method private e()V
    .locals 6

    const/4 v5, 0x2

    iget-object v0, p0, Lbfy;->mContext:Landroid/content/Context;

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

    iput-object v0, p0, Lbfy;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lbfy;->i:Landroid/widget/ImageView;

    iget-object v2, p0, Lbfy;->mContext:Landroid/content/Context;

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

    new-instance v2, Lbgf;

    invoke-direct {v2, p0}, Lbgf;-><init>(Lbfy;)V

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080036

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    new-instance v2, Lbgi;

    invoke-direct {v2, p0}, Lbgi;-><init>(Lbfy;)V

    invoke-virtual {v2}, Lbgi;->start()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v3, p0, Lbfy;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lbfy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0124

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setView(Landroid/view/View;)V

    const v1, 0x7f0b0045

    new-instance v3, Lbgg;

    invoke-direct {v3, p0, v0, v2}, Lbgg;-><init>(Lbfy;Landroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v2, v1, v3, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v1, Lbgh;

    invoke-direct {v1, v2}, Lbgh;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v2, v0, v1, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void
.end method

.method static synthetic f(Lbfy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbfy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic g(Lbfy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbfy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic h(Lbfy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbfy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i(Lbfy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbfy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lbfy;)V
    .locals 1

    new-instance v0, Lbgi;

    invoke-direct {v0, p0}, Lbgi;-><init>(Lbfy;)V

    invoke-virtual {v0}, Lbgi;->start()V

    return-void
.end method

.method static synthetic k(Lbfy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbfy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic l(Lbfy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbfy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic m(Lbfy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbfy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic n(Lbfy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbfy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic o(Lbfy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbfy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic p(Lbfy;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbfy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lbfy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbfy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbfy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbfy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_0
    invoke-virtual {p0}, Lbfy;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    return-void
.end method

.method public abstract c()V
.end method

.method public createOperatingBarDataList()Ljava/util/List;
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

.method public onCreate()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    const-string v0, ""

    iput-object v0, p0, Lbfy;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lbfy;->f:Ljava/lang/String;

    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lbfy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lbfy;->c:Landroid/widget/EditText;

    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lbfy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lbfy;->d:Landroid/widget/EditText;

    const v0, 0x7f08000c

    invoke-virtual {p0, v0}, Lbfy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbfy;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lbfy;->b:Landroid/widget/TextView;

    new-instance v1, Lbfz;

    invoke-direct {v1, p0}, Lbfz;-><init>(Lbfy;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lbfy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbfy;->j:Landroid/widget/ImageView;

    const v0, 0x7f080007

    invoke-virtual {p0, v0}, Lbfy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbfy;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lbfy;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lbfy;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbfy;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lbfy;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v0, p0, Lbfy;->mContext:Landroid/content/Context;

    new-instance v1, Laz;

    invoke-direct {v1, v0}, Laz;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lbfy;->h:Lcd;

    iget-object v0, p0, Lbfy;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lbfy;->m:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lbfy;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lbfy;->m:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iput v2, p0, Lbfy;->l:I

    return-void
.end method

.method public onHandlerMessage(Landroid/os/Message;)V
    .locals 7

    const v5, 0x7f0b0b0f

    const v4, 0x7f090006

    const v3, 0x7f020138

    const v6, 0x7f090088

    const v2, 0x7f02012f

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lbfy;->b()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbfy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbfy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbfy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbfy;->g:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lbfy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v3, 0x7f0b0131

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v3, p0, Lbfy;->j:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lbfy;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbfy;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget v0, p0, Lbfy;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbfy;->l:I

    iget v0, p0, Lbfy;->l:I

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lbfy;->mContext:Landroid/content/Context;

    const v2, 0x7f0b015f

    invoke-static {v0, v2}, Lha;->a(Landroid/content/Context;I)V

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v3, p0, Lbfy;->j:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lbfy;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbfy;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget v0, p0, Lbfy;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbfy;->l:I

    iget v0, p0, Lbfy;->l:I

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lbfy;->mContext:Landroid/content/Context;

    const v2, 0x7f0b05f4

    invoke-static {v0, v2}, Lha;->a(Landroid/content/Context;I)V

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v3, p0, Lbfy;->j:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lbfy;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbfy;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget v0, p0, Lbfy;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbfy;->l:I

    iget v0, p0, Lbfy;->l:I

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lbfy;->mHandler:Landroid/os/Handler;

    const v1, 0x186a0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lbfy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :sswitch_4
    invoke-direct {p0}, Lbfy;->e()V

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v2, 0x7f0b0119

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v3, p0, Lbfy;->j:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lbfy;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbfy;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget v0, p0, Lbfy;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbfy;->l:I

    iget v0, p0, Lbfy;->l:I

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v2, 0x7f0b011a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v3, p0, Lbfy;->j:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lbfy;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbfy;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0}, Lbfy;->e()V

    iget v0, p0, Lbfy;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbfy;->l:I

    iget v0, p0, Lbfy;->l:I

    goto/16 :goto_0

    :sswitch_7
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v2, 0x7f0b011e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v3, p0, Lbfy;->j:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lbfy;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbfy;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbfy;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lbfy;->l:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbfy;->l:I

    iget v0, p0, Lbfy;->l:I

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lbfy;->i:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lbfy;->i:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    :cond_2
    iget-object v1, p0, Lbfy;->i:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v0, p0, Lbfy;->i:Landroid/widget/ImageView;

    const v1, 0x7f0201be

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lbfy;->mContext:Landroid/content/Context;

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

.method public onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 1

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lbfy;->d()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    return-void
.end method

.method public subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b0ae2

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method

.class public final Lbgz;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/LinearLayout;

.field private d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private e:Landroid/widget/TextView;

.field private f:Ljava/lang/String;

.field private g:Landroid/content/Intent;

.field private h:Lho;

.field private i:I

.field private j:Lyj;

.field private k:Z

.field private l:Ljava/lang/String;

.field private m:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f03013f

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lbgz;->b:Landroid/widget/EditText;

    const-string v0, ""

    iput-object v0, p0, Lbgz;->f:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbgz;->k:Z

    new-instance v0, Lbha;

    invoke-direct {v0, p0}, Lbha;-><init>(Lbgz;)V

    iput-object v0, p0, Lbgz;->m:Landroid/text/TextWatcher;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lbgz;->h:Lho;

    iget-object v0, p0, Lbgz;->h:Lho;

    invoke-virtual {v0}, Lho;->cd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbgz;->l:Ljava/lang/String;

    new-instance v0, Lyj;

    invoke-direct {v0, p1}, Lyj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbgz;->j:Lyj;

    return-void
.end method

.method static synthetic a(Lbgz;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lbgz;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method private a()V
    .locals 6

    const/4 v0, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v1, p0, Lbgz;->h:Lho;

    invoke-virtual {v1}, Lho;->ci()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lbgz;->k:Z

    if-nez v1, :cond_2

    move v1, v0

    :goto_1
    iget-object v4, p0, Lbgz;->c:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lbgz;->a:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_4

    move v0, v3

    :goto_3
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lbgz;->getOperatingBarDataList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    :cond_0
    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbgz;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    move v1, v2

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_3

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v4

    if-nez v4, :cond_6

    if-eqz v1, :cond_7

    move v4, v3

    :goto_5
    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setVisible(I)V

    :cond_6
    invoke-virtual {p0, v0}, Lbgz;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    goto :goto_4

    :cond_7
    move v4, v2

    goto :goto_5
.end method

.method static synthetic b(Lbgz;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbgz;->l:Ljava/lang/String;

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
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbgz;->k:Z

    invoke-direct {p0}, Lbgz;->a()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f0803d0
        :pswitch_0
    .end packed-switch
.end method

.method public final onCreate()V
    .locals 3

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    const-string v0, ""

    iput-object v0, p0, Lbgz;->f:Ljava/lang/String;

    const v0, 0x7f0803ce

    invoke-virtual {p0, v0}, Lbgz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbgz;->c:Landroid/widget/LinearLayout;

    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lbgz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbgz;->a:Landroid/widget/LinearLayout;

    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lbgz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lbgz;->b:Landroid/widget/EditText;

    const v0, 0x7f0803d0

    invoke-virtual {p0, v0}, Lbgz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lbgz;->d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v0, 0x7f0803cf

    invoke-virtual {p0, v0}, Lbgz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbgz;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lbgz;->d:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lbgz;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lbgz;->g:Landroid/content/Intent;

    iget-object v0, p0, Lbgz;->g:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbgz;->g:Landroid/content/Intent;

    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbgz;->i:I

    :cond_0
    iget-object v0, p0, Lbgz;->h:Lho;

    invoke-virtual {v0}, Lho;->ci()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbgz;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lbgz;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbgz;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lbgz;->m:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-direct {p0}, Lbgz;->a()V

    return-void
.end method

.method public final onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 5

    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v3, p0, Lbgz;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lbgz;->f:Ljava/lang/String;

    iget-object v4, p0, Lbgz;->f:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v3, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v1

    :goto_1
    if-nez v3, :cond_2

    move v0, v1

    :cond_0
    :goto_2
    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lbgz;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lbgz;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0ad1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v3, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    move v0, v2

    goto :goto_2

    :cond_3
    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lbgz;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lbgz;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0ad2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lbgz;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lbgz;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0afa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lbgz;->h:Lho;

    iget-object v1, p0, Lbgz;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lho;->z(Ljava/lang/String;)V

    invoke-virtual {p0}, Lbgz;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    iget-object v0, p0, Lbgz;->j:Lyj;

    iget-object v0, p0, Lbgz;->mContext:Landroid/content/Context;

    iget v1, p0, Lbgz;->i:I

    invoke-static {v0, v1}, Lyj;->a(Landroid/content/Context;I)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbhb;

    invoke-direct {v1, p0}, Lbhb;-><init>(Lbgz;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onOptionClick(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onOptionClick(I)V

    invoke-virtual {p0}, Lbgz;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    iget-object v0, p0, Lbgz;->j:Lyj;

    iget-object v0, p0, Lbgz;->mContext:Landroid/content/Context;

    iget v1, p0, Lbgz;->i:I

    invoke-static {v0, v1}, Lyj;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 2

    const v0, 0x7f0b0ae2

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    iget v0, p0, Lbgz;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const v0, 0x7f020267

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonWithImageResource(I)V

    :goto_0
    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void

    :cond_0
    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    goto :goto_0
.end method

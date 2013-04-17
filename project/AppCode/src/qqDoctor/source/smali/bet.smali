.class public final Lbet;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# instance fields
.field private a:Lho;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0300a6

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbet;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lbet;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbet;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lbet;)Lho;
    .locals 1

    iget-object v0, p0, Lbet;->a:Lho;

    return-object v0
.end method

.method static synthetic c(Lbet;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbet;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lbet;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbet;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lbet;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbet;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lbet;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbet;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lbet;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbet;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic h(Lbet;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbet;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lbet;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbet;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lbet;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbet;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method protected final createOperatingBarDataList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lbet;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    iget-object v1, p0, Lbet;->mContext:Landroid/content/Context;

    const v2, 0x7f0b004e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setStyle(I)V

    iget-object v1, p0, Lbet;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/4 v1, 0x1

    iget-object v2, p0, Lbet;->mContext:Landroid/content/Context;

    const v3, 0x7f0b07e5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(ILjava/lang/String;)V

    iget-object v1, p0, Lbet;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbet;->b:Ljava/util/List;

    return-object v0
.end method

.method public final onCreate()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lbet;->a:Lho;

    const-class v0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    return-void
.end method

.method public final onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lbet;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofGuidelActivity4;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lbet;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lbet;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbet;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lft;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbet;->a:Lho;

    invoke-virtual {v1, v0}, Lho;->p(Ljava/lang/String;)V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x65f7

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lbet;->a:Lho;

    invoke-virtual {v0, v3}, Lho;->V(Z)V

    iget-object v0, p0, Lbet;->a:Lho;

    invoke-virtual {v0, v3}, Lho;->B(Z)V

    iget-object v0, p0, Lbet;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lyb;->a(Landroid/content/Context;)Lyb;

    move-result-object v0

    invoke-virtual {v0, v3}, Lyb;->a(Z)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lbet;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0836

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const v1, 0x7f0b0837

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v1, 0x7f0b0aa8

    new-instance v2, Lbeu;

    invoke-direct {v2, p0, v0}, Lbeu;-><init>(Lbet;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b0010

    new-instance v2, Lbev;

    invoke-direct {v2, p0, v0}, Lbev;-><init>(Lbet;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b07d6

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method

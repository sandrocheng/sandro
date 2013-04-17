.class final Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofBindQQGuideActivity$a;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofBindQQGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Lho;

.field private synthetic c:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofBindQQGuideActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofBindQQGuideActivity;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofBindQQGuideActivity$a;->c:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofBindQQGuideActivity;

    const v0, 0x7f030051

    invoke-direct {p0, p2, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofBindQQGuideActivity$a;->b:Lho;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofBindQQGuideActivity$a;->b:Lho;

    invoke-virtual {v0}, Lho;->bV()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofBindQQGuideActivity$a;->a:Z

    :goto_0
    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofBindQQGuideActivity$a;->b:Lho;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lho;->z(I)V

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofBindQQGuideActivity$a;->a:Z

    goto :goto_0
.end method


# virtual methods
.method public final createOperatingBarDataList()Ljava/util/List;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    iget-boolean v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofBindQQGuideActivity$a;->a:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0b0b6e

    :goto_0
    invoke-direct {v2, v3, v0}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(II)V

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setStyle(I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const v2, 0x7f0b0a24

    invoke-direct {v0, v4, v2}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(II)V

    invoke-virtual {v0, v4}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setStyle(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    :cond_0
    const v0, 0x7f0b006e

    goto :goto_0
.end method

.method public final onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 3

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofBindQQGuideActivity$a;->c:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofBindQQGuideActivity;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofBindQQGuideActivity;->finish()V

    return-void

    :pswitch_0
    const/16 v1, 0x670d

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x670e

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofBindQQGuideActivity$a;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "action"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "update"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofBindQQGuideActivity$a;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    const v0, 0x7f0b07a9

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    return-void
.end method

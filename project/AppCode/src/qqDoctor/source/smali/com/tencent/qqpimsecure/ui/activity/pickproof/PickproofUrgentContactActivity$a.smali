.class public final Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/ImageView;

.field private f:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

.field private g:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

.field private h:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

.field private i:Lho;

.field private j:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;


# direct methods
.method public constructor <init>(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->a:Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity;

    const v0, 0x7f0300aa

    invoke-direct {p0, p2, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->b:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->c:Landroid/widget/ImageView;

    return-void
.end method

.method private a()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->i:Lho;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lho;->E(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->h:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->setHelperNumber(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofBindQQSuccessGuideActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->c:Landroid/widget/ImageView;

    const v1, 0x7f020138

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090093

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->b:Landroid/widget/TextView;

    const v1, 0x7f0b083d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->c:Landroid/widget/ImageView;

    const v1, 0x7f020149

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090088

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->j:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->j:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->j:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->j:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->i:Lho;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lho;->E(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->h:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v0, p1}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->setHelperNumber(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->getChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0845

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->mContext:Landroid/content/Context;

    invoke-static {p1, v0, v1}, Lcom/tencent/tmsecure/utils/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_1
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofBindQQSuccessGuideActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->i:Lho;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lho;->E(Z)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->h:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->setHelperNumber(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0844

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static synthetic c(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;)Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    return-object v0
.end method

.method public static synthetic d(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic e(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;)Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->h:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    return-object v0
.end method

.method public static synthetic f(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic g(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic h(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static synthetic i(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected final createOperatingBarDataList()Ljava/util/List;
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->mContext:Landroid/content/Context;

    const v4, 0x7f0b04b5

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;-><init>(ILjava/lang/String;)V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v0, "selecteddata"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->d:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final onCreate()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->i:Lho;

    const-class v0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->h:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    const v0, 0x7f080216

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->b:Landroid/widget/TextView;

    const v0, 0x7f080006

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->c:Landroid/widget/ImageView;

    const v0, 0x7f080217

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->f:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    const v0, 0x7f08020a

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->h:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getHelperNumber()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->i:Lho;

    invoke-virtual {v0}, Lho;->bE()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->h:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v1, v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->setHelperNumber(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->d:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    :goto_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->refreshOperatingBar(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->d:Landroid/widget/EditText;

    new-instance v1, Laho;

    invoke-direct {v1, p0}, Laho;-><init>(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f080045

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->e:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->e:Landroid/widget/ImageView;

    new-instance v1, Lahp;

    invoke-direct {v1, p0}, Lahp;-><init>(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->g:Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->setEnable(Z)V

    goto :goto_0
.end method

.method public final onHandlerMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->b(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->b(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x186a0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onOperatingBarClick(Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;)V
    .locals 3

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/model/OperatingModel;->getID()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const/16 v1, 0x6711

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->a()V

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x6712

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b07cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "+86"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lft;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lft;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b07d4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->j:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->j:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->j:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v2, 0x7f0b00ef

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->j:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v2, 0x7f0b0843

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->j:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    new-instance v1, Lahq;

    invoke-direct {v1, p0, v0}, Lahq;-><init>(Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;Ljava/lang/String;)V

    invoke-virtual {v1}, Lahq;->start()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->mContext:Landroid/content/Context;

    const v1, 0x7f0b07cb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onOptionClick(I)V
    .locals 2

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6711

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofUrgentContactActivity$a;->a()V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b0842

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    const v0, 0x7f020267

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonWithImageResource(I)V

    return-void
.end method

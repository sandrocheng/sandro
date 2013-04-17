.class public final Lbew;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private a:Lakn;

.field private b:Ljh;

.field private c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/stBindPhoneInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:LQQPIM/stBindPhoneInfo;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/LinearLayout;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/view/animation/Animation;

.field private l:Landroid/view/animation/Animation;

.field private m:Z

.field private n:Landroid/view/animation/Animation$AnimationListener;

.field private o:Z

.field private p:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x7f0300a9

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    iget-object v0, p0, Lbew;->mContext:Landroid/content/Context;

    const v1, 0x7f04000c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lbew;->k:Landroid/view/animation/Animation;

    iget-object v0, p0, Lbew;->mContext:Landroid/content/Context;

    const v1, 0x7f04000d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lbew;->l:Landroid/view/animation/Animation;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbew;->m:Z

    new-instance v0, Lbex;

    invoke-direct {v0, p0}, Lbex;-><init>(Lbew;)V

    iput-object v0, p0, Lbew;->n:Landroid/view/animation/Animation$AnimationListener;

    iput-boolean v2, p0, Lbew;->o:Z

    iput-boolean v2, p0, Lbew;->q:Z

    return-void
.end method

.method private a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/stBindPhoneInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "LQQPIM/stBindPhoneInfo;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, v5, :cond_1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    const/4 v3, 0x0

    iget-object v0, p0, Lbew;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/tmsecure/utils/PhoneInfoUtil;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    move v1, v2

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/stBindPhoneInfo;

    invoke-virtual {v0}, LQQPIM/stBindPhoneInfo;->getImei()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    :goto_2
    if-eqz v4, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_3
    if-eqz v0, :cond_0

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move-object v0, v3

    goto :goto_3
.end method

.method private a(LQQPIM/stBindPhoneInfo;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://msm.qq.com/wap/anti_theft/controls.jsp?sid="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lbew;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, LQQPIM/stBindPhoneInfo;->getImei()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&phonenum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, LQQPIM/stBindPhoneInfo;->getPhonenum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Lbew;->mContext:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/WebUIActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "extra_url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lbew;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lbew;)Z
    .locals 1

    iget-boolean v0, p0, Lbew;->m:Z

    return v0
.end method

.method static synthetic a(Lbew;Z)Z
    .locals 0

    iput-boolean p1, p0, Lbew;->m:Z

    return p1
.end method

.method static synthetic b(Lbew;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lbew;->k:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic b(Lbew;Z)Z
    .locals 0

    iput-boolean p1, p0, Lbew;->q:Z

    return p1
.end method

.method static synthetic c(Lbew;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lbew;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lbew;)Landroid/view/animation/Animation;
    .locals 1

    iget-object v0, p0, Lbew;->l:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic e(Lbew;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbew;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lbew;)Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;
    .locals 1

    iget-object v0, p0, Lbew;->c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    return-object v0
.end method

.method static synthetic g(Lbew;)Ljh;
    .locals 1

    iget-object v0, p0, Lbew;->b:Ljh;

    return-object v0
.end method

.method static synthetic h(Lbew;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbew;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final loadDataList()V
    .locals 2

    iget-boolean v0, p0, Lbew;->o:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lbez;

    invoke-direct {v0, p0}, Lbez;-><init>(Lbew;)V

    invoke-virtual {v0}, Lbez;->start()V

    iget-object v0, p0, Lbew;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onActivityResult(IILandroid/content/Intent;)V

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "sid"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbew;->e:Ljava/lang/String;

    iget-object v0, p0, Lbew;->c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getBindQQNum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbew;->d:Ljava/lang/String;

    iget-object v0, p0, Lbew;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, ""

    iget-object v1, p0, Lbew;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lbew;->g:LQQPIM/stBindPhoneInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbew;->g:LQQPIM/stBindPhoneInfo;

    invoke-direct {p0, v0}, Lbew;->a(LQQPIM/stBindPhoneInfo;)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lbew;->g:LQQPIM/stBindPhoneInfo;

    goto :goto_0
.end method

.method public final onCreate()V
    .locals 6

    const/16 v5, 0xc

    const/4 v4, 0x2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    const-class v0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    iput-object v0, p0, Lbew;->c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Lbew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    const v1, 0x7f08020f

    invoke-virtual {p0, v1}, Lbew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lbew;->h:Landroid/widget/ImageView;

    const v1, 0x7f080215

    invoke-virtual {p0, v1}, Lbew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lbew;->j:Landroid/widget/TextView;

    new-instance v1, Ljh;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    invoke-direct {v1}, Ljh;-><init>()V

    iput-object v1, p0, Lbew;->b:Ljh;

    new-instance v1, Lakn;

    iget-object v2, p0, Lbew;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lakn;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lbew;->a:Lakn;

    iget-object v1, p0, Lbew;->b:Ljh;

    invoke-virtual {v1}, Ljh;->a()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lbew;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lbew;->f:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lbew;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lbew;->f:Ljava/util/ArrayList;

    iget-object v1, p0, Lbew;->a:Lakn;

    iget-object v2, p0, Lbew;->f:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lakn;->a(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lbew;->a:Lakn;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbew;->o:Z

    iget-object v0, p0, Lbew;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0863

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lbew;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x22

    invoke-virtual {v1, v0, v4, v5, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    const/16 v2, 0x21

    invoke-virtual {v1, v0, v4, v5, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, p0, Lbew;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080214

    invoke-virtual {p0, v0}, Lbew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbew;->i:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lbew;->i:Landroid/widget/LinearLayout;

    new-instance v1, Lbey;

    invoke-direct {v1, p0}, Lbey;-><init>(Lbew;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lbew;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbew;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lbew;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbew;->p:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lbew;->p:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lbew;->p:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v0, p0, Lbew;->p:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b08b7

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    iget-object v0, p0, Lbew;->p:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6713

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Lbew;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LQQPIM/stBindPhoneInfo;

    invoke-virtual {v0}, LQQPIM/stBindPhoneInfo;->getStatus()S

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lbew;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lbew;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0861

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lbew;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbew;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lbew;->d:Ljava/lang/String;

    iget-object v2, p0, Lbew;->c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v2}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getBindQQNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iput-object v0, p0, Lbew;->g:LQQPIM/stBindPhoneInfo;

    new-instance v1, Landroid/content/Intent;

    iget-object v0, p0, Lbew;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofAccountLoginActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "action"

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lbew;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lbew;->a(LQQPIM/stBindPhoneInfo;)V

    goto :goto_0
.end method

.method public final onOptionClick(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lbew;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/pickproof/PickproofSettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "QQ_ANTITHEFT_SYS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lbew;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final onResume()V
    .locals 6

    const v5, 0x7f0b07c3

    const v3, 0x7f0801ec

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    const v0, 0x7f08019a

    invoke-virtual {p0, v0}, Lbew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lbew;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v1, p0, Lbew;->o:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0, v3}, Lbew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020193

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f0b07e2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lbew;->h:Landroid/widget/ImageView;

    iget-object v1, p0, Lbew;->k:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lbew;->k:Landroid/view/animation/Animation;

    iget-object v1, p0, Lbew;->n:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lbew;->l:Landroid/view/animation/Animation;

    iget-object v1, p0, Lbew;->n:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbew;->m:Z

    :goto_0
    const v0, 0x7f080212

    invoke-virtual {p0, v0}, Lbew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lbew;->c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getBindQQNum()Ljava/lang/String;

    move-result-object v2

    const-string v1, ""

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lk;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lbew;->mContext:Landroid/content/Context;

    const v4, 0x7f0b085b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":   "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080213

    invoke-virtual {p0, v0}, Lbew;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lbew;->c:Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;

    invoke-virtual {v1}, Lcom/tencent/tmsecure/module/antitheft/AntitheftManager;->getHelperNumber()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lk;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbew;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbew;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_2
    invoke-virtual {p0, v3}, Lbew;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020192

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f0b07e1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lbew;->mContext:Landroid/content/Context;

    const v2, 0x7f0b085d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbew;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lbew;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v4, 0x7f09

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v5, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v3

    const/16 v4, 0x22

    invoke-virtual {v1, v5, v3, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1
.end method

.method public final refreshListData()V
    .locals 2

    iget-object v0, p0, Lbew;->p:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lbew;->q:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lbew;->p:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lbew;->p:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    :cond_0
    iget-object v0, p0, Lbew;->b:Ljh;

    invoke-virtual {v0}, Ljh;->a()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lbew;->f:Ljava/util/ArrayList;

    iget-object v0, p0, Lbew;->f:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lbew;->a(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lbew;->f:Ljava/util/ArrayList;

    iget-object v0, p0, Lbew;->a:Lakn;

    iget-object v1, p0, Lbew;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lakn;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lbew;->a:Lakn;

    invoke-virtual {v0}, Lakn;->notifyDataSetChanged()V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    const v0, 0x7f0b07a9

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method

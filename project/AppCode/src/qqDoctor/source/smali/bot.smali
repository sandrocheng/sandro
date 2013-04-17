.class public final Lbot;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbot$a;,
        Lbot$b;
    }
.end annotation


# instance fields
.field private a:Law;

.field private b:Lcf;

.field private c:Lbw;

.field private d:Lho;

.field private e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/View;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Z

.field private o:Z

.field private p:Lco;

.field private q:I

.field private r:I

.field private s:Z

.field private t:Lbot$b;

.field private u:Landroid/view/View$OnClickListener;

.field private v:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, -0x3e8

    const/4 v1, 0x0

    const v0, 0x7f0300d7

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lbot;->a:Law;

    iput-boolean v1, p0, Lbot;->n:Z

    iput-boolean v1, p0, Lbot;->o:Z

    iput-object v3, p0, Lbot;->p:Lco;

    iput v2, p0, Lbot;->q:I

    iput v2, p0, Lbot;->r:I

    iput-boolean v1, p0, Lbot;->s:Z

    new-instance v0, Lbou;

    invoke-direct {v0, p0}, Lbou;-><init>(Lbot;)V

    iput-object v0, p0, Lbot;->u:Landroid/view/View$OnClickListener;

    new-instance v0, Lbpa;

    invoke-direct {v0, p0}, Lbpa;-><init>(Lbot;)V

    iput-object v0, p0, Lbot;->v:Landroid/os/Handler;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lbot;->d:Lho;

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lbw;->a(Landroid/content/Context;)Lbw;

    move-result-object v0

    iput-object v0, p0, Lbot;->c:Lbw;

    new-instance v0, Lcl;

    iget-object v1, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbot;->b:Lcf;

    iget-object v0, p0, Lbot;->b:Lcf;

    iget-object v1, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcf;->a(Landroid/content/Context;)V

    new-instance v0, Law;

    iget-object v1, p0, Lbot;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lbot;->v:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Law;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lbot;->a:Law;

    return-void
.end method

.method static synthetic A(Lbot;)Z
    .locals 1

    iget-boolean v0, p0, Lbot;->n:Z

    return v0
.end method

.method static synthetic B(Lbot;)Lho;
    .locals 1

    iget-object v0, p0, Lbot;->d:Lho;

    return-object v0
.end method

.method static synthetic C(Lbot;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbot;->o:Z

    return v0
.end method

.method static synthetic D(Lbot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic E(Lbot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic F(Lbot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic G(Lbot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic H(Lbot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic I(Lbot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic J(Lbot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic K(Lbot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic L(Lbot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic M(Lbot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic N(Lbot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic O(Lbot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic P(Lbot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic Q(Lbot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lbot;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lbot;->j:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lbot;Lbot$b;)Lbot$b;
    .locals 0

    iput-object p1, p0, Lbot;->t:Lbot$b;

    return-object p1
.end method

.method static synthetic a(Lbot;Lcf;)Lcf;
    .locals 0

    iput-object p1, p0, Lbot;->b:Lcf;

    return-object p1
.end method

.method static synthetic a(Lbot;Lco;)Lco;
    .locals 0

    iput-object p1, p0, Lbot;->p:Lco;

    return-object p1
.end method

.method static synthetic a(Lbot;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 0

    iput-object p1, p0, Lbot;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object p1
.end method

.method private a(I)V
    .locals 4

    const/4 v2, 0x1

    const/16 v0, -0x3e8

    iput v0, p0, Lbot;->q:I

    iput-boolean v2, p0, Lbot;->n:Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/ProgressDialog;

    iget-object v1, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lbot;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lbot;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v0, p0, Lbot;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b00ef

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v0, p0, Lbot;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setIconVisibility(I)V

    const/16 v0, 0x3e9

    if-eq v0, p1, :cond_0

    const/16 v0, 0x3ea

    if-ne v0, p1, :cond_1

    :cond_0
    iget-object v0, p0, Lbot;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b00f3

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    :goto_0
    iget-object v0, p0, Lbot;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b0033

    new-instance v2, Lbpe;

    invoke-direct {v2, p0, p1}, Lbpe;-><init>(Lbot;I)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Lbot;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setCancelable(Z)V

    iget-object v0, p0, Lbot;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    new-instance v0, Lbph;

    invoke-direct {v0, p0, p1}, Lbph;-><init>(Lbot;I)V

    invoke-virtual {v0}, Lbph;->start()V

    new-instance v0, Lbpi;

    invoke-direct {v0, p0, p1}, Lbpi;-><init>(Lbot;I)V

    invoke-virtual {v0}, Lbpi;->start()V

    return-void

    :cond_1
    iget-object v0, p0, Lbot;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b00f5

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    goto :goto_0
.end method

.method static synthetic a(Lbot;I)V
    .locals 9

    const/16 v8, 0x3ea

    const/16 v7, 0x3e9

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lbot;->c:Lbw;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0}, Lbw;->a(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcs;

    iget v3, v0, Lcs;->e:I

    if-nez v3, :cond_2

    if-eq v7, p1, :cond_0

    if-ne v8, p1, :cond_1

    :cond_0
    const v0, 0x7f0b0105

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1
    const v0, 0x7f0b0107

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    if-eq v7, p1, :cond_3

    if-ne v8, p1, :cond_4

    :cond_3
    iget-object v1, p0, Lbot;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0106

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    iget v0, v0, Lcs;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lbot;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0108

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v6, [Ljava/lang/Object;

    iget v0, v0, Lcs;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_5
    const v0, 0x7f0b012c

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method static synthetic a(Lbot;II)V
    .locals 4

    const/4 v3, 0x1

    const/16 v0, 0x1001

    if-eq v0, p1, :cond_0

    if-nez p2, :cond_1

    iget v0, p0, Lbot;->q:I

    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lbot;->q:I

    invoke-direct {p0, v0}, Lbot;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x5

    if-ne v0, p2, :cond_2

    invoke-direct {p0}, Lbot;->d()V

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    if-ne v0, p2, :cond_3

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    const v1, 0x7f0b05f4

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lbot;->s:Z

    if-nez v0, :cond_0

    iget v0, p0, Lbot;->q:I

    iput v0, p0, Lbot;->r:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lho;->a()Lho;

    move-result-object v1

    invoke-virtual {v1}, Lho;->bf()I

    move-result v1

    if-ne v3, v1, :cond_4

    iget-object v1, p0, Lbot;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "FIRST_TIME"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1
    iget-object v1, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    if-ne v2, v1, :cond_5

    iget-object v1, p0, Lbot;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SyncMobileAccountLoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lbot;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SyncQQAccountLoginActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "FIRST_TIME"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_1
.end method

.method static synthetic a(Lbot;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbot;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lbot;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    iget-object v0, p0, Lbot;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b00ef

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v0, p0, Lbot;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setIconVisibility(I)V

    iget-object v0, p0, Lbot;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    const v1, 0x7f0b0153

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    iget-object v0, p0, Lbot;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    iget-object v0, p0, Lbot;->a:Law;

    invoke-virtual {v0, p1}, Law;->a(Ljava/lang/String;)Z

    return-void
.end method

.method private a(Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbot;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SyncAssistantDownloadActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    const-string v1, "isStartDownloadImmediatly"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    iget-object v1, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v1, "isStartDownloadImmediatly"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0
.end method

.method private a()Z
    .locals 3

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    const v1, 0x7f0b00c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0}, Lbot;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x225

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lbot;->p:Lco;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbot;->p:Lco;

    invoke-virtual {v0}, Lco;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbot;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lbot;->mContext:Landroid/content/Context;

    const v2, 0x7f0b014d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lbot;->p:Lco;

    iget v3, v3, Lco;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-object v4, p0, Lbot;->p:Lco;

    iget v4, v4, Lco;->c:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lbot;->p:Lco;

    iget v4, v4, Lco;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbot;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Lbot$b;->b:Lbot$b;

    iput-object v0, p0, Lbot;->t:Lbot$b;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lbot;->t:Lbot$b;

    sget-object v1, Lbot$b;->a:Lbot$b;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lbot;->g:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    sget-object v0, Lbot$b;->c:Lbot$b;

    iput-object v0, p0, Lbot;->t:Lbot$b;

    goto :goto_0
.end method

.method static synthetic b(Lbot;)V
    .locals 5

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v3, p0, Lbot;->mContext:Landroid/content/Context;

    const v4, 0x7f0b00ea

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/16 v3, 0x3e9

    iput v3, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v3, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00eb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/16 v3, 0x3ea

    iput v3, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setDataAdapter(Ljava/util/ArrayList;)V

    new-instance v0, Lbpj;

    invoke-direct {v0, p0, v1}, Lbpj;-><init>(Lbot;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00e9

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->show()V

    return-void
.end method

.method static synthetic b(Lbot;I)V
    .locals 1

    iput p1, p0, Lbot;->q:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbot;->s:Z

    iget-object v0, p0, Lbot;->a:Law;

    invoke-virtual {v0}, Law;->a()V

    return-void
.end method

.method static synthetic b(Lbot;II)V
    .locals 2

    const/16 v0, 0x1001

    if-eq v0, p1, :cond_0

    const/16 v0, 0x200b

    if-ne v0, p2, :cond_1

    iget v0, p0, Lbot;->q:I

    const/16 v1, -0x3e8

    if-eq v0, v1, :cond_0

    iget v0, p0, Lbot;->q:I

    invoke-direct {p0, v0}, Lbot;->a(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x200f

    if-ne v0, p2, :cond_2

    invoke-direct {p0}, Lbot;->d()V

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0154

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x2010

    if-ne v0, p2, :cond_0

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    const v1, 0x7f0b05f4

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method static synthetic c(Lbot;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lbot;->k:Landroid/view/View;

    return-object v0
.end method

.method private c()V
    .locals 8

    const v7, 0x7f0b00e6

    const v4, 0x7f0b00e5

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lbn;->a(Landroid/content/Context;)Lcb;

    move-result-object v0

    invoke-interface {v0}, Lcb;->a()I

    move-result v0

    sget v1, Ldi;->a:I

    iget-object v2, p0, Lbot;->b:Lcf;

    invoke-interface {v2}, Lcf;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lbot;->l:Landroid/widget/TextView;

    iget-object v3, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbot;->m:Landroid/widget/TextView;

    iget-object v2, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lbot;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbot;->m:Landroid/widget/TextView;

    iget-object v1, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, ""

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic c(Lbot;I)V
    .locals 1

    iput p1, p0, Lbot;->q:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbot;->s:Z

    iget-object v0, p0, Lbot;->a:Law;

    invoke-virtual {v0}, Law;->a()V

    return-void
.end method

.method private d()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f080064

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    const v1, 0x7f080065

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0151

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v5, Lbot$a;

    invoke-direct {v5, p0}, Lbot$a;-><init>(Lbot;)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    iget-object v6, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090021

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v6, 0x22

    invoke-virtual {v4, v5, v8, v3, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v3, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->addProgressDialog()V

    const v3, 0x7f0b00ef

    invoke-virtual {v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setIconVisibility(I)V

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setView(Landroid/view/View;)V

    const v2, 0x7f0b0045

    new-instance v3, Lboy;

    invoke-direct {v3, p0, v0, v1}, Lboy;-><init>(Lbot;Landroid/widget/EditText;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v1, v2, v3, v9}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    const v0, 0x7f0b0033

    new-instance v2, Lboz;

    invoke-direct {v2, v1}, Lboz;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v1, v0, v2, v9}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNeutralButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    return-void
.end method

.method static synthetic d(Lbot;)V
    .locals 5

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v3, p0, Lbot;->mContext:Landroid/content/Context;

    const v4, 0x7f0b00ed

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/16 v3, 0x3eb

    iput v3, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v2}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v3, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00ee

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    const/16 v3, 0x3ec

    iput v3, v2, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setDataAdapter(Ljava/util/ArrayList;)V

    new-instance v0, Lbov;

    invoke-direct {v0, p0, v1}, Lbov;-><init>(Lbot;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    const v2, 0x7f0b00ec

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->show()V

    return-void
.end method

.method static synthetic e(Lbot;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lbot;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lbot;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lbot;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic g(Lbot;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lbot;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic h(Lbot;)Lbot$b;
    .locals 1

    iget-object v0, p0, Lbot;->t:Lbot$b;

    return-object v0
.end method

.method static synthetic i(Lbot;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbot;->a(Z)V

    return-void
.end method

.method static synthetic j(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    iget-object v0, p0, Lbot;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method static synthetic k(Lbot;)Lcf;
    .locals 1

    iget-object v0, p0, Lbot;->b:Lcf;

    return-object v0
.end method

.method static synthetic l(Lbot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Lbot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic n(Lbot;)V
    .locals 0

    invoke-direct {p0}, Lbot;->b()V

    return-void
.end method

.method static synthetic o(Lbot;)V
    .locals 0

    invoke-direct {p0}, Lbot;->c()V

    return-void
.end method

.method static synthetic p(Lbot;)V
    .locals 0

    invoke-direct {p0}, Lbot;->b()V

    invoke-direct {p0}, Lbot;->c()V

    return-void
.end method

.method static synthetic q(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lbot;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method static synthetic r(Lbot;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    iget-object v0, p0, Lbot;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method static synthetic s(Lbot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic t(Lbot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic u(Lbot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic v(Lbot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic w(Lbot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic x(Lbot;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbot;->v:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic y(Lbot;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic z(Lbot;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbot;->n:Z

    return v0
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string v0, "JOB_KEY"

    const/16 v1, -0x3e8

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    new-instance v1, Lcl;

    iget-object v2, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lbot;->b:Lcf;

    iget-object v1, p0, Lbot;->b:Lcf;

    iget-object v2, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcf;->a(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lbot;->a(I)V

    :cond_0
    return-void
.end method

.method public final onBackClick()V
    .locals 4

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
    if-eqz v0, :cond_2

    invoke-static {}, Lgw;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lgw;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/commontools/CommonToolsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "extra_back_to_main"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    return-void

    :cond_3
    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/MainActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public final onCreate()V
    .locals 6

    const v5, 0x7f0b00c7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    invoke-virtual {p0}, Lbot;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v3, "isReturnFromDownload"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    if-eqz v0, :cond_0

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iget-object v3, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lbot;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v3, 0x66a9

    invoke-virtual {v0, v3}, Lnd;->a(I)V

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "product"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    const-string v3, "versioncode"

    const/16 v4, 0x20

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x1020

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v4, "com.tencent.qqpim.action_open_qqpim"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.tencent.qqpim.category_open_qqpim"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lbot;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    const v0, 0x7f0802a4

    invoke-virtual {p0, v0}, Lbot;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbot;->j:Landroid/view/View;

    iget-object v0, p0, Lbot;->j:Landroid/view/View;

    iget-object v3, p0, Lbot;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802a5

    invoke-virtual {p0, v0}, Lbot;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lbot;->k:Landroid/view/View;

    iget-object v0, p0, Lbot;->k:Landroid/view/View;

    iget-object v3, p0, Lbot;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0802a7

    invoke-virtual {p0, v0}, Lbot;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbot;->l:Landroid/widget/TextView;

    const v0, 0x7f0802a8

    invoke-virtual {p0, v0}, Lbot;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbot;->m:Landroid/widget/TextView;

    const v0, 0x7f0802a2

    invoke-virtual {p0, v0}, Lbot;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbot;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f080053

    invoke-virtual {p0, v0}, Lbot;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbot;->h:Landroid/widget/TextView;

    iget-object v0, p0, Lbot;->h:Landroid/widget/TextView;

    iget-object v3, p0, Lbot;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lbot;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v3, "isReturnFromDownload"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_2
    if-eqz v0, :cond_2

    const-class v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/software/SoftwareManager;

    iget-object v2, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tencent/tmsecure/module/software/SoftwareManager;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-class v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isMobileDataConnectivityActive()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/netsetting/NetSettingManager;->isWifiActive()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbot;->mContext:Landroid/content/Context;

    const v3, 0x7f0b00c8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".apk"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lbot;->h:Landroid/widget/TextView;

    const v2, 0x7f0b00c4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_3
    sget-object v0, Lbot$b;->a:Lbot$b;

    iput-object v0, p0, Lbot;->t:Lbot$b;

    iget-object v0, p0, Lbot;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    const v0, 0x7f0802a3

    invoke-virtual {p0, v0}, Lbot;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbot;->i:Landroid/widget/ImageView;

    iget-object v0, p0, Lbot;->i:Landroid/widget/ImageView;

    iget-object v2, p0, Lbot;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080155

    invoke-virtual {p0, v0}, Lbot;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    new-instance v2, Lbpb;

    invoke-direct {v2, p0}, Lbpb;-><init>(Lbot;)V

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lbot;->d:Lho;

    invoke-virtual {v0}, Lho;->aW()V

    invoke-virtual {p0}, Lbot;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "extra_back_to_main"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x66da

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lbot;->d:Lho;

    invoke-virtual {v0}, Lho;->ba()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lbot;->d:Lho;

    invoke-virtual {v0}, Lho;->aZ()V

    iget-object v0, p0, Lbot;->d:Lho;

    invoke-virtual {v0, v2}, Lho;->u(Z)V

    move v0, v2

    :goto_4
    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lbot;->a(Z)V

    invoke-virtual {p0}, Lbot;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    goto/16 :goto_1

    :cond_6
    move v0, v1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lbot;->d:Lho;

    invoke-virtual {v0}, Lho;->aY()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lbot;->d:Lho;

    invoke-virtual {v0, v1}, Lho;->u(Z)V

    move v0, v2

    goto :goto_4

    :cond_8
    move v0, v1

    goto :goto_4

    :cond_9
    move v0, v1

    goto :goto_4

    :cond_a
    move v0, v2

    goto/16 :goto_2

    :cond_b
    iget-object v0, p0, Lbot;->h:Landroid/widget/TextView;

    const v2, 0x7f0b00c5

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_1
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onOptionClick(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbot;->mContext:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/SyncSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 1

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lbot;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/qqpimsecure/ui/activity/HelpListViewActivity;->a(Landroid/content/Context;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x63
        :pswitch_0
    .end packed-switch
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onResume()V
    .locals 6

    const/4 v5, 0x1

    const/16 v4, -0x3e8

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    invoke-direct {p0}, Lbot;->b()V

    invoke-direct {p0}, Lbot;->c()V

    iget-object v0, p0, Lbot;->b:Lcf;

    invoke-interface {v0}, Lcf;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lbpc;

    const-string v1, "thread_static_data"

    invoke-direct {v0, p0, v1}, Lbpc;-><init>(Lbot;Ljava/lang/String;)V

    invoke-virtual {v0}, Lbpc;->start()V

    :cond_0
    iget-object v0, p0, Lbot;->d:Lho;

    invoke-virtual {v0}, Lho;->aX()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbot;->d:Lho;

    invoke-virtual {v0}, Lho;->bi()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lbot;->o:Z

    if-nez v0, :cond_1

    iput-boolean v5, p0, Lbot;->o:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbpd;

    invoke-direct {v1, p0}, Lbpd;-><init>(Lbot;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_1
    iget-object v0, p0, Lbot;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lbot;->e:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    :cond_2
    iget-object v0, p0, Lbot;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbot;->f:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    :cond_3
    iget v0, p0, Lbot;->r:I

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lbot;->b:Lcf;

    invoke-interface {v0}, Lcf;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iput v4, p0, Lbot;->r:I

    iput-boolean v5, p0, Lbot;->s:Z

    iget-object v0, p0, Lbot;->a:Law;

    invoke-virtual {v0}, Law;->a()V

    :cond_4
    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onStart()V

    invoke-static {}, Lgw;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lgw;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const v0, 0x7f0b0298

    invoke-static {p0, v0}, La;->a(Lcom/tencent/qqpimsecure/uilib/view/BaseView;I)V

    :goto_0
    return-void

    :cond_1
    const v0, 0x7f0b0001

    invoke-static {p0, v0}, La;->a(Lcom/tencent/qqpimsecure/uilib/view/BaseView;I)V

    goto :goto_0
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    const v0, 0x7f0b032b

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method

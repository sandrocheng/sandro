.class public final Laoa;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:J

.field private F:Landroid/view/View$OnClickListener;

.field private G:Landroid/os/Handler;

.field private H:Landroid/os/Handler;

.field private a:Lum;

.field private b:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

.field private c:Lxb;

.field private d:Z

.field private e:Lqc;

.field private f:Landroid/widget/FrameLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Landroid/widget/LinearLayout;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/ImageView;

.field private l:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private m:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private n:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private o:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private p:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private q:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private r:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

.field private s:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

.field private t:Landroid/widget/ListView;

.field private u:Laip;

.field private v:I

.field private w:I

.field private x:Ljc;

.field private y:Z

.field private z:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0300a0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    new-instance v0, Laoe;

    invoke-direct {v0, p0}, Laoe;-><init>(Laoa;)V

    iput-object v0, p0, Laoa;->F:Landroid/view/View$OnClickListener;

    new-instance v0, Laof;

    invoke-direct {v0, p0}, Laof;-><init>(Laoa;)V

    iput-object v0, p0, Laoa;->G:Landroid/os/Handler;

    new-instance v0, Laog;

    invoke-direct {v0, p0}, Laog;-><init>(Laoa;)V

    iput-object v0, p0, Laoa;->H:Landroid/os/Handler;

    return-void
.end method

.method static synthetic A(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic B(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic C(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic D(Laoa;)I
    .locals 1

    iget v0, p0, Laoa;->w:I

    return v0
.end method

.method static synthetic E(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic F(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic G(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic H(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic I(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic J(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic K(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic L(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic M(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic N(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic O(Laoa;)V
    .locals 9

    const/16 v6, 0x64

    const/4 v8, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v7, 0x8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-wide v0, p0, Laoa;->E:J

    new-instance v0, Lhd;

    invoke-direct {v0}, Lhd;-><init>()V

    iget-object v0, p0, Laoa;->r:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    iget v1, p0, Laoa;->w:I

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->setScore(I)V

    iget-object v0, p0, Laoa;->r:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->endScroll()V

    iget-object v0, p0, Laoa;->s:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->stopAnimation()V

    iput-boolean v2, p0, Laoa;->C:Z

    iget-object v0, p0, Laoa;->e:Lqc;

    iget-object v0, p0, Laoa;->x:Ljc;

    iget-object v0, v0, Ljc;->b:Landroid/content/SharedPreferences;

    const-string v1, "last_score_of_check_new"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lqc;->a(I)I

    move-result v4

    iput-boolean v3, p0, Laoa;->y:Z

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    iget-object v1, p0, Laoa;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f0b0385

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    if-ne v4, v8, :cond_0

    iget-object v0, p0, Laoa;->m:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Laoa;->B:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Laoa;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Laoa;->a:Lum;

    iget-object v0, v0, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Laoa;->a:Lum;

    iget-object v0, v0, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Laoa;->m:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->o:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->p:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget v0, p0, Laoa;->w:I

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Laoa;->n:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->q:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    :cond_0
    :goto_0
    invoke-direct {p0}, Laoa;->b()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Laoa;->a(Ljava/lang/String;)V

    invoke-direct {p0}, Laoa;->c()V

    invoke-direct {p0}, Laoa;->d()V

    invoke-static {}, Lf;->f()Ljc;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-object v0, v0, Ljc;->a:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_time_of_check_new"

    invoke-interface {v0, v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Laoa;->z:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Laoa;->z:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Laoa;->z:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->dismiss()V

    iput-boolean v2, p0, Laoa;->A:Z

    :cond_1
    iget-object v0, p0, Laoa;->x:Ljc;

    iget-object v0, v0, Ljc;->a:Landroid/content/SharedPreferences$Editor;

    const-string v1, "last_check_is_optimization"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    if-eq v4, v8, :cond_2

    iget-object v0, p0, Laoa;->m:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->n:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->o:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->p:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->q:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-direct {p0}, Laoa;->e()V

    invoke-direct {p0}, Laoa;->a()V

    :cond_2
    return-void

    :cond_3
    move v1, v2

    :goto_1
    iget-object v0, p0, Laoa;->a:Lum;

    iget-object v0, v0, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Laoa;->a:Lum;

    iget-object v0, v0, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    iget v0, v0, Llc;->b:I

    const/16 v5, 0x7d9

    if-ne v0, v5, :cond_4

    move v0, v3

    :goto_2
    if-eqz v0, :cond_6

    iget-object v0, p0, Laoa;->a:Lum;

    iget-object v0, v0, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Laoa;->a:Lum;

    iget-object v0, v0, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    iget v0, p0, Laoa;->w:I

    if-ne v0, v6, :cond_5

    iget-object v0, p0, Laoa;->q:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->o:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->m:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->p:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->n:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Laoa;->q:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->m:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->p:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->o:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->n:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Laoa;->q:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->n:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->o:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->m:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->p:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_2
.end method

.method static synthetic P(Laoa;)Z
    .locals 1

    iget-boolean v0, p0, Laoa;->d:Z

    return v0
.end method

.method static synthetic Q(Laoa;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Laoa;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic R(Laoa;)Lum;
    .locals 1

    iget-object v0, p0, Laoa;->a:Lum;

    return-object v0
.end method

.method static synthetic S(Laoa;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Laoa;->a(Z)V

    return-void
.end method

.method static synthetic T(Laoa;)V
    .locals 0

    invoke-direct {p0}, Laoa;->c()V

    return-void
.end method

.method static synthetic U(Laoa;)V
    .locals 0

    invoke-direct {p0}, Laoa;->d()V

    return-void
.end method

.method static synthetic V(Laoa;)V
    .locals 2

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Laok;

    invoke-direct {v1, p0}, Laok;-><init>(Laoa;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic W(Laoa;)Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Laoa;->C:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Laoa;->C:Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic X(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic Y(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic Z(Laoa;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laoa;->H:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Laoa;I)I
    .locals 0

    iput p1, p0, Laoa;->v:I

    return p1
.end method

.method static synthetic a(Laoa;)Lqc;
    .locals 1

    iget-object v0, p0, Laoa;->e:Lqc;

    return-object v0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Laoa;->r:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->startAnimation()V

    iget-object v0, p0, Laoa;->s:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->startAnimation()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoa;->B:Z

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    iget-object v0, p0, Laoa;->c:Lxb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laoa;->c:Lxb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lxb;->a(Z)V

    iget-object v0, p0, Laoa;->c:Lxb;

    invoke-virtual {v0}, Lxb;->a()V

    iget-object v0, p0, Laoa;->c:Lxb;

    invoke-virtual {v0}, Lxb;->c()V

    iget-object v0, p0, Laoa;->c:Lxb;

    invoke-virtual {v0}, Lxb;->d()V

    iget-object v0, p0, Laoa;->c:Lxb;

    invoke-virtual {v0}, Lxb;->e()V

    iget-object v0, p0, Laoa;->c:Lxb;

    invoke-virtual {v0}, Lxb;->b()V

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0232

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Laoa;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Laoh;

    invoke-direct {v1, p0}, Laoh;-><init>(Laoa;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private a(III)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-boolean v0, p0, Laoa;->A:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Laoa;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Laoa;->z:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Laoa;->z:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0, p1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(I)V

    iget-object v0, p0, Laoa;->z:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0, p2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(I)V

    const v1, 0x7f0b05b4

    const v0, 0x7f0b05b5

    if-eq p3, v5, :cond_1

    if-ne p3, v4, :cond_2

    :cond_1
    const v1, 0x7f0b05b6

    const v0, 0x7f0b05b7

    :cond_2
    iget-object v2, p0, Laoa;->z:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    new-instance v3, Laom;

    invoke-direct {v3, p0, p3}, Laom;-><init>(Laoa;I)V

    invoke-virtual {v2, v1, v3, v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    iget-object v1, p0, Laoa;->z:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    new-instance v2, Laoc;

    invoke-direct {v2, p0}, Laoc;-><init>(Laoa;)V

    invoke-virtual {v1, v0, v2, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    iget-object v0, p0, Laoa;->z:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    new-instance v1, Laod;

    invoke-direct {v1, p0}, Laod;-><init>(Laoa;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Laoa;->z:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    iput-boolean v4, p0, Laoa;->A:Z

    goto :goto_0
.end method

.method static synthetic a(Laoa;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Laoa;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Laoa;Llc;)V
    .locals 1

    iget-object v0, p0, Laoa;->a:Lum;

    iget-object v0, v0, Lum;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Laoa;->c()V

    invoke-direct {p0}, Laoa;->b()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    const v4, 0x7f0b0233

    const v2, 0x7f09009c

    const/16 v1, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Laoa;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Laoa;->h:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Laoa;->B:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Laoa;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->j:Landroid/widget/TextView;

    iget-object v1, p0, Laoa;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Laoa;->j:Landroid/widget/TextView;

    iget-object v1, p0, Laoa;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    iget-object v0, p0, Laoa;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Laoa;->a:Lum;

    iget-object v0, v0, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-boolean v0, p0, Laoa;->B:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Laoa;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->j:Landroid/widget/TextView;

    iget-object v1, p0, Laoa;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Laoa;->j:Landroid/widget/TextView;

    iget-object v1, p0, Laoa;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0392

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Laoa;->a:Lum;

    iget-object v2, v2, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Laoa;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Laoa;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->k:Landroid/widget/ImageView;

    const v1, 0x7f020190

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Laoa;->j:Landroid/widget/TextView;

    iget-object v1, p0, Laoa;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0391

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Laoa;->j:Landroid/widget/TextView;

    iget-object v1, p0, Laoa;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090092

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Laoa;->a:Lum;

    iget-object v0, v0, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    iget-boolean v0, p0, Laoa;->B:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Laoa;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->j:Landroid/widget/TextView;

    iget-object v1, p0, Laoa;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Laoa;->j:Landroid/widget/TextView;

    iget-object v1, p0, Laoa;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_2
    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0394

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v2, p0, Laoa;->a:Lum;

    iget-object v2, v2, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Laoa;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Laoa;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->k:Landroid/widget/ImageView;

    const v1, 0x7f020190

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Laoa;->j:Landroid/widget/TextView;

    iget-object v1, p0, Laoa;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0393

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Laoa;->j:Landroid/widget/TextView;

    iget-object v1, p0, Laoa;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090092

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_5
    iget-boolean v0, p0, Laoa;->B:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Laoa;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->j:Landroid/widget/TextView;

    iget-object v1, p0, Laoa;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Laoa;->j:Landroid/widget/TextView;

    iget-object v1, p0, Laoa;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    iget-object v0, p0, Laoa;->i:Landroid/widget/TextView;

    iget-object v1, p0, Laoa;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0397

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Laoa;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Laoa;->k:Landroid/widget/ImageView;

    const v1, 0x7f020193

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Laoa;->j:Landroid/widget/TextView;

    iget-object v1, p0, Laoa;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0396

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Laoa;->j:Landroid/widget/TextView;

    iget-object v1, p0, Laoa;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3
.end method

.method private a(Z)V
    .locals 6

    const/4 v0, 0x0

    iget-object v2, p0, Laoa;->a:Lum;

    if-eqz p1, :cond_0

    iget-object v1, v2, Lum;->a:Ljava/util/ArrayList;

    iget-object v3, v2, Lum;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    iget-object v1, v2, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    new-instance v1, Llc;

    invoke-direct {v1}, Llc;-><init>()V

    const/16 v4, 0x3e9

    iput v4, v1, Llc;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Llc;->c:Ljava/lang/Object;

    iget-object v4, v2, Lum;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v4, v2, Lum;->a:Ljava/util/ArrayList;

    iget-object v5, v2, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, v2, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    new-instance v1, Llc;

    invoke-direct {v1}, Llc;-><init>()V

    const/16 v4, 0x7d1

    iput v4, v1, Llc;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Llc;->c:Ljava/lang/Object;

    iget-object v4, v2, Lum;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_2

    iget-object v4, v2, Lum;->a:Ljava/util/ArrayList;

    iget-object v5, v2, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, v2, Lum;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    new-instance v1, Llc;

    invoke-direct {v1}, Llc;-><init>()V

    const/16 v4, 0xbb9

    iput v4, v1, Llc;->b:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Llc;->c:Ljava/lang/Object;

    iget-object v4, v2, Lum;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_3

    iget-object v4, v2, Lum;->a:Ljava/util/ArrayList;

    iget-object v5, v2, Lum;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, v2, Lum;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    new-instance v3, Llc;

    invoke-direct {v3}, Llc;-><init>()V

    const/16 v4, 0xfa1

    iput v4, v3, Llc;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Llc;->c:Ljava/lang/Object;

    iget-object v4, v2, Lum;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    if-ge v0, v1, :cond_4

    iget-object v3, v2, Lum;->a:Ljava/util/ArrayList;

    iget-object v4, v2, Lum;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Laoa;->u:Laip;

    invoke-virtual {v0}, Laip;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic aa(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic ab(Laoa;)Ljc;
    .locals 1

    iget-object v0, p0, Laoa;->x:Ljc;

    return-object v0
.end method

.method static synthetic ac(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic ad(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic ae(Laoa;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Laoa;->g:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic af(Laoa;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Laoa;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic ag(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic ah(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic ai(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic aj(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic ak(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic al(Laoa;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Laoa;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic am(Laoa;)Z
    .locals 1

    iget-boolean v0, p0, Laoa;->D:Z

    return v0
.end method

.method static synthetic an(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic ao(Laoa;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Laoa;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic ap(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic aq(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic ar(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic as(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic at(Laoa;)Laip;
    .locals 1

    iget-object v0, p0, Laoa;->u:Laip;

    return-object v0
.end method

.method static synthetic au(Laoa;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoa;->y:Z

    return v0
.end method

.method static synthetic av(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;
    .locals 1

    iget-object v0, p0, Laoa;->z:Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    return-object v0
.end method

.method static synthetic aw(Laoa;)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoa;->A:Z

    return v0
.end method

.method static synthetic b(Laoa;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Laoa;->G:Landroid/os/Handler;

    return-object v0
.end method

.method private b()V
    .locals 10

    const-wide/16 v8, 0xf

    const/4 v5, 0x0

    iget-object v6, p0, Laoa;->a:Lum;

    iget-object v0, v6, Lum;->c:Ljava/util/ArrayList;

    iget-object v1, v6, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, v6, Lum;->d:Ljava/util/ArrayList;

    iget-object v1, v6, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, v6, Lum;->e:Ljava/util/ArrayList;

    iget-object v1, v6, Lum;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, v6, Lum;->a:Ljava/util/ArrayList;

    iget-object v1, v6, Lum;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    iget-object v0, v6, Lum;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    iget v1, v0, Llc;->a:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, v0, Llc;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Lxb;->c:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iput-object v1, v0, Llc;->c:Ljava/lang/Object;

    const/16 v1, 0x3ea

    iput v1, v0, Llc;->b:I

    iget-object v1, v6, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/16 v1, 0xfa2

    iput v1, v0, Llc;->b:I

    iget-object v1, v6, Lum;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, v0, Llc;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sput v2, Lxb;->d:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iput-object v1, v0, Llc;->c:Ljava/lang/Object;

    const/16 v1, 0x3ef

    iput v1, v0, Llc;->b:I

    iget-object v1, v6, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/16 v1, 0xfae

    iput v1, v0, Llc;->b:I

    iget-object v1, v6, Lum;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_2
    iget-object v1, v0, Llc;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x7d5

    iput v1, v0, Llc;->b:I

    iget-object v1, v6, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/16 v1, 0xfa3

    iput v1, v0, Llc;->b:I

    iget-object v1, v6, Lum;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    iget-object v1, v0, Llc;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_3

    const/16 v1, 0x7d2

    iput v1, v0, Llc;->b:I

    iget-object v1, v6, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0xfa5

    iput v1, v0, Llc;->b:I

    iget-object v1, v6, Lum;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_4
    iget-object v1, v0, Llc;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, v0, Llc;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    move v4, v5

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkw;

    invoke-virtual {v3}, Lkw;->I()J

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    const/16 v1, 0x7d3

    iput v1, v0, Llc;->b:I

    iget-object v1, v6, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xfa6

    iput v1, v0, Llc;->b:I

    iget-object v1, v6, Lum;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_5
    iget-object v1, v0, Llc;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_6

    const/16 v1, 0x3eb

    iput v1, v0, Llc;->b:I

    iget-object v1, v6, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xfa4

    iput v1, v0, Llc;->b:I

    iget-object v1, v6, Lum;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_6
    iget-object v1, v0, Llc;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    const/16 v1, 0x3ed

    iput v1, v0, Llc;->b:I

    iget-object v1, v6, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xfaa

    iput v1, v0, Llc;->b:I

    iget-object v1, v6, Lum;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_7
    iget-object v1, v0, Llc;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x7d7

    iput v1, v0, Llc;->b:I

    iget-object v1, v6, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0xfab

    iput v1, v0, Llc;->b:I

    iget-object v1, v6, Lum;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_8
    iget-object v1, v0, Llc;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x7dd

    iput v1, v0, Llc;->b:I

    iget-object v1, v6, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xfad

    iput v1, v0, Llc;->b:I

    iget-object v1, v6, Lum;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_9
    iget-object v1, v0, Llc;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x7

    cmp-long v1, v1, v3

    if-lez v1, :cond_a

    const/16 v1, 0x3ec

    iput v1, v0, Llc;->b:I

    iget-object v1, v6, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0xfa7

    iput v1, v0, Llc;->b:I

    iget-object v1, v6, Lum;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_a
    iget-object v1, v0, Llc;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v8

    if-lez v1, :cond_b

    const/16 v1, 0x7d6

    iput v1, v0, Llc;->b:I

    iget-object v1, v6, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0xfa8

    iput v1, v0, Llc;->b:I

    iget-object v1, v6, Lum;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_b
    iget-object v1, v0, Llc;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v8

    if-lez v1, :cond_c

    const/16 v1, 0x7d4

    iput v1, v0, Llc;->b:I

    iget-object v1, v6, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_c
    const/16 v1, 0xfa9

    iput v1, v0, Llc;->b:I

    iget-object v1, v6, Lum;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_c
    iget-object v1, v0, Llc;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_d

    const/16 v1, 0x7dc

    iput v1, v0, Llc;->b:I

    iget-object v1, v6, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    const/16 v1, 0xfac

    iput v1, v0, Llc;->b:I

    iget-object v1, v6, Lum;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    invoke-direct {p0, v5}, Laoa;->a(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_6
        :pswitch_7
        :pswitch_c
        :pswitch_8
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic c(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;
    .locals 1

    iget-object v0, p0, Laoa;->l:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    return-object v0
.end method

.method private c()V
    .locals 13

    const/16 v7, 0xb

    const/16 v6, 0x9

    const/4 v5, 0x7

    const/4 v4, 0x6

    const/4 v3, 0x0

    iget-object v0, p0, Laoa;->a:Lum;

    iget-object v0, v0, Lum;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laoa;->r:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Laoa;->a:Lum;

    iget-object v0, v0, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Laoa;->a:Lum;

    iget-object v0, v0, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    const/16 v2, 0x64

    :cond_2
    :goto_1
    iput v2, p0, Laoa;->w:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Laoa;->a:Lum;

    iget-object v1, v0, Lum;->b:Ljava/util/ArrayList;

    const/16 v0, 0x64

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v2, v0

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    iget v1, v0, Llc;->a:I

    sparse-switch v1, :sswitch_data_0

    move v0, v2

    :goto_3
    move v2, v0

    goto :goto_2

    :sswitch_0
    iget-object v0, v0, Llc;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/16 v0, 0x29

    :goto_4
    sub-int v0, v2, v0

    move v2, v0

    goto :goto_2

    :cond_4
    move v0, v3

    goto :goto_4

    :sswitch_1
    iget-object v0, v0, Llc;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    :goto_5
    sub-int v0, v2, v0

    move v2, v0

    goto :goto_2

    :cond_5
    move v0, v4

    goto :goto_5

    :sswitch_2
    iget-object v0, v0, Llc;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_9

    const/16 v1, 0x1e

    if-le v0, v1, :cond_6

    const/16 v1, 0x37

    if-gt v0, v1, :cond_6

    const/4 v0, 0x4

    :goto_6
    sub-int v0, v2, v0

    move v2, v0

    goto :goto_2

    :cond_6
    const/16 v1, 0x37

    if-le v0, v1, :cond_7

    const/16 v1, 0x46

    if-gt v0, v1, :cond_7

    move v0, v5

    goto :goto_6

    :cond_7
    const/16 v1, 0x46

    if-le v0, v1, :cond_8

    const/16 v1, 0x55

    if-gt v0, v1, :cond_8

    move v0, v6

    goto :goto_6

    :cond_8
    const/16 v1, 0x55

    if-le v0, v1, :cond_9

    move v0, v7

    goto :goto_6

    :cond_9
    move v0, v3

    goto :goto_6

    :sswitch_3
    const/4 v1, 0x0

    iget-object v0, v0, Llc;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    move v8, v1

    move v9, v3

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_a

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkw;

    invoke-virtual {v1}, Lkw;->I()J

    move-result-wide v11

    long-to-float v1, v11

    add-float/2addr v1, v8

    add-int/lit8 v8, v9, 0x1

    move v9, v8

    move v8, v1

    goto :goto_7

    :cond_a
    const/high16 v0, 0x4480

    div-float v0, v8, v0

    const/high16 v1, 0x4480

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_b

    float-to-double v8, v0

    const-wide v11, 0x3fd999999999999aL

    cmpg-double v1, v8, v11

    if-gtz v1, :cond_b

    const/4 v0, 0x1

    :goto_8
    sub-int v0, v2, v0

    move v2, v0

    goto/16 :goto_2

    :cond_b
    float-to-double v8, v0

    const-wide v11, 0x3fd999999999999aL

    cmpl-double v1, v8, v11

    if-lez v1, :cond_c

    float-to-double v8, v0

    const-wide v11, 0x3fe999999999999aL

    cmpg-double v1, v8, v11

    if-gtz v1, :cond_c

    const/4 v0, 0x2

    goto :goto_8

    :cond_c
    float-to-double v8, v0

    const-wide v11, 0x3fe999999999999aL

    cmpl-double v1, v8, v11

    if-lez v1, :cond_d

    float-to-double v8, v0

    const-wide/high16 v11, 0x4000

    cmpg-double v1, v8, v11

    if-gtz v1, :cond_d

    const/4 v0, 0x3

    goto :goto_8

    :cond_d
    float-to-double v8, v0

    const-wide/high16 v11, 0x4000

    cmpl-double v1, v8, v11

    if-lez v1, :cond_e

    float-to-double v8, v0

    const-wide/high16 v11, 0x4010

    cmpg-double v1, v8, v11

    if-gtz v1, :cond_e

    const/4 v0, 0x4

    goto :goto_8

    :cond_e
    float-to-double v8, v0

    const-wide/high16 v11, 0x4010

    cmpl-double v1, v8, v11

    if-lez v1, :cond_f

    float-to-double v8, v0

    const-wide/high16 v11, 0x4020

    cmpg-double v1, v8, v11

    if-gtz v1, :cond_f

    const/4 v0, 0x5

    goto :goto_8

    :cond_f
    float-to-double v8, v0

    const-wide/high16 v11, 0x4020

    cmpl-double v1, v8, v11

    if-lez v1, :cond_10

    float-to-double v8, v0

    const-wide/high16 v11, 0x4028

    cmpg-double v1, v8, v11

    if-gtz v1, :cond_10

    move v0, v4

    goto :goto_8

    :cond_10
    float-to-double v8, v0

    const-wide/high16 v11, 0x4028

    cmpl-double v1, v8, v11

    if-lez v1, :cond_11

    float-to-double v8, v0

    const-wide/high16 v11, 0x4032

    cmpg-double v1, v8, v11

    if-gtz v1, :cond_11

    move v0, v5

    goto :goto_8

    :cond_11
    float-to-double v8, v0

    const-wide/high16 v11, 0x4032

    cmpl-double v1, v8, v11

    if-lez v1, :cond_12

    float-to-double v8, v0

    const-wide/high16 v11, 0x403e

    cmpg-double v1, v8, v11

    if-gtz v1, :cond_12

    const/16 v0, 0x8

    goto :goto_8

    :cond_12
    float-to-double v0, v0

    const-wide/high16 v8, 0x403e

    cmpl-double v0, v0, v8

    if-lez v0, :cond_13

    move v0, v6

    goto/16 :goto_8

    :cond_13
    move v0, v3

    goto/16 :goto_8

    :sswitch_4
    iget-object v0, v0, Llc;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v3

    :goto_9
    sub-int v0, v2, v0

    move v2, v0

    goto/16 :goto_2

    :cond_14
    const/16 v0, 0x15

    goto :goto_9

    :sswitch_5
    iget-object v0, v0, Llc;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v3

    :goto_a
    sub-int v0, v2, v0

    move v2, v0

    goto/16 :goto_2

    :cond_15
    move v0, v6

    goto :goto_a

    :sswitch_6
    iget-object v0, v0, Llc;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_16

    move v0, v3

    :goto_b
    sub-int v0, v2, v0

    move v2, v0

    goto/16 :goto_2

    :cond_16
    move v0, v4

    goto :goto_b

    :sswitch_7
    iget-object v0, v0, Llc;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v3

    :goto_c
    sub-int v0, v2, v0

    move v2, v0

    goto/16 :goto_2

    :cond_17
    move v0, v7

    goto :goto_c

    :sswitch_8
    iget-object v0, v0, Llc;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v8, 0x7

    cmp-long v0, v0, v8

    if-lez v0, :cond_1e

    const/16 v0, 0x11

    :goto_d
    sub-int v0, v2, v0

    goto/16 :goto_3

    :sswitch_9
    iget-object v0, v0, Llc;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v8, 0xf

    cmp-long v0, v0, v8

    if-ltz v0, :cond_1e

    move v0, v7

    goto :goto_d

    :sswitch_a
    iget-object v1, v0, Llc;->c:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_18

    iget-object v0, v0, Llc;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v0, v0

    :goto_e
    const-wide/16 v8, 0xf

    cmp-long v0, v0, v8

    if-ltz v0, :cond_19

    const/16 v0, 0x10

    :goto_f
    sub-int v0, v2, v0

    move v2, v0

    goto/16 :goto_2

    :cond_18
    iget-object v0, v0, Llc;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_e

    :cond_19
    move v0, v3

    goto :goto_f

    :sswitch_b
    iget-object v0, v0, Llc;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_1a

    move v0, v7

    goto :goto_d

    :cond_1a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v8, 0x3

    if-lt v1, v8, :cond_1b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v4, :cond_1b

    move v0, v6

    goto :goto_d

    :cond_1b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_1e

    move v0, v5

    goto :goto_d

    :sswitch_c
    iget-object v0, v0, Llc;->c:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    const/16 v0, 0x29

    goto :goto_d

    :cond_1c
    move v0, v3

    goto :goto_d

    :cond_1d
    if-gez v2, :cond_2

    move v2, v3

    goto/16 :goto_1

    :cond_1e
    move v0, v3

    goto :goto_d

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_8
        0x6 -> :sswitch_9
        0x7 -> :sswitch_a
        0x8 -> :sswitch_5
        0x9 -> :sswitch_6
        0xa -> :sswitch_b
        0xb -> :sswitch_7
        0xc -> :sswitch_0
        0x7d8 -> :sswitch_c
    .end sparse-switch
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Laoa;->x:Ljc;

    iget v1, p0, Laoa;->w:I

    iget-object v0, v0, Ljc;->a:Landroid/content/SharedPreferences$Editor;

    const-string v2, "last_score_of_check_new"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Laoa;->x:Ljc;

    iget-object v1, p0, Laoa;->a:Lum;

    iget-object v1, v1, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v0, v0, Ljc;->a:Landroid/content/SharedPreferences$Editor;

    const-string v2, "last_danger_of_check_new"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic d(Laoa;)V
    .locals 2

    iget-object v0, p0, Laoa;->a:Lum;

    invoke-virtual {v0}, Lum;->a()V

    iget-object v0, p0, Laoa;->u:Laip;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laoa;->u:Laip;

    invoke-virtual {v0}, Laip;->notifyDataSetChanged()V

    :cond_0
    iget-object v0, p0, Laoa;->e:Lqc;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lqc;->i:Z

    iget v1, v0, Lqc;->c:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :pswitch_0
    invoke-static {}, Lpt;->a()Lpt;

    move-result-object v0

    invoke-virtual {v0}, Lpt;->b()V

    goto :goto_0

    :pswitch_1
    iget-object v0, v0, Lqc;->f:Lcom/tencent/tmsecure/module/qscanner/QScannerManager;

    invoke-virtual {v0}, Lcom/tencent/tmsecure/module/qscanner/QScannerManager;->cancelScan()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Laoa;->s:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgressTextVisible(I)V

    iget-object v0, p0, Laoa;->s:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    iget-object v1, p0, Laoa;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0233

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setSummaryText(Ljava/lang/String;)V

    iget-object v0, p0, Laoa;->s:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgressWithAnim(I)V

    iget-object v0, p0, Laoa;->l:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setId(I)V

    return-void
.end method

.method static synthetic e(Laoa;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoa;->C:Z

    return v0
.end method

.method static synthetic f(Laoa;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Laoa;->D:Z

    return v0
.end method

.method static synthetic g(Laoa;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoa;->B:Z

    iget-object v0, p0, Laoa;->s:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->stopAnimation()V

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Laoi;

    invoke-direct {v1, p0}, Laoi;-><init>(Laoa;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic h(Laoa;)Lxb;
    .locals 1

    iget-object v0, p0, Laoa;->c:Lxb;

    return-object v0
.end method

.method static synthetic i(Laoa;)V
    .locals 2

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Laol;

    invoke-direct {v1, p0}, Laol;-><init>(Laoa;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic j(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;
    .locals 1

    iget-object v0, p0, Laoa;->m:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    return-object v0
.end method

.method static synthetic k(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;
    .locals 1

    iget-object v0, p0, Laoa;->n:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    return-object v0
.end method

.method static synthetic l(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;
    .locals 1

    iget-object v0, p0, Laoa;->o:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    return-object v0
.end method

.method static synthetic m(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;
    .locals 1

    iget-object v0, p0, Laoa;->p:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    return-object v0
.end method

.method static synthetic n(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;
    .locals 1

    iget-object v0, p0, Laoa;->q:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    return-object v0
.end method

.method static synthetic o(Laoa;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Laoa;->f:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic p(Laoa;)V
    .locals 0

    invoke-direct {p0}, Laoa;->e()V

    return-void
.end method

.method static synthetic q(Laoa;)V
    .locals 0

    invoke-direct {p0}, Laoa;->a()V

    return-void
.end method

.method static synthetic r(Laoa;)V
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic s(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic t(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic u(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic v(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;
    .locals 1

    iget-object v0, p0, Laoa;->r:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    return-object v0
.end method

.method static synthetic w(Laoa;)I
    .locals 1

    iget v0, p0, Laoa;->v:I

    return v0
.end method

.method static synthetic x(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;
    .locals 1

    iget-object v0, p0, Laoa;->s:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    return-object v0
.end method

.method static synthetic y(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic z(Laoa;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final onBackClick()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-boolean v2, Lqc;->h:Z

    if-eqz v2, :cond_2

    const v2, 0x7f0b01f5

    const v3, 0x7f0b01f7

    invoke-direct {p0, v2, v3, v0}, Laoa;->a(III)V

    move v0, v1

    :cond_0
    :goto_0
    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    :cond_1
    return-void

    :cond_2
    iget-boolean v2, p0, Laoa;->B:Z

    if-eqz v2, :cond_3

    iput-boolean v1, p0, Laoa;->C:Z

    iput-boolean v1, p0, Laoa;->D:Z

    iput-boolean v0, p0, Laoa;->B:Z

    iget-object v0, p0, Laoa;->s:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->stopAnimation()V

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Laoi;

    invoke-direct {v2, p0}, Laoi;-><init>(Laoa;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, p0, Laoa;->c:Lxb;

    invoke-virtual {v0, v1}, Lxb;->a(Z)V

    iget-object v0, p0, Laoa;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v2, Laol;

    invoke-direct {v2, p0}, Laol;-><init>(Laoa;)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    move v0, v1

    goto :goto_0

    :cond_3
    iget-boolean v2, p0, Laoa;->y:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Laoa;->a:Lum;

    iget-object v2, v2, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ltz v2, :cond_4

    iget-object v2, p0, Laoa;->a:Lum;

    iget-object v2, v2, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    :cond_4
    const v0, 0x7f0b00ef

    const v2, 0x7f0b05b8

    const/4 v3, 0x2

    invoke-direct {p0, v0, v2, v3}, Laoa;->a(III)V

    move v0, v1

    goto :goto_0
.end method

.method public final onCreate()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Laoa;->E:J

    new-instance v0, Lum;

    invoke-direct {v0}, Lum;-><init>()V

    iput-object v0, p0, Laoa;->a:Lum;

    const v0, 0x7f0801ee

    invoke-virtual {p0, v0}, Laoa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laoa;->i:Landroid/widget/TextView;

    const v0, 0x7f0801ed

    invoke-virtual {p0, v0}, Laoa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Laoa;->j:Landroid/widget/TextView;

    const v0, 0x7f0801ec

    invoke-virtual {p0, v0}, Laoa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Laoa;->k:Landroid/widget/ImageView;

    const v0, 0x7f0801f0

    invoke-virtual {p0, v0}, Laoa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    iput-object v0, p0, Laoa;->s:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    const v0, 0x7f0801eb

    invoke-virtual {p0, v0}, Laoa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    iput-object v0, p0, Laoa;->r:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    const v0, 0x7f080153

    invoke-virtual {p0, v0}, Laoa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Laoa;->t:Landroid/widget/ListView;

    const v0, 0x7f0801ef

    invoke-virtual {p0, v0}, Laoa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Laoa;->f:Landroid/widget/FrameLayout;

    const v0, 0x7f0801f2

    invoke-virtual {p0, v0}, Laoa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Laoa;->g:Landroid/widget/LinearLayout;

    const v0, 0x7f0801ea

    invoke-virtual {p0, v0}, Laoa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Laoa;->h:Landroid/widget/LinearLayout;

    const v0, 0x7f0801f1

    invoke-virtual {p0, v0}, Laoa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Laoa;->l:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v0, 0x7f0801f3

    invoke-virtual {p0, v0}, Laoa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Laoa;->m:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v0, 0x7f0801f5

    invoke-virtual {p0, v0}, Laoa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Laoa;->n:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v0, 0x7f0801f4

    invoke-virtual {p0, v0}, Laoa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Laoa;->o:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v0, 0x7f0801f6

    invoke-virtual {p0, v0}, Laoa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Laoa;->p:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v0, 0x7f0801f7

    invoke-virtual {p0, v0}, Laoa;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Laoa;->q:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    new-instance v0, Laip;

    iget-object v1, p0, Laoa;->mContext:Landroid/content/Context;

    iget-object v2, p0, Laoa;->a:Lum;

    iget-object v2, v2, Lum;->a:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Laip;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Laoa;->u:Laip;

    iget-object v0, p0, Laoa;->t:Landroid/widget/ListView;

    iget-object v1, p0, Laoa;->u:Laip;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Laoa;->t:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    iget-object v0, p0, Laoa;->t:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setFocusableInTouchMode(Z)V

    invoke-static {}, Lf;->f()Ljc;

    move-result-object v0

    iput-object v0, p0, Laoa;->x:Ljc;

    new-instance v0, Lqc;

    iget-object v1, p0, Laoa;->mContext:Landroid/content/Context;

    iget-object v2, p0, Laoa;->G:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lqc;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Laoa;->e:Lqc;

    const-class v0, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iput-object v0, p0, Laoa;->b:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    new-instance v0, Lxb;

    iget-object v1, p0, Laoa;->mContext:Landroid/content/Context;

    iget-object v2, p0, Laoa;->H:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lxb;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Laoa;->c:Lxb;

    iget-object v0, p0, Laoa;->b:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iget-object v1, p0, Laoa;->c:Lxb;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->addListener(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    iget-object v0, p0, Laoa;->c:Lxb;

    iget-object v1, p0, Laoa;->a:Lum;

    iget-object v1, v1, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lxb;->b(Ljava/util/ArrayList;)V

    iget-object v0, p0, Laoa;->c:Lxb;

    iget-object v1, p0, Laoa;->a:Lum;

    iget-object v1, v1, Lum;->f:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lxb;->e(Ljava/util/ArrayList;)V

    iget-object v0, p0, Laoa;->c:Lxb;

    iget-object v1, p0, Laoa;->a:Lum;

    iget-object v1, v1, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lxb;->c(Ljava/util/ArrayList;)V

    iget-object v0, p0, Laoa;->c:Lxb;

    iget-object v1, p0, Laoa;->a:Lum;

    iget-object v1, v1, Lum;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lxb;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Laoa;->c:Lxb;

    iget-object v1, p0, Laoa;->a:Lum;

    iget-object v1, v1, Lum;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lxb;->d(Ljava/util/ArrayList;)V

    iget-object v0, p0, Laoa;->l:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Laoa;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Laoa;->l:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setClickable(Z)V

    iget-object v0, p0, Laoa;->m:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Laoa;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Laoa;->n:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Laoa;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Laoa;->o:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Laoa;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Laoa;->p:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Laoa;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Laoa;->q:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Laoa;->F:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Laoa;->s:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgressTextVisible(I)V

    iget-object v0, p0, Laoa;->s:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setSummaryText(Ljava/lang/String;)V

    iget-object v0, p0, Laoa;->l:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setId(I)V

    const/16 v0, 0x64

    iput v0, p0, Laoa;->w:I

    iget-object v0, p0, Laoa;->r:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    iget v1, p0, Laoa;->w:I

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->setScore(I)V

    iput v3, p0, Laoa;->v:I

    iget-object v0, p0, Laoa;->s:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    iget v1, p0, Laoa;->v:I

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgressWithAnim(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Laob;

    invoke-direct {v1, p0}, Laob;-><init>(Laoa;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onDestroy()V

    iget-object v0, p0, Laoa;->r:Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->detroy()V

    iget-object v0, p0, Laoa;->e:Lqc;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lqc;->i:Z

    iget-object v0, p0, Laoa;->c:Lxb;

    if-eqz v0, :cond_0

    iget-object v0, p0, Laoa;->b:Lcom/tencent/tmsecure/module/tools/PackageChangedManager;

    iget-object v1, p0, Laoa;->c:Lxb;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/PackageChangedManager;->removeListener(Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;)Lcom/tencent/tmsecure/module/tools/IPackageChangedListener;

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lqc;->g:Z

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Laoa;->d:Z

    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onResume()V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    iput-boolean v2, p0, Laoa;->d:Z

    invoke-virtual {p0}, Laoa;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Laoa;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    invoke-virtual {p0}, Laoa;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    :cond_0
    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b022d

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    const/16 v0, 0x32

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarWithoutShadow()V

    return-void
.end method

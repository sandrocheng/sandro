.class public final Lbkn;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:Z

.field private G:Ljava/util/Timer;

.field private H:Ljava/lang/String;

.field private I:Landroid/os/Handler;

.field private a:I

.field private b:I

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Llb;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Landroid/widget/FrameLayout;

.field private f:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

.field private g:Landroid/view/animation/TranslateAnimation;

.field private h:Landroid/view/animation/TranslateAnimation;

.field private i:Landroid/view/animation/TranslateAnimation;

.field private j:Landroid/widget/FrameLayout;

.field private k:Landroid/widget/ListView;

.field private l:Landroid/widget/LinearLayout;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/TextView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/LinearLayout;

.field private u:Landroid/content/Context;

.field private v:Laku;

.field private w:Lki;

.field private x:Ljr;

.field private y:Lzs;

.field private z:Lzq;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0300d2

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbkn;->F:Z

    const-string v0, "SMSChargeCheckTabView"

    iput-object v0, p0, Lbkn;->H:Ljava/lang/String;

    new-instance v0, Lbko;

    invoke-direct {v0, p0}, Lbko;-><init>(Lbkn;)V

    iput-object v0, p0, Lbkn;->I:Landroid/os/Handler;

    iput-object p1, p0, Lbkn;->u:Landroid/content/Context;

    return-void
.end method

.method static synthetic A(Lbkn;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbkn;->A:Z

    return v0
.end method

.method static synthetic a(Lbkn;I)I
    .locals 0

    iput p1, p0, Lbkn;->B:I

    return p1
.end method

.method private static a(Ljava/util/ArrayList;Llb;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Llb;",
            ">;",
            "Llb;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llb;

    iget-object v0, v0, Llb;->c:Lmk;

    iget-wide v3, v0, Lmk;->date:J

    iget-object v0, p1, Llb;->c:Lmk;

    iget-wide v5, v0, Lmk;->date:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return v2
.end method

.method static synthetic a(Lbkn;Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;
    .locals 1

    invoke-direct {p0, p1, p2}, Lbkn;->a(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbkn;->u:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f09007a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v0}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    const/16 v1, 0x22

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v3
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lbkn;->v:Laku;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbkn;->v:Laku;

    invoke-virtual {v0}, Laku;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbkn;->k:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lbkn;->k:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lbkn;Ljava/util/ArrayList;I)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lbkn;->v:Laku;

    invoke-virtual {v0, p2}, Laku;->c(I)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lbkn;->v:Laku;

    invoke-virtual {v1, v0}, Laku;->a(I)V

    iget v0, p0, Lbkn;->a:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lbkn;->a:I

    invoke-direct {p0}, Lbkn;->b()V

    iget-object v0, p0, Lbkn;->u:Landroid/content/Context;

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    const v2, 0x7f0b0258

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Ljo;->a()Ljo;

    move-result-object v0

    const-string v1, "nocharge_phonenum_smslog"

    invoke-virtual {v0, v1}, Ljo;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lzq;->b:Ljava/util/List;

    iget-object v0, p0, Lbkn;->v:Laku;

    invoke-virtual {v0}, Laku;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lbkn;->a()V

    goto :goto_0
.end method

.method static synthetic a(Lbkn;Llb;)V
    .locals 5

    const/16 v2, 0x8

    const/4 v3, 0x0

    iget v0, p0, Lbkn;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lbkn;->a:I

    const/4 v4, 0x1

    iget-object v0, p1, Llb;->c:Lmk;

    invoke-virtual {v0}, Lmk;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v2, :cond_3

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    move v2, v3

    :goto_1
    iget-object v0, p0, Lbkn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lbkn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbkn;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lbkn;->a(Ljava/util/ArrayList;Llb;)I

    move-result v4

    iget-object v0, p0, Lbkn;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_2
    if-eqz v3, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lbkn;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lbkn;->d:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lbkn;->d:Ljava/util/ArrayList;

    iget-object v1, p0, Lbkn;->d:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lbkn;->a(Ljava/util/ArrayList;Llb;)I

    move-result v1

    iget-object v0, p0, Lbkn;->d:Ljava/util/ArrayList;

    iget-object v2, p0, Lbkn;->d:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method static synthetic a(Lbkn;Llb;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lbkn;->a(Llb;I)V

    return-void
.end method

.method static synthetic a(Lbkn;Lmk;I)V
    .locals 7

    const-wide/16 v5, 0x3e8

    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lbkn;->x:Ljr;

    iget-wide v1, p1, Lmk;->date:J

    invoke-virtual {v0, v1, v2}, Ljr;->b(J)Lmm;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lmm;

    invoke-direct {v0}, Lmm;-><init>()V

    iput v3, v0, Lmm;->a:I

    iput v3, v0, Lmm;->m:I

    iput-object v4, v0, Lmm;->j:Ljava/lang/String;

    iput v3, v0, Lmm;->e:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v5

    long-to-int v1, v1

    iput v1, v0, Lmm;->d:I

    iput v3, v0, Lmm;->h:I

    invoke-virtual {p1}, Lmk;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmm;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lmk;->getBody()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmm;->c:Ljava/lang/String;

    iget v1, p1, Lmk;->smstype:I

    iput v1, v0, Lmm;->n:I

    iput v3, v0, Lmm;->f:I

    iget-wide v1, p1, Lmk;->date:J

    iput-wide v1, v0, Lmm;->k:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lmm;->l:J

    iput-object v4, v0, Lmm;->g:Ljava/util/ArrayList;

    iget-object v1, v0, Lmm;->i:Ljava/util/ArrayList;

    new-instance v2, LQQPIM/UserActionTime;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long/2addr v3, v5

    long-to-int v3, v3

    invoke-direct {v2, p2, v3}, LQQPIM/UserActionTime;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lbkn;->x:Ljr;

    invoke-virtual {v1, v0}, Ljr;->a(Lmm;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbkn;->y:Lzs;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lzs;->a(Lmk;ZI)V

    goto :goto_0
.end method

.method static synthetic a(Lbkn;Lmk;IZZ)V
    .locals 3

    if-eqz p3, :cond_0

    if-nez p4, :cond_2

    iget-object v0, p0, Lbkn;->w:Lki;

    iget v1, p1, Lmk;->id:I

    invoke-virtual {v0, v1}, Lki;->a(I)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lbkn;->v:Laku;

    invoke-virtual {v0, p2}, Laku;->b(I)V

    iget v0, p0, Lbkn;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lbkn;->a:I

    invoke-direct {p0}, Lbkn;->b()V

    if-eqz p3, :cond_3

    iget-object v0, p0, Lbkn;->u:Landroid/content/Context;

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    const v2, 0x7f0b0471

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lbkn;->v:Laku;

    invoke-virtual {v0}, Laku;->getCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lbkn;->a()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lbkn;->u:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lsy;->b(Landroid/app/Activity;)Lsy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lsy;->a(ILcom/tencent/tmsecure/module/aresengine/TelephonyEntity;)Z

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lbkn;->u:Landroid/content/Context;

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    const v2, 0x7f0b0258

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Ljo;->a()Ljo;

    move-result-object v0

    const-string v1, "nocharge_body_smslog"

    invoke-virtual {v0, v1}, Ljo;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lzq;->a:Ljava/util/List;

    goto :goto_1
.end method

.method static synthetic a(Lbkn;Z)V
    .locals 10

    iget-object v0, p0, Lbkn;->z:Lzq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbkn;->z:Lzq;

    iget-boolean v0, v0, Lzq;->f:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v9, Lbkw;

    invoke-direct {v9, p0}, Lbkw;-><init>(Lbkn;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const v2, -0x41b33333

    const/4 v3, 0x1

    const v4, -0x42333333

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const v8, -0x41b33333

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lbkn;->g:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lbkn;->g:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lbkn;->g:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const v2, -0x42333333

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, -0x41b33333

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lbkn;->h:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lbkn;->h:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lbkn;->h:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, -0x41b33333

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lbkn;->i:Landroid/view/animation/TranslateAnimation;

    iget-object v0, p0, Lbkn;->i:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    iget-object v0, p0, Lbkn;->i:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v9}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbkn;->F:Z

    iget-object v0, p0, Lbkn;->j:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lbkn;->g:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lbkn;->l:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lbkn;->e:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lbkn;->f:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgress(I)V

    iget-object v0, p0, Lbkn;->f:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->startAnimation()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lbkn;->G:Ljava/util/Timer;

    iget-object v0, p0, Lbkn;->G:Ljava/util/Timer;

    new-instance v1, Lbkx;

    invoke-direct {v1, p0}, Lbkx;-><init>(Lbkn;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    iget-object v0, p0, Lbkn;->o:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lbkn;->n:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lbkn;->q:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lbkn;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    const v2, 0x7f0b0474

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbkn;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbkn;->t:Landroid/widget/LinearLayout;

    const v1, 0x7f02028c

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    const/4 v0, 0x0

    iput v0, p0, Lbkn;->C:I

    const/4 v0, 0x0

    iput v0, p0, Lbkn;->B:I

    const/4 v0, 0x0

    iput v0, p0, Lbkn;->E:I

    iget-object v0, p0, Lbkn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lbkn;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lbkn;->a:I

    iget-object v0, p0, Lbkn;->u:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0473

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lbkn;->a:I

    invoke-direct {p0, v0, v1}, Lbkn;->a(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkn;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbkn;->v:Laku;

    invoke-virtual {v0}, Laku;->a()V

    iget-object v0, p0, Lbkn;->v:Laku;

    invoke-virtual {v0}, Laku;->notifyDataSetChanged()V

    iget-object v0, p0, Lbkn;->z:Lzq;

    invoke-virtual {v0, p1}, Lzq;->a(Z)V

    goto/16 :goto_0
.end method

.method private a(Llb;I)V
    .locals 5

    iget-object v0, p1, Llb;->d:Lcom/tencent/tccdb/MMatchSysResult;

    if-nez v0, :cond_0

    iget-object v0, p0, Lbkn;->u:Landroid/content/Context;

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    const v2, 0x7f0b0485

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lha;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lbkn;->y:Lzs;

    new-instance v1, Lbkz;

    invoke-direct {v1, p0, p1, p2}, Lbkz;-><init>(Lbkn;Llb;I)V

    iget-object v2, p1, Llb;->c:Lmk;

    iget-object v3, p1, Llb;->d:Lcom/tencent/tccdb/MMatchSysResult;

    new-instance v4, Laab;

    invoke-direct {v4, v0, v2, v3, v1}, Laab;-><init>(Lzs;Lmk;Lcom/tencent/tccdb/MMatchSysResult;Ldv;)V

    invoke-virtual {v4}, Laab;->start()V

    goto :goto_0
.end method

.method private a(Lmk;I)V
    .locals 7

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v1, 0x0

    new-array v2, v5, [Ljava/lang/String;

    iget-object v0, p0, Lbkn;->u:Landroid/content/Context;

    const v3, 0x7f0b01fa

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    iget-object v0, p0, Lbkn;->u:Landroid/content/Context;

    const v3, 0x7f0b01fb

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    new-array v3, v5, [Ljava/lang/String;

    const-string v0, "0"

    aput-object v0, v3, v1

    const-string v0, "1"

    aput-object v0, v3, v4

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    new-instance v5, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;

    invoke-direct {v5}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;-><init>()V

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setRadioButtonName(Ljava/lang/String;)V

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Lcom/tencent/qqpimsecure/uilib/model/RadioButtonMode;->setRadioEventCode(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;

    iget-object v2, p0, Lbkn;->u:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setDataAdapter(Ljava/util/ArrayList;I)V

    const v1, 0x7f0b03ef

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setTitle(I)V

    new-instance v1, Landroid/widget/TextView;

    iget-object v2, p0, Lbkn;->u:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0b01fc

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lbkn;->u:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v2, 0x4170

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setFooterContextView(Landroid/view/View;)V

    new-instance v1, Lbky;

    invoke-direct {v1, p0, p1, p2, v0}, Lbky;-><init>(Lbkn;Lmk;ILcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/RadioButtonDialog;->show()V

    return-void
.end method

.method static synthetic a(Lbkn;)Z
    .locals 1

    iget-boolean v0, p0, Lbkn;->A:Z

    return v0
.end method

.method static synthetic b(Lbkn;I)I
    .locals 0

    iput p1, p0, Lbkn;->C:I

    return p1
.end method

.method static synthetic b(Lbkn;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbkn;->u:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 5

    const/16 v2, 0x8

    const/4 v4, 0x0

    iget-object v0, p0, Lbkn;->u:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0473

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lbkn;->a:I

    invoke-direct {p0, v0, v1}, Lbkn;->a(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkn;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v0, p0, Lbkn;->a:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lbkn;->k:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lbkn;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lbkn;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0476

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lbkn;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbkn;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbkn;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    const v2, 0x7f0b0477

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbkn;->o:Landroid/widget/ImageView;

    const v1, 0x7f020190

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    iget-object v0, p0, Lbkn;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lbkn;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lbkn;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lbkn;->k:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lbkn;->s:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lbkn;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    const v2, 0x7f0b0478

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbkn;->p:Landroid/widget/TextView;

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbkn;->q:Landroid/widget/TextView;

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    const v2, 0x7f0b0479

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbkn;->o:Landroid/widget/ImageView;

    const v1, 0x7f020193

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method static synthetic c(Lbkn;I)I
    .locals 0

    iput p1, p0, Lbkn;->D:I

    return p1
.end method

.method static synthetic c(Lbkn;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lbkn;->q:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lbkn;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lbkn;->G:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic d(Lbkn;I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lbkn;->u:Landroid/content/Context;

    const-string v1, "10086"

    const-string v2, "0000"

    invoke-static {v0, v1, v2}, Lgu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lbkn;->u:Landroid/content/Context;

    const-string v1, "10010"

    const-string v2, "YE"

    invoke-static {v0, v1, v2}, Lgu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lbkn;->u:Landroid/content/Context;

    const-string v1, "10001"

    const-string v2, "0000"

    invoke-static {v0, v1, v2}, Lgu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic e(Lbkn;)I
    .locals 2

    iget v0, p0, Lbkn;->C:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbkn;->C:I

    return v0
.end method

.method static synthetic f(Lbkn;)I
    .locals 1

    iget v0, p0, Lbkn;->C:I

    return v0
.end method

.method static synthetic g(Lbkn;)I
    .locals 1

    iget v0, p0, Lbkn;->B:I

    return v0
.end method

.method static synthetic h(Lbkn;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;
    .locals 1

    iget-object v0, p0, Lbkn;->f:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    return-object v0
.end method

.method static synthetic i(Lbkn;)I
    .locals 2

    iget v0, p0, Lbkn;->E:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbkn;->E:I

    return v0
.end method

.method static synthetic j(Lbkn;)I
    .locals 1

    iget v0, p0, Lbkn;->a:I

    return v0
.end method

.method static synthetic k(Lbkn;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbkn;->H:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lbkn;)I
    .locals 1

    iget v0, p0, Lbkn;->E:I

    return v0
.end method

.method static synthetic m(Lbkn;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lbkn;->f:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->stopAnimation()V

    iget-object v0, p0, Lbkn;->e:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lbkn;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-boolean v2, p0, Lbkn;->F:Z

    iget-object v0, p0, Lbkn;->j:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->clearAnimation()V

    invoke-direct {p0}, Lbkn;->b()V

    return-void
.end method

.method static synthetic n(Lbkn;)V
    .locals 6

    const/4 v3, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    :goto_0
    iget-object v0, p0, Lbkn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    new-instance v5, Lcom/tencent/qqpimsecure/uilib/model/ListModel;

    iget-object v0, p0, Lbkn;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lbkn;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v5, v0, v1, v3}, Lcom/tencent/qqpimsecure/uilib/model/ListModel;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lbkn;->v:Laku;

    invoke-virtual {v0, v4}, Laku;->setDataList(Ljava/util/List;)V

    iget-object v0, p0, Lbkn;->v:Laku;

    invoke-virtual {v0}, Laku;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic o(Lbkn;)I
    .locals 1

    iget v0, p0, Lbkn;->D:I

    return v0
.end method

.method static synthetic p(Lbkn;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lbkn;->r:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic q(Lbkn;)Z
    .locals 1

    iget-boolean v0, p0, Lbkn;->F:Z

    return v0
.end method

.method static synthetic r(Lbkn;)Landroid/view/animation/TranslateAnimation;
    .locals 1

    iget-object v0, p0, Lbkn;->g:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic s(Lbkn;)Landroid/view/animation/TranslateAnimation;
    .locals 1

    iget-object v0, p0, Lbkn;->h:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic t(Lbkn;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lbkn;->j:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic u(Lbkn;)Landroid/view/animation/TranslateAnimation;
    .locals 1

    iget-object v0, p0, Lbkn;->i:Landroid/view/animation/TranslateAnimation;

    return-object v0
.end method

.method static synthetic v(Lbkn;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbkn;->I:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic w(Lbkn;)Laku;
    .locals 1

    iget-object v0, p0, Lbkn;->v:Laku;

    return-object v0
.end method

.method static synthetic x(Lbkn;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    const v2, 0x7f0b02aa

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    const v2, 0x7f0b02ab

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    const v2, 0x7f0b02ac

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v2, p0, Lbkn;->u:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    aget-object v4, v0, v5

    iput-object v4, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    iput v5, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    aget-object v4, v0, v6

    iput-object v4, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    iput v6, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v3

    invoke-virtual {v3}, Lnp;->m()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v3}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    aget-object v0, v0, v7

    iput-object v0, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    iput v7, v3, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setDataAdapter(Ljava/util/ArrayList;)V

    new-instance v0, Lbkr;

    invoke-direct {v0, p0, v1}, Lbkr;-><init>(Lbkn;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0b09aa

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setTitle(I)V

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->show()V

    return-void
.end method

.method static synthetic y(Lbkn;)V
    .locals 5

    const v2, 0x7f0b045d

    const v4, 0x7f0b0045

    const/4 v3, 0x2

    invoke-static {}, Lft;->d()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "10086"

    const-string v1, "0000"

    invoke-static {v0, v1}, Lgu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "10010"

    const-string v1, "YE"

    invoke-static {v0, v1}, Lgu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "10001"

    const-string v1, "0000"

    invoke-static {v0, v1}, Lgu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    const v2, 0x7f0b047e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v1, Lbkp;

    invoke-direct {v1, v0}, Lbkp;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v4, v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto :goto_0

    :pswitch_4
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    const v2, 0x7f0b047f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v1, Lbkq;

    invoke-direct {v1, v0}, Lbkq;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v4, v1, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic z(Lbkn;)Lzq;
    .locals 1

    iget-object v0, p0, Lbkn;->z:Lzq;

    return-object v0
.end method


# virtual methods
.method public final onBackClick()V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lbkn;->z:Lzq;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lbkn;->A:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lbkn;->z:Lzq;

    iget-boolean v1, v1, Lzq;->f:Z

    if-eqz v1, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    const v2, 0x7f0b04d1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    const v2, 0x7f0b034b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    const v1, 0x7f0b01f5

    new-instance v2, Lbku;

    invoke-direct {v2, p0, v0}, Lbku;-><init>(Lbkn;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    const v1, 0x7f0b01f6

    new-instance v2, Lbkv;

    invoke-direct {v2, v0}, Lbkv;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v1, v2, v4}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "extra_back_to_main"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lbkn;->u:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/commontools/CommonToolsActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "extra_back_to_main"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    goto :goto_0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 11

    const v3, 0x7f0b047b

    const v10, 0x7f0b0045

    const v9, 0x7f0b0033

    const/4 v8, 0x2

    const/4 v7, 0x1

    iget-object v0, p0, Lbkn;->l:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_2

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x65ee

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    const v2, 0x7f0b047a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lft;->d()I

    move-result v1

    if-ne v1, v7, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbkn;->u:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbkn;->u:Landroid/content/Context;

    const v3, 0x7f0b047c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    new-instance v1, Lbks;

    invoke-direct {v1, p0, v0}, Lbks;-><init>(Lbkn;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v10, v1, v8}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v1, Lbkt;

    invoke-direct {v1, v0}, Lbkt;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v0, v9, v1, v8}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lbkn;->m:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lbkn;->z:Lzq;

    iput-boolean v7, v0, Lzq;->h:Z

    goto :goto_1

    :cond_3
    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_2
    if-ltz v0, :cond_0

    iget-object v0, p0, Lbkn;->v:Laku;

    invoke-virtual {v0}, Laku;->getDataList()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lbkn;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llb;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eqz v2, :cond_0

    invoke-static {}, Ljo;->a()Ljo;

    move-result-object v0

    iget-object v0, v0, Ljo;->a:Landroid/content/SharedPreferences;

    const-string v1, "isshowreport"

    invoke-interface {v0, v1, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Lbkn;->b:I

    invoke-direct {p0, v2, v0}, Lbkn;->a(Llb;I)V

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_2

    :cond_4
    iget v3, p0, Lbkn;->b:I

    iget-object v0, p0, Lbkn;->u:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000b

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v5, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lbkn;->u:Landroid/content/Context;

    invoke-direct {v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lbkn;->u:Landroid/content/Context;

    const v4, 0x7f0b0483

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setView(Landroid/view/View;)V

    const v0, 0x7f080029

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v4, 0x7f080013

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v4, v7}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    const v6, 0x7f0b0484

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v0, Lblc;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lblc;-><init>(Lbkn;Llb;ILcom/tencent/qqpimsecure/uilib/view/CheckBoxView;Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v5, v10, v0, v7}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v0, Lbld;

    invoke-direct {v0, v5}, Lbld;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v5, v9, v0, v8}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto/16 :goto_1

    :pswitch_1
    if-eqz v2, :cond_0

    iget-object v0, v2, Llb;->c:Lmk;

    iget v1, p0, Lbkn;->b:I

    invoke-direct {p0, v0, v1}, Lbkn;->a(Lmk;I)V

    goto/16 :goto_1

    :pswitch_2
    if-eqz v2, :cond_0

    iget-object v6, v2, Llb;->c:Lmk;

    iget v3, p0, Lbkn;->b:I

    iget-boolean v4, v2, Llb;->a:Z

    new-instance v5, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;

    iget-object v0, p0, Lbkn;->u:Landroid/content/Context;

    invoke-direct {v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lbkn;->u:Landroid/content/Context;

    const v1, 0x7f0b0481

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbkn;->u:Landroid/content/Context;

    const v1, 0x7f0b0482

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v0, Lble;

    move-object v1, p0

    move-object v2, v6

    invoke-direct/range {v0 .. v5}, Lble;-><init>(Lbkn;Lmk;IZLcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v5, v10, v0, v8}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setPositiveButton(ILandroid/view/View$OnClickListener;I)V

    new-instance v0, Lblf;

    invoke-direct {v0, v5}, Lblf;-><init>(Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;)V

    invoke-virtual {v5, v9, v0, v8}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->setNegativeButton(ILandroid/view/View$OnClickListener;I)V

    invoke-virtual {v5}, Lcom/tencent/qqpimsecure/uilib/view/dialog/Dialog;->show()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final onCreate()V
    .locals 4

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbkn;->c:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbkn;->d:Ljava/util/ArrayList;

    new-instance v0, Laku;

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2}, Laku;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lbkn;->v:Laku;

    iget-object v0, p0, Lbkn;->v:Laku;

    iget-object v1, p0, Lbkn;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Laku;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lbkn;->v:Laku;

    iget-object v1, p0, Lbkn;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Laku;->b(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lbkn;->v:Laku;

    invoke-virtual {v0, p0}, Laku;->a(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080270

    invoke-virtual {p0, v0}, Lbkn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbkn;->s:Landroid/widget/TextView;

    const v0, 0x7f08026f

    invoke-virtual {p0, v0}, Lbkn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbkn;->r:Landroid/widget/TextView;

    iget-object v0, p0, Lbkn;->u:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0473

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lbkn;->a:I

    invoke-direct {p0, v0, v1}, Lbkn;->a(Ljava/lang/String;I)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkn;->r:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f08026e

    invoke-virtual {p0, v0}, Lbkn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbkn;->t:Landroid/widget/LinearLayout;

    const v0, 0x7f080265

    invoke-virtual {p0, v0}, Lbkn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lbkn;->j:Landroid/widget/FrameLayout;

    const v0, 0x7f080269

    invoke-virtual {p0, v0}, Lbkn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lbkn;->e:Landroid/widget/FrameLayout;

    const v0, 0x7f08026a

    invoke-virtual {p0, v0}, Lbkn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    iput-object v0, p0, Lbkn;->f:Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    const v0, 0x7f080271

    invoke-virtual {p0, v0}, Lbkn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lbkn;->k:Landroid/widget/ListView;

    iget-object v0, p0, Lbkn;->k:Landroid/widget/ListView;

    iget-object v1, p0, Lbkn;->v:Laku;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lbkn;->k:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f08026b

    invoke-virtual {p0, v0}, Lbkn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbkn;->m:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lbkn;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f08026c

    invoke-virtual {p0, v0}, Lbkn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbkn;->l:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lbkn;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f080223

    invoke-virtual {p0, v0}, Lbkn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lbkn;->n:Landroid/widget/LinearLayout;

    const v0, 0x7f080266

    invoke-virtual {p0, v0}, Lbkn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbkn;->o:Landroid/widget/ImageView;

    const v0, 0x7f080267

    invoke-virtual {p0, v0}, Lbkn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbkn;->p:Landroid/widget/TextView;

    const v0, 0x7f080268

    invoke-virtual {p0, v0}, Lbkn;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbkn;->q:Landroid/widget/TextView;

    const-class v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    const-class v1, Lki;

    invoke-virtual {v0, v1}, Lcom/tencent/tmsecure/module/tools/SingletonManager;->getSingleton(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;

    move-result-object v0

    check-cast v0, Lki;

    iput-object v0, p0, Lbkn;->w:Lki;

    new-instance v0, Ljr;

    invoke-direct {v0}, Ljr;-><init>()V

    iput-object v0, p0, Lbkn;->x:Ljr;

    new-instance v0, Lzs;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    invoke-direct {v0}, Lzs;-><init>()V

    iput-object v0, p0, Lbkn;->y:Lzs;

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    iget-object v0, p0, Lbkn;->I:Landroid/os/Handler;

    invoke-static {v0}, Lzq;->a(Landroid/os/Handler;)Lzq;

    move-result-object v0

    iput-object v0, p0, Lbkn;->z:Lzq;

    iget-object v0, p0, Lbkn;->I:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lbkn;->I:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-virtual {p0}, Lbkn;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "IS_FROM_NOTIFICATION"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x65cc

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    :cond_0
    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onDestroy()V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lbkn;->A:Z

    iget-object v0, p0, Lbkn;->z:Lzq;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lbkn;->z:Lzq;

    iget-boolean v0, v0, Lzq;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbkn;->z:Lzq;

    iput-boolean v1, v0, Lzq;->h:Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lbkn;->z:Lzq;

    :cond_1
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onDestroy()V

    return-void
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput p3, p0, Lbkn;->b:I

    iget-object v0, p0, Lbkn;->v:Laku;

    invoke-virtual {v0}, Laku;->getDataList()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lbkn;->b:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llb;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, v0, Llb;->a:Z

    iget-object v2, v0, Llb;->c:Lmk;

    if-eqz v1, :cond_1

    iget v1, v2, Lmk;->a:I

    if-eqz v1, :cond_2

    :cond_1
    iget v1, v2, Lmk;->read:I

    if-nez v1, :cond_3

    :cond_2
    iput v4, v2, Lmk;->read:I

    iget-object v1, p0, Lbkn;->v:Laku;

    invoke-virtual {v1}, Laku;->notifyDataSetChanged()V

    const-class v1, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    invoke-static {v1}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/tools/SingletonManager;

    const-class v5, Lki;

    invoke-virtual {v1, v5}, Lcom/tencent/tmsecure/module/tools/SingletonManager;->getSingleton(Ljava/lang/Class;)Lcom/tencent/tmsecure/module/tools/ISingleton;

    move-result-object v1

    check-cast v1, Lki;

    iget-wide v5, v2, Lmk;->date:J

    invoke-virtual {v1, v5, v6}, Lki;->a(J)Z

    :cond_3
    iget-object v1, p0, Lbkn;->v:Laku;

    invoke-virtual {v1}, Laku;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llb;

    iget-boolean v5, v1, Llb;->b:Z

    move v2, v3

    :goto_1
    iget-object v1, p0, Lbkn;->v:Laku;

    invoke-virtual {v1}, Laku;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    iget-object v1, p0, Lbkn;->v:Laku;

    invoke-virtual {v1}, Laku;->getDataList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llb;

    iput-boolean v3, v1, Llb;->b:Z

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    :cond_4
    if-nez v5, :cond_5

    move v3, v4

    :cond_5
    iput-boolean v3, v0, Llb;->b:Z

    iget-object v0, p0, Lbkn;->v:Laku;

    invoke-virtual {v0}, Laku;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public final onOptionClick(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lbkn;->u:Landroid/content/Context;

    const-class v2, Lcom/tencent/qqpimsecure/ui/activity/smscheck/SmsChargeSettingActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lbkn;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lbkn;->I:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lbkn;->I:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2e
        :pswitch_0
    .end packed-switch
.end method

.method public final onPause()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onPause()V

    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v3, 0x0

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    const/16 v0, 0x2e

    invoke-static {}, Lcom/tencent/qqpimsecure/service/QQPimApplication;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b019f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020205

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    const/4 v0, 0x1

    return v0
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onStart()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lbkn;->A:Z

    const v0, 0x7f0b0298

    invoke-static {p0, v0}, La;->a(Lcom/tencent/qqpimsecure/uilib/view/BaseView;I)V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b008c

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    return-void
.end method

.class public final Lbgt;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;


# instance fields
.field a:Landroid/widget/TextView;

.field b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/ImageView;

.field private l:Landroid/widget/ImageView;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:Ljava/lang/String;

.field private r:I

.field private s:Lyj;

.field private t:Ljava/lang/String;

.field private u:Landroid/content/Intent;

.field private v:Lho;

.field private w:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;

.field private x:I

.field private y:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f03013c

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lbgt;->o:Ljava/util/LinkedList;

    new-instance v0, Lbgu;

    invoke-direct {v0, p0}, Lbgu;-><init>(Lbgt;)V

    iput-object v0, p0, Lbgt;->w:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;

    const/4 v0, -0x1

    iput v0, p0, Lbgt;->x:I

    new-instance v0, Lbgv;

    invoke-direct {v0, p0}, Lbgv;-><init>(Lbgt;)V

    iput-object v0, p0, Lbgt;->y:Ljava/lang/Runnable;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lbgt;->v:Lho;

    iget-object v0, p0, Lbgt;->v:Lho;

    invoke-virtual {v0}, Lho;->cd()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbgt;->t:Ljava/lang/String;

    new-instance v0, Lyj;

    invoke-direct {v0, p1}, Lyj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbgt;->s:Lyj;

    return-void
.end method

.method static synthetic a(Lbgt;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lbgt;->y:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic a(Lbgt;Ljava/util/LinkedList;)Ljava/util/LinkedList;
    .locals 0

    iput-object p1, p0, Lbgt;->o:Ljava/util/LinkedList;

    return-object p1
.end method

.method private a()V
    .locals 7

    const/4 v6, 0x2

    const/4 v1, 0x0

    iget-object v0, p0, Lbgt;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->d()Ljava/util/LinkedList;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-lez v4, :cond_1

    new-array v5, v4, [I

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v5, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lho;->a()Lho;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    array-length v0, v5

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_1
    invoke-static {v0}, Lk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lho;->y(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lbgt;->v:Lho;

    invoke-virtual {v0}, Lho;->ck()V

    iget v0, p0, Lbgt;->r:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    iget v0, p0, Lbgt;->r:I

    if-ne v0, v6, :cond_9

    :cond_2
    iget-object v0, p0, Lbgt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lbgt;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0afc

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_2
    iget v0, p0, Lbgt;->p:I

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lbgt;->q:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lbgt;->q:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lbgt;->q:Ljava/lang/String;

    sput-object v0, Lsv;->c:Ljava/lang/String;

    :cond_4
    iget v0, p0, Lbgt;->r:I

    sget v2, Lme;->a:I

    if-eq v0, v2, :cond_5

    iget v0, p0, Lbgt;->r:I

    sget v2, Lme;->b:I

    if-ne v0, v2, :cond_a

    :cond_5
    iget-object v0, p0, Lbgt;->v:Lho;

    invoke-virtual {v0}, Lho;->ce()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lbgt;->v:Lho;

    invoke-virtual {v0}, Lho;->ci()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    if-nez v1, :cond_a

    iget-object v0, p0, Lbgt;->v:Lho;

    invoke-virtual {v0}, Lho;->cf()V

    invoke-virtual {p0}, Lbgt;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    iget-object v0, p0, Lbgt;->mContext:Landroid/content/Context;

    iget v1, p0, Lbgt;->p:I

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/privacy/PrivacySafeSettingActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-static {v2, v1, v3, v4}, La;->a(Landroid/content/Intent;IILjava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :goto_3
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lbgw;

    invoke-direct {v1, p0}, Lbgw;-><init>(Lbgt;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_7
    move v0, v1

    :goto_4
    array-length v4, v5

    if-ge v0, v4, :cond_8

    aget v4, v5, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_9
    iget v0, p0, Lbgt;->r:I

    sget v2, Lme;->a:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lbgt;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lbgt;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0afd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lha;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    invoke-virtual {p0}, Lbgt;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->finish()V

    iget-object v0, p0, Lbgt;->s:Lyj;

    iget-object v0, p0, Lbgt;->mContext:Landroid/content/Context;

    iget v1, p0, Lbgt;->p:I

    invoke-static {v0, v1}, Lyj;->a(Landroid/content/Context;I)V

    goto :goto_3
.end method

.method private a(I)V
    .locals 6

    const v4, 0x7f090006

    const v5, 0x7f0200b9

    const v1, 0x7f0200be

    const v2, 0x7f0200bd

    iput p1, p0, Lbgt;->m:I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lbgt;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->c()V

    iget-object v0, p0, Lbgt;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lbgt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbgt;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lbgt;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbgt;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lbgt;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lbgt;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lbgt;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lbgt;->g:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lbgt;->h:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lbgt;->i:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lbgt;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lbgt;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lbgt;->l:Landroid/widget/ImageView;

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lbgt;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->c()V

    iget-object v0, p0, Lbgt;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lbgt;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lbgt;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lbgt;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0ac7

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lbgt;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lbgt;->o:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbgt;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbgt;->o:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->toString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lbgt;->d:Landroid/widget/ImageView;

    const-string v0, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lbgt;->e:Landroid/widget/ImageView;

    const-string v0, "1"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lbgt;->f:Landroid/widget/ImageView;

    const-string v0, "2"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lbgt;->g:Landroid/widget/ImageView;

    const-string v0, "3"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lbgt;->h:Landroid/widget/ImageView;

    const-string v0, "4"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_6
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lbgt;->i:Landroid/widget/ImageView;

    const-string v0, "5"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_7
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lbgt;->j:Landroid/widget/ImageView;

    const-string v0, "6"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_8
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lbgt;->k:Landroid/widget/ImageView;

    const-string v0, "7"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_9
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lbgt;->l:Landroid/widget/ImageView;

    const-string v4, "8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_3

    :cond_4
    move v0, v2

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_5

    :cond_6
    move v0, v2

    goto :goto_6

    :cond_7
    move v0, v2

    goto :goto_7

    :cond_8
    move v0, v2

    goto :goto_8

    :cond_9
    move v0, v2

    goto :goto_9

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic a(Lbgt;I)V
    .locals 4

    iget-object v0, p0, Lbgt;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    iget-object v1, p0, Lbgt;->y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput p1, p0, Lbgt;->x:I

    iget-object v0, p0, Lbgt;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    iget-object v1, p0, Lbgt;->y:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic b(Lbgt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbgt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lbgt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbgt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lbgt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbgt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lbgt;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lbgt;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lbgt;)I
    .locals 1

    iget v0, p0, Lbgt;->m:I

    return v0
.end method

.method static synthetic g(Lbgt;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lbgt;->o:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic h(Lbgt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbgt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic i(Lbgt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbgt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic j(Lbgt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbgt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic k(Lbgt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbgt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic l(Lbgt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbgt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic m(Lbgt;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbgt;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic n(Lbgt;)V
    .locals 0

    invoke-direct {p0}, Lbgt;->a()V

    return-void
.end method

.method static synthetic o(Lbgt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbgt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic p(Lbgt;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lbgt;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic q(Lbgt;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbgt;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic r(Lbgt;)I
    .locals 1

    iget v0, p0, Lbgt;->r:I

    return v0
.end method

.method static synthetic s(Lbgt;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbgt;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic t(Lbgt;)Lho;
    .locals 1

    iget-object v0, p0, Lbgt;->v:Lho;

    return-object v0
.end method


# virtual methods
.method public final onBackClick()V
    .locals 2

    iget v0, p0, Lbgt;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbgt;->s:Lyj;

    invoke-virtual {v0}, Lyj;->a()V

    :cond_0
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    return-void
.end method

.method public final onCreate()V
    .locals 3

    const/4 v2, -0x1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    invoke-virtual {p0}, Lbgt;->getActivity()Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/activity/BaseUIActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lbgt;->u:Landroid/content/Intent;

    iget-object v0, p0, Lbgt;->u:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbgt;->u:Landroid/content/Intent;

    const-string v1, "action"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbgt;->r:I

    iget-object v0, p0, Lbgt;->u:Landroid/content/Intent;

    const-string v1, "type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lbgt;->p:I

    iget v0, p0, Lbgt;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lbgt;->u:Landroid/content/Intent;

    const-string v1, "PkgName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbgt;->q:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lbgt;->v:Lho;

    invoke-virtual {v0}, Lho;->cd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbgt;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0ac5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbgt;->n:Ljava/lang/String;

    :goto_0
    const v0, 0x7f080005

    invoke-virtual {p0, v0}, Lbgt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    iput-object v0, p0, Lbgt;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    iget-object v0, p0, Lbgt;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    iget-object v1, p0, Lbgt;->w:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->setOnPatternListener(Lcom/tencent/qqpimsecure/view/privacy/LockPatternView$c;)V

    iget-object v0, p0, Lbgt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03009a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lbgt;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    invoke-virtual {v1, v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->setHeaderView(Landroid/view/View;)V

    const v0, 0x7f0800b9

    invoke-virtual {p0, v0}, Lbgt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbgt;->c:Landroid/widget/ImageView;

    const v0, 0x7f0801d4

    invoke-virtual {p0, v0}, Lbgt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbgt;->d:Landroid/widget/ImageView;

    const v0, 0x7f0801d5

    invoke-virtual {p0, v0}, Lbgt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbgt;->e:Landroid/widget/ImageView;

    const v0, 0x7f0801d6

    invoke-virtual {p0, v0}, Lbgt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbgt;->f:Landroid/widget/ImageView;

    const v0, 0x7f0801d7

    invoke-virtual {p0, v0}, Lbgt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbgt;->g:Landroid/widget/ImageView;

    const v0, 0x7f0801d8

    invoke-virtual {p0, v0}, Lbgt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbgt;->h:Landroid/widget/ImageView;

    const v0, 0x7f0801d9

    invoke-virtual {p0, v0}, Lbgt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbgt;->i:Landroid/widget/ImageView;

    const v0, 0x7f0801da

    invoke-virtual {p0, v0}, Lbgt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbgt;->j:Landroid/widget/ImageView;

    const v0, 0x7f0801db

    invoke-virtual {p0, v0}, Lbgt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbgt;->k:Landroid/widget/ImageView;

    const v0, 0x7f0801dc

    invoke-virtual {p0, v0}, Lbgt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lbgt;->l:Landroid/widget/ImageView;

    const v0, 0x7f0800ba

    invoke-virtual {p0, v0}, Lbgt;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lbgt;->a:Landroid/widget/TextView;

    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lbgt;->a(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lbgt;->mContext:Landroid/content/Context;

    const v1, 0x7f0b0ac6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbgt;->n:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public final onHandlerMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Lbgt;->x:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lbgt;->x:I

    invoke-direct {p0, v0}, Lbgt;->a(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lbgt;->a()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    iget-object v0, p0, Lbgt;->b:Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/view/privacy/LockPatternView;->a()V

    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 2

    const v0, 0x7f0b0195

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    iget-object v0, p0, Lbgt;->mContext:Landroid/content/Context;

    const v1, 0x7f090014

    invoke-virtual {p1, v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackGroundColor(Landroid/content/Context;I)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonStyle(B)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleBarLayoutPadding()V

    return-void
.end method

.class public final Lcom/tencent/qqpimsecure/view/MainPageView;
.super Lcom/tencent/qqpimsecure/uilib/view/BaseView;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qqpimsecure/view/MainPageView$OperatingActivitiesReceiver;
    }
.end annotation


# instance fields
.field private a:Luo;

.field private b:Lun;

.field private c:Laaj;

.field private d:Lwq;

.field private e:Lcom/tencent/qqpimsecure/view/MainPageView$OperatingActivitiesReceiver;

.field private f:Lho;

.field private g:Lcom/tencent/qqpimsecure/uilib/view/MainLinearLayout;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Ljc;

.field private k:I

.field private l:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

.field private m:Landroid/widget/ListView;

.field private n:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

.field private o:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lwq$a;",
            ">;"
        }
    .end annotation
.end field

.field private q:Landroid/os/Handler;

.field private r:Landroid/view/View$OnClickListener;

.field private s:Ldv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldv",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f030082

    invoke-direct {p0, p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->p:Ljava/util/List;

    new-instance v0, Lanv;

    invoke-direct {v0, p0}, Lanv;-><init>(Lcom/tencent/qqpimsecure/view/MainPageView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->q:Landroid/os/Handler;

    new-instance v0, Lanx;

    invoke-direct {v0, p0}, Lanx;-><init>(Lcom/tencent/qqpimsecure/view/MainPageView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->r:Landroid/view/View$OnClickListener;

    new-instance v0, Lany;

    invoke-direct {v0, p0}, Lany;-><init>(Lcom/tencent/qqpimsecure/view/MainPageView;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->s:Ldv;

    return-void
.end method

.method public static synthetic a(Lcom/tencent/qqpimsecure/view/MainPageView;)V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->f:Lho;

    invoke-virtual {v0}, Lho;->bv()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lanw;

    invoke-direct {v1, p0}, Lanw;-><init>(Lcom/tencent/qqpimsecure/view/MainPageView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/tencent/qqpimsecure/view/MainPageView;)Lho;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->f:Lho;

    return-object v0
.end method

.method private b()V
    .locals 10

    const/4 v2, 0x2

    const v9, 0x7f09000c

    const/4 v0, 0x3

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v5, ""

    const-string v4, ""

    iget-object v3, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f090001

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {}, Lqc;->a()I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    const-string v0, ""

    iget-object v4, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0238

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v0

    move v0, v1

    :goto_0
    iget-object v7, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->h:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->h:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->i:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->g:Lcom/tencent/qqpimsecure/uilib/view/MainLinearLayout;

    if-eqz v3, :cond_0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->j:Ljc;

    iget-object v0, v0, Ljc;->b:Landroid/content/SharedPreferences;

    const-string v3, "last_score_of_check_new"

    invoke-interface {v0, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lqc;->a(I)I

    move-result v0

    if-eq v0, v2, :cond_9

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->o:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b023a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    :goto_2
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/view/MainPageView;->c()V

    return-void

    :cond_1
    if-nez v7, :cond_5

    iget v5, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->k:I

    const/16 v7, 0x3c

    if-ge v5, v7, :cond_2

    iget-object v3, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    const v4, 0x7f0b023e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->k:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->k:I

    const/16 v7, 0x3c

    if-lt v5, v7, :cond_4

    iget v5, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->k:I

    const/16 v7, 0x55

    if-ge v5, v7, :cond_4

    iget-object v4, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->j:Ljc;

    iget-object v4, v4, Ljc;->b:Landroid/content/SharedPreferences;

    const-string v5, "last_danger_of_check_new"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_c

    move v4, v1

    :goto_4
    if-eqz v4, :cond_3

    iget-object v3, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iget-object v4, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    const v5, 0x7f0b023d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    const v4, 0x7f0b023c

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move v0, v1

    goto :goto_3

    :cond_4
    iget v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->k:I

    const/16 v5, 0x55

    if-lt v0, v5, :cond_b

    iget v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->k:I

    const/16 v5, 0x64

    if-gt v0, v5, :cond_b

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    const v4, 0x7f0b023b

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    move v0, v2

    goto :goto_3

    :cond_5
    if-lez v7, :cond_6

    const/4 v8, 0x7

    if-gt v7, v8, :cond_6

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0230

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    move v0, v1

    goto/16 :goto_0

    :cond_6
    const/4 v8, 0x7

    if-le v7, v8, :cond_a

    iget-object v3, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0231

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    iget-object v3, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->g:Lcom/tencent/qqpimsecure/uilib/view/MainLinearLayout;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202d0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/MainLinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->g:Lcom/tencent/qqpimsecure/uilib/view/MainLinearLayout;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202d1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/MainLinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->g:Lcom/tencent/qqpimsecure/uilib/view/MainLinearLayout;

    iget-object v3, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0202cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/MainLinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_7
    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->o:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0239

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->o:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b05b3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->o:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b05b3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    move v0, v1

    goto/16 :goto_0

    :cond_b
    move v0, v1

    goto/16 :goto_3

    :cond_c
    move v4, v6

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static synthetic c(Lcom/tencent/qqpimsecure/view/MainPageView;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->o:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    return-object v0
.end method

.method private c()V
    .locals 8

    const/4 v7, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v0, 0x3

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lsi;->a(Landroid/content/Context;)Lsi;

    move-result-object v4

    const-string v5, "Android_Main"

    invoke-virtual {v4, v5}, Lsi;->a(Ljava/lang/String;)Llu;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {}, Lqc;->a()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    move v0, v1

    :cond_0
    :goto_0
    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->g:Lcom/tencent/qqpimsecure/uilib/view/MainLinearLayout;

    iget-object v1, v4, Llu;->f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/MainLinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void

    :cond_3
    if-nez v5, :cond_6

    iget v5, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->k:I

    const/16 v6, 0x3c

    if-lt v5, v6, :cond_0

    iget v5, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->k:I

    const/16 v6, 0x3c

    if-lt v5, v6, :cond_5

    iget v5, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->k:I

    const/16 v6, 0x55

    if-ge v5, v6, :cond_5

    iget-object v5, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->j:Ljc;

    iget-object v5, v5, Ljc;->b:Landroid/content/SharedPreferences;

    const-string v6, "last_danger_of_check_new"

    invoke-interface {v5, v6, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_4

    move v3, v1

    :cond_4
    if-nez v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->k:I

    const/16 v3, 0x55

    if-lt v0, v3, :cond_8

    iget v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->k:I

    const/16 v3, 0x64

    if-gt v0, v3, :cond_8

    move v0, v2

    goto :goto_0

    :cond_6
    if-lez v5, :cond_7

    if-gt v5, v7, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    if-gt v5, v7, :cond_0

    :cond_8
    move v0, v1

    goto :goto_0
.end method

.method public static synthetic d(Lcom/tencent/qqpimsecure/view/MainPageView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private d()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/TabModel;",
            ">;"
        }
    .end annotation

    const v11, 0x7f02034f

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->f:Lho;

    invoke-virtual {v0}, Lho;->dK()Z

    move-result v0

    if-eqz v0, :cond_3

    move v2, v6

    :goto_0
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/4 v1, 0x4

    iget-object v3, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f020057

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v5, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    const v9, 0x7f0b0b9f

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020308

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0073

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v1, v7

    move v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0430

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v1, v6

    move v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lqx;->a()Lqx;

    move-result-object v0

    invoke-virtual {v0}, Lqx;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->f:Lho;

    invoke-virtual {v1}, Lho;->aR()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0523

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v1, v10

    move v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->d:Lwq;

    invoke-virtual {v0}, Lwq;->b()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->p:Ljava/util/List;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->d:Lwq;

    invoke-virtual {v2}, Lwq;->e()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v6

    :goto_2
    iget-object v3, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f020003

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v5, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0074

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v8

    :cond_1
    new-instance v0, Lcom/tencent/qqpimsecure/uilib/model/TabModel;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0523

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move v1, v10

    move v2, v7

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qqpimsecure/uilib/model/TabModel;-><init>(IILandroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move v2, v7

    goto :goto_2

    :cond_3
    move v2, v7

    goto/16 :goto_0
.end method

.method public static synthetic e(Lcom/tencent/qqpimsecure/view/MainPageView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic f(Lcom/tencent/qqpimsecure/view/MainPageView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic g(Lcom/tencent/qqpimsecure/view/MainPageView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static synthetic h(Lcom/tencent/qqpimsecure/view/MainPageView;)Lwq;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->d:Lwq;

    return-object v0
.end method

.method public static synthetic i(Lcom/tencent/qqpimsecure/view/MainPageView;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/tencent/qqpimsecure/view/MainPageView;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/view/MainPageView;->d()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "com.tencent.action.quick_optimize"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->o:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->performClick()Z

    :cond_0
    return-void
.end method

.method public final onBackClick()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->a:Luo;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->a:Luo;

    invoke-virtual {v2}, Luo;->e()Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->a:Luo;

    invoke-virtual {v2}, Luo;->e()Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->a:Luo;

    invoke-virtual {v2}, Luo;->e()Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/tencent/qqpimsecure/uilib/view/desktop/MainDesktopPanel;->setOpen(ZZ)V

    :goto_0
    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onBackClick()V

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method protected final onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onConfigModelCreate(Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;)V

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/tencent/qqpimsecure/uilib/model/UIConfigModel;->mRegisterSDCardStateChangeReceiver:Z

    return-void
.end method

.method public final onCreate()V
    .locals 8

    const/high16 v7, 0x7f0b

    const v6, 0x7f020127

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreate()V

    new-instance v0, Lum;

    invoke-direct {v0}, Lum;-><init>()V

    const v0, 0x7f080173

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/view/MainPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->h:Landroid/widget/TextView;

    const v0, 0x7f080174

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/view/MainPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->i:Landroid/widget/TextView;

    const v0, 0x7f080172

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/view/MainPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/MainLinearLayout;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->g:Lcom/tencent/qqpimsecure/uilib/view/MainLinearLayout;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->g:Lcom/tencent/qqpimsecure/uilib/view/MainLinearLayout;

    invoke-virtual {v0, p0}, Lcom/tencent/qqpimsecure/uilib/view/MainLinearLayout;->setMainPageView(Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V

    invoke-static {}, Lgw;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->g:Lcom/tencent/qqpimsecure/uilib/view/MainLinearLayout;

    invoke-static {}, Lgw;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/MainLinearLayout;->setMinimumHeight(I)V

    :cond_0
    invoke-static {}, Lf;->f()Ljc;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->j:Ljc;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->j:Ljc;

    iget-object v0, v0, Ljc;->b:Landroid/content/SharedPreferences;

    const-string v1, "last_score_of_check_new"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->k:I

    const v0, 0x7f080175

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/view/MainPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->o:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v0, 0x7f0800d2

    invoke-virtual {p0, v0}, Lcom/tencent/qqpimsecure/view/MainPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->m:Landroid/widget/ListView;

    new-instance v0, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    const/16 v2, 0x8

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->n:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->n:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->m:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    new-instance v0, Laaj;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Laaj;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->c:Laaj;

    invoke-static {}, Lwq;->a()Lwq;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->d:Lwq;

    new-instance v0, Luo;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->n:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->c:Laaj;

    invoke-direct {v0, p0, v1, v2}, Luo;-><init>(Lcom/tencent/qqpimsecure/uilib/view/BaseView;Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;Laaj;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->a:Luo;

    new-instance v0, Lun;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->a:Luo;

    invoke-direct {v0, v1}, Lun;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->b:Lun;

    invoke-static {}, Lho;->a()Lho;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->f:Lho;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->b:Lun;

    invoke-static {}, Ldi;->b()Lnp;

    move-result-object v1

    invoke-virtual {v1}, Lnp;->j()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lun;->b:Lho;

    invoke-virtual {v1}, Lho;->ay()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v0, Lun;->a:Landroid/content/Context;

    const-class v3, Lcom/tencent/qqpimsecure/ui/activity/SplashActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.UNINSTALL_SHORTCUT"

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.shortcut.NAME"

    iget-object v4, v0, Lun;->a:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "duplicate"

    invoke-virtual {v3, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.ICON_RESOURCE"

    iget-object v4, v0, Lun;->a:Landroid/content/Context;

    invoke-static {v4, v6}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v2, v0, Lun;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.shortcut.NAME"

    iget-object v4, v0, Lun;->a:Landroid/content/Context;

    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "duplicate"

    invoke-virtual {v3, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    iget-object v2, v0, Lun;->a:Landroid/content/Context;

    invoke-static {v2, v6}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, v0, Lun;->a:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, v0, Lun;->b:Lho;

    invoke-virtual {v0}, Lho;->az()V

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->o:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->r:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->a:Luo;

    invoke-virtual {v0, p0}, Luo;->a(Lcom/tencent/qqpimsecure/uilib/view/BaseView;)V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/view/MainPageView;->b()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lqr;->a(Landroid/content/Context;)Lqr;

    move-result-object v0

    invoke-virtual {v0}, Lqr;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->l:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    :goto_0
    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x65b9

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    new-instance v0, Labh;

    invoke-direct {v0}, Labh;-><init>()V

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;)Lcom/tencent/tmsecure/common/BaseService;

    new-instance v0, Laah;

    invoke-direct {v0}, Laah;-><init>()V

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;)Lcom/tencent/tmsecure/common/BaseService;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lwq;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/qqpimsecure/view/MainPageView$OperatingActivitiesReceiver;

    invoke-direct {v1, p0}, Lcom/tencent/qqpimsecure/view/MainPageView$OperatingActivitiesReceiver;-><init>(Lcom/tencent/qqpimsecure/view/MainPageView;)V

    iput-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->e:Lcom/tencent/qqpimsecure/view/MainPageView$OperatingActivitiesReceiver;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->e:Lcom/tencent/qqpimsecure/view/MainPageView$OperatingActivitiesReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->l:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    goto :goto_0
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onDestroy()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onDestroy()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->e:Lcom/tencent/qqpimsecure/view/MainPageView$OperatingActivitiesReceiver;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->e:Lcom/tencent/qqpimsecure/view/MainPageView$OperatingActivitiesReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->e:Lcom/tencent/qqpimsecure/view/MainPageView$OperatingActivitiesReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    sput-boolean v0, Lqc;->g:Z

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lsi;->a(Landroid/content/Context;)Lsi;

    move-result-object v0

    iget-object v1, v0, Lsi;->c:Lsl;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lsi;->c:Lsl;

    invoke-virtual {v1}, Lsl;->e()V

    iput-object v3, v0, Lsi;->c:Lsl;

    :cond_1
    sput-object v3, Lsi;->a:Lsi;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->a:Luo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->a:Luo;

    invoke-virtual {v0}, Luo;->d()V

    iput-object v3, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->a:Luo;

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->b:Lun;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->b:Lun;

    iput-object v3, v0, Lun;->a:Landroid/content/Context;

    iput-object v3, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->b:Lun;

    :cond_3
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->g:Lcom/tencent/qqpimsecure/uilib/view/MainLinearLayout;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/MainLinearLayout;->release()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->n:Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/TabAdapter;->release()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->m:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->o:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    invoke-virtual {v0, v3}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lyw;

    invoke-direct {v0}, Lyw;-><init>()V

    invoke-static {v0}, Lcom/tencent/tmsecure/common/TMSService;->startService(Lcom/tencent/tmsecure/common/BaseService;)Lcom/tencent/tmsecure/common/BaseService;

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "action_report"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lrj;->a()Lrj;

    move-result-object v0

    invoke-virtual {v0}, Lrj;->b()V

    iput-object v3, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->c:Laaj;

    iput-object v3, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->d:Lwq;

    invoke-static {}, Ljava/lang/System;->gc()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->a:Luo;

    invoke-virtual {v0, p3}, Luo;->a(I)V

    return-void
.end method

.method public final onOptionClick(I)V
    .locals 7

    const/4 v0, 0x0

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->f:Lho;

    invoke-virtual {v0}, Lho;->dJ()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->a:Luo;

    const/16 v2, 0x4f

    invoke-virtual {v0, v2}, Luo;->b(I)Z

    const/16 v0, 0x6757

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x668a

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->a:Luo;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Luo;->b(I)Z

    goto :goto_0

    :pswitch_2
    const/16 v2, 0x668b

    invoke-virtual {v1, v2}, Lnd;->a(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->a:Luo;

    invoke-virtual {v1, v0}, Luo;->b(I)Z

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x668c

    invoke-virtual {v1, v0}, Lnd;->a(I)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->a:Luo;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Luo;->b(I)Z

    goto :goto_0

    :pswitch_4
    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->d:Lwq;

    invoke-virtual {v2}, Lwq;->f()V

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->p:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->p:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/16 v2, 0x6693

    invoke-virtual {v1, v2}, Lnd;->a(I)V

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->d:Lwq;

    iget-object v2, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->p:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwq$a;

    invoke-virtual {v1, v0}, Lwq;->b(Lwq$a;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v1}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v1}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->p:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lwq$a;

    new-instance v4, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;

    invoke-direct {v4}, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;-><init>()V

    iget-object v5, v0, Lwq$a;->a:Ljava/lang/String;

    if-eqz v5, :cond_2

    const-string v5, ""

    iget-object v6, v0, Lwq$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v0, v0, Lwq$a;->a:Ljava/lang/String;

    iput-object v0, v4, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    :goto_2
    iput v1, v4, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->eventCode:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0409

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/tencent/qqpimsecure/uilib/model/ContextMenuModel;->name:Ljava/lang/String;

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setDataAdapter(Ljava/util/ArrayList;)V

    new-instance v0, Lanz;

    invoke-direct {v0, p0, v2}, Lanz;-><init>(Lcom/tencent/qqpimsecure/view/MainPageView;Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;)V

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f02010b

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setIcon(I)V

    const v0, 0x7f0b0075

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->setTitle(I)V

    invoke-virtual {v2}, Lcom/tencent/qqpimsecure/uilib/view/dialog/ContextMenuDialog;->show()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method public final onOptionsItemSelected(Lcom/tencent/qqpimsecure/uilib/view/TabMenuView$MenuModel;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/MainPageView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/MainPageView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setPopOptionMenuCallback(Ldv;)V

    :cond_0
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onPause()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->a:Luo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->a:Luo;

    invoke-virtual {v0}, Luo;->c()V

    :cond_1
    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/MainPageView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->popOptionMenu(Landroid/content/Context;)V

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public final onResume()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lvh;->a()Lvh;

    move-result-object v0

    invoke-virtual {v0}, Lvh;->d()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->j:Ljc;

    iget-object v0, v0, Ljc;->b:Landroid/content/SharedPreferences;

    const-string v1, "last_score_of_check_new"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->k:I

    invoke-virtual {p0}, Lcom/tencent/qqpimsecure/view/MainPageView;->getFrameworkTemplateUI()Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->s:Ldv;

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setPopOptionMenuCallback(Ldv;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->q:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/view/MainPageView;->b()V

    invoke-direct {p0}, Lcom/tencent/qqpimsecure/view/MainPageView;->c()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->a:Luo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->a:Luo;

    invoke-virtual {v0}, Luo;->b()V

    :cond_0
    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onResume()V

    return-void
.end method

.method public final onShowPopOptionMenu()V
    .locals 2

    invoke-super {p0}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->onShowPopOptionMenu()V

    invoke-static {}, Lnd;->a()Lnd;

    move-result-object v0

    const/16 v1, 0x6689

    invoke-virtual {v0, v1}, Lnd;->a(I)V

    return-void
.end method

.method public final resetContext(Landroid/content/Context;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/tencent/qqpimsecure/uilib/view/BaseView;->resetContext(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->b:Lun;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->b:Lun;

    iput-object p1, v0, Lun;->a:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->a:Luo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->a:Luo;

    invoke-virtual {v0, p1}, Luo;->a(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method protected final subviewTemplateUIConfig(Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;)V
    .locals 1

    const v0, 0x7f0b0001

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTitleTextData(I)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setBackButtonStyle(B)V

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarStyle(B)V

    invoke-virtual {p1}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setInfoBarWithoutShadow()V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->l:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->l:Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/CloudInfoTips;->view()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setTipsView(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lcom/tencent/qqpimsecure/view/MainPageView;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionButtonPopStyle(Ljava/util/List;)V

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->d:Lwq;

    invoke-virtual {v0}, Lwq;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/tencent/qqpimsecure/view/MainPageView;->f:Lho;

    invoke-virtual {v0}, Lho;->aQ()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const v0, 0x7f020257

    invoke-virtual {p1, v0}, Lcom/tencent/qqpimsecure/uilib/view/template/FrameworkTemplateUI;->setOptionNotifyImg(I)V

    :cond_3
    return-void
.end method

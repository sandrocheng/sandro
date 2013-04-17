.class public final Laiw;
.super Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laiw$a;,
        Laiw$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter",
        "<",
        "Lmk;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

.field private b:Landroid/view/View$OnClickListener;

.field private c:Landroid/view/View$OnClickListener;

.field private d:Landroid/view/View$OnClickListener;

.field private e:Landroid/view/View$OnClickListener;

.field private f:Z

.field private g:I

.field private h:I

.field private i:Ljm;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lavu;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lmk;",
            ">;>;",
            "Lavu;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BaseListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput v2, p0, Laiw;->g:I

    iput v2, p0, Laiw;->h:I

    sget-object v0, Ljm;->b:Ljm;

    if-nez v0, :cond_0

    new-instance v0, Ljm;

    invoke-direct {v0}, Ljm;-><init>()V

    sput-object v0, Ljm;->b:Ljm;

    :cond_0
    sget-object v0, Ljm;->b:Ljm;

    iput-object v0, p0, Laiw;->i:Ljm;

    iget-object v0, p0, Laiw;->i:Ljm;

    invoke-virtual {v0, v2}, Ljm;->b(I)I

    move-result v0

    iput v0, p0, Laiw;->g:I

    iget-object v0, p0, Laiw;->i:Ljm;

    invoke-virtual {v0, v1}, Ljm;->b(I)I

    move-result v0

    iput v0, p0, Laiw;->h:I

    const-class v0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    invoke-static {v0}, Lcom/tencent/tmsecure/common/ManagerCreator;->getManager(Ljava/lang/Class;)Lcom/tencent/tmsecure/common/BaseManager;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    iput-object v0, p0, Laiw;->a:Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    invoke-virtual {p3}, Lavu;->getMainView()Landroid/view/View;

    move-result-object v0

    const v3, 0x7f080153

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    invoke-static {}, Lu;->a()Lu;

    move-result-object v0

    invoke-virtual {v0}, Lu;->b()I

    move-result v0

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Laiw;->f:Z

    return-void

    :cond_1
    invoke-static {}, Lft;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Laiw;->i:Ljm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljm;->b(I)I

    move-result v0

    iput v0, p0, Laiw;->g:I

    iget-object v0, p0, Laiw;->i:Ljm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljm;->b(I)I

    move-result v0

    iput v0, p0, Laiw;->h:I

    return-void
.end method

.method public final a(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Laiw;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final b(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Laiw;->c:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final c(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Laiw;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final d(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Laiw;->e:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public final getItemViewType(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Laiw;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    iget v0, v0, Lmk;->id:I

    if-lez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/16 v10, 0x8

    const v9, 0x7f080095

    const v8, 0x7f08001c

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Laiw;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmk;

    invoke-virtual {p0, p1}, Laiw;->getItemViewType(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    if-nez p2, :cond_1

    const v0, 0x7f0300fe

    invoke-virtual {p0, p1, v0}, Laiw;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v1, Laiw$a;

    invoke-direct {v1}, Laiw$a;-><init>()V

    const v0, 0x7f08019a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Laiw$a;->b:Landroid/widget/TextView;

    const v0, 0x7f08034b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Laiw$a;->a:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    iget-object v1, p0, Laiw;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0087

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Laiw;->g:I

    iget v3, p0, Laiw;->h:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v1, v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v5

    iget-object v6, p0, Laiw;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09007a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    const/16 v8, 0x22

    invoke-virtual {v7, v1, v4, v2, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v5

    const/16 v3, 0x22

    invoke-virtual {v7, v1, v5, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    iget-object v0, v0, Laiw$a;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_1
    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laiw$a;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Laiw;->getItemViewType(I)I

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_6

    const v1, 0x7f0300ff

    invoke-virtual {p0, p1, v1}, Laiw;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v2, Laiw$b;

    invoke-direct {v2}, Laiw$b;-><init>()V

    const v1, 0x7f08034d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Laiw$b;->a:Landroid/widget/TextView;

    const v1, 0x7f08034e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Laiw$b;->c:Landroid/widget/TextView;

    const v1, 0x7f08034f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Laiw$b;->d:Landroid/widget/TextView;

    const v1, 0x7f080318

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Laiw$b;->j:Landroid/widget/LinearLayout;

    const v1, 0x7f080344

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Laiw$b;->b:Landroid/widget/TextView;

    const v1, 0x7f080318

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    const v1, 0x7f080350

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v2, Laiw$b;->e:Landroid/view/View;

    const v1, 0x7f080320

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Laiw$b;->f:Landroid/widget/LinearLayout;

    const v1, 0x7f08033e

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Laiw$b;->g:Landroid/widget/LinearLayout;

    const v1, 0x7f08033f

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Laiw$b;->h:Landroid/widget/LinearLayout;

    const v1, 0x7f080340

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, v2, Laiw$b;->i:Landroid/widget/LinearLayout;

    const v1, 0x7f080087

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Laiw$b;->k:Landroid/widget/ImageView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2
    iget v1, v0, Lmk;->a:I

    if-nez v1, :cond_7

    iget v1, v0, Lmk;->type:I

    const/4 v3, 0x2

    if-eq v1, v3, :cond_7

    iget-object v1, v2, Laiw$b;->a:Landroid/widget/TextView;

    iget-object v3, p0, Laiw;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090021

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_3
    iget-object v1, v0, Lmk;->name:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lmk;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, v2, Laiw$b;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lmk;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    iget v3, v0, Lmk;->j:I

    const/4 v1, 0x0

    packed-switch v3, :pswitch_data_0

    :goto_5
    if-nez v1, :cond_a

    iget-object v1, p0, Laiw;->a:Lcom/tencent/tmsecure/module/phoneservice/LocationManager;

    invoke-virtual {v0}, Lmk;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/tmsecure/module/phoneservice/LocationManager;->getLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    const-string v3, ""

    if-eq v1, v3, :cond_9

    iget-object v3, v2, Laiw$b;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v2, Laiw$b;->c:Landroid/widget/TextView;

    iget-object v4, p0, Laiw;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0085

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_6
    iget-object v1, v2, Laiw$b;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7
    iget v1, v0, Lmk;->a:I

    if-nez v1, :cond_e

    iget-object v1, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    if-eqz v1, :cond_d

    iget v1, v0, Lmk;->protocolType:I

    if-nez v1, :cond_b

    iget-object v1, v2, Laiw$b;->k:Landroid/widget/ImageView;

    const v3, 0x7f020185

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "index  "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v1, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Laiw;->f:Z

    if-nez v1, :cond_10

    iget-object v3, v2, Laiw$b;->g:Landroid/widget/LinearLayout;

    const v4, 0x7f0b0054

    const v5, 0x7f0201b2

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v2, Laiw$b;->g:Landroid/widget/LinearLayout;

    iget-object v3, p0, Laiw;->e:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_9
    iget-object v3, v2, Laiw$b;->h:Landroid/widget/LinearLayout;

    const v4, 0x7f0b000c

    const v5, 0x7f0201ae

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v2, Laiw$b;->h:Landroid/widget/LinearLayout;

    iget-object v3, p0, Laiw;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, v0, Lmk;->protocolType:I

    if-ne v1, v6, :cond_14

    iget-object v3, v2, Laiw$b;->i:Landroid/widget/LinearLayout;

    const v4, 0x7f0b004c

    const v5, 0x7f0201af

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v2, Laiw$b;->i:Landroid/widget/LinearLayout;

    iget-object v3, p0, Laiw;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v2, Laiw$b;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Laiw;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0086

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v6, [Ljava/lang/Object;

    iget-wide v5, v0, Lmk;->date:J

    invoke-static {v5, v6}, La;->a(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Laiw;->mContext:Landroid/content/Context;

    const v4, 0x7f0b044c

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    if-nez v1, :cond_12

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_a
    if-eqz v1, :cond_5

    const-string v4, "\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v1, v2, Laiw$b;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_b
    iget-boolean v0, v0, Lmk;->m:Z

    if-eqz v0, :cond_16

    iget-object v0, v2, Laiw$b;->e:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v2, Laiw$b;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v2, Laiw$b;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Laiw;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laiw$b;

    move-object v2, v1

    goto/16 :goto_2

    :cond_7
    iget-object v1, v2, Laiw$b;->a:Landroid/widget/TextView;

    iget-object v3, p0, Laiw;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09001e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_3

    :cond_8
    iget-object v1, v2, Laiw$b;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lmk;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :pswitch_0
    iget-object v1, p0, Laiw;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0082

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_1
    iget-object v1, p0, Laiw;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0083

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :pswitch_2
    iget-object v1, p0, Laiw;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0084

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_9
    iget-object v1, v2, Laiw$b;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    :cond_a
    iget-object v3, v2, Laiw$b;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v2, Laiw$b;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v2, Laiw$b;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    :cond_b
    iget v1, v0, Lmk;->protocolType:I

    if-ne v1, v6, :cond_c

    iget-object v1, v2, Laiw$b;->k:Landroid/widget/ImageView;

    const v3, 0x7f02018c

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    :cond_c
    iget-object v1, v2, Laiw$b;->k:Landroid/widget/ImageView;

    const v3, 0x7f02019f

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    :cond_d
    iget-object v1, v2, Laiw$b;->k:Landroid/widget/ImageView;

    const v3, 0x7f020185

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    :cond_e
    iget v1, v0, Lmk;->protocolType:I

    if-ne v1, v6, :cond_f

    iget-object v1, v2, Laiw$b;->k:Landroid/widget/ImageView;

    const v3, 0x7f02018d

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    :cond_f
    iget-object v1, v2, Laiw$b;->k:Landroid/widget/ImageView;

    const v3, 0x7f020186

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    :cond_10
    iget-boolean v1, v0, Lmk;->k:Z

    if-eqz v1, :cond_11

    iget-object v3, v2, Laiw$b;->g:Landroid/widget/LinearLayout;

    const v4, 0x7f0b0055

    const v5, 0x7f0201b1

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v2, Laiw$b;->g:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_9

    :cond_11
    iget-object v3, v2, Laiw$b;->g:Landroid/widget/LinearLayout;

    const v4, 0x7f0b0053

    const v5, 0x7f0201b0

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v2, Laiw$b;->g:Landroid/widget/LinearLayout;

    iget-object v3, p0, Laiw;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_9

    :cond_12
    const/4 v1, 0x0

    iget-object v4, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v4, v4, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    if-eqz v4, :cond_13

    iget-object v4, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v4, v4, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    iget-object v4, v4, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->subject:Ljava/lang/String;

    if-eqz v4, :cond_13

    iget-object v4, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v4, v4, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    iget-object v4, v4, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->subject:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    iget-object v1, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsNotificationIndHeader:Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsNotificationIndHeader;->subject:Ljava/lang/String;

    :cond_13
    iget-object v4, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v4, v4, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    if-eqz v4, :cond_4

    iget-object v4, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v4, v4, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    iget-object v4, v4, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->subject:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v4, v4, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    iget-object v4, v4, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->subject:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v1, v0, Lmk;->mmsData:Lcom/tencent/tmsecure/module/aresengine/MmsData;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsData;->mmsContentConfigHeader:Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/aresengine/MmsContentConfigHeader;->subject:Ljava/lang/String;

    goto/16 :goto_a

    :cond_14
    invoke-virtual {v0}, Lmk;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v3, v2, Laiw$b;->i:Landroid/widget/LinearLayout;

    const v4, 0x7f0b004d

    const v5, 0x7f0201af

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, v2, Laiw$b;->a:Landroid/widget/TextView;

    const v3, 0x7f0b0510

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_c
    iget-object v1, v2, Laiw$b;->i:Landroid/widget/LinearLayout;

    iget-object v3, p0, Laiw;->d:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v2, Laiw$b;->i:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v3, p0, Laiw;->mContext:Landroid/content/Context;

    const v4, 0x7f0b0086

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    iget-wide v5, v0, Lmk;->date:J

    invoke-static {v5, v6}, La;->a(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lmk;->getBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, v2, Laiw$b;->b:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_b

    :cond_15
    iget-object v3, v2, Laiw$b;->i:Landroid/widget/LinearLayout;

    const v4, 0x7f0b004c

    const v5, 0x7f0201af

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_c

    :cond_16
    iget-object v0, v2, Laiw$b;->e:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v2, Laiw$b;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v2, Laiw$b;->j:Landroid/widget/LinearLayout;

    iget-object v1, p0, Laiw;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

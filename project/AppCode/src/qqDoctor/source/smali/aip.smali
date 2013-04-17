.class public final Laip;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laip$a;,
        Laip$b;
    }
.end annotation


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Llc;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Llc;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Laip;->b:Landroid/content/Context;

    iput-object p2, p0, Laip;->c:Ljava/util/ArrayList;

    iput-object p1, p0, Laip;->b:Landroid/content/Context;

    iget-object v0, p0, Laip;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Laip;->a:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Laip;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .locals 3

    iget-object v0, p0, Laip;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Laip;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    iget v1, v0, Llc;->b:I

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_1

    iget v1, v0, Llc;->b:I

    const/16 v2, 0x7d1

    if-eq v1, v2, :cond_1

    iget v1, v0, Llc;->b:I

    const/16 v2, 0xfa1

    if-eq v1, v2, :cond_1

    iget v0, v0, Llc;->b:I

    const/16 v1, 0xbb9

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move/from16 v0, p1

    if-lt v0, v1, :cond_1

    const/16 p2, 0x0

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->c:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Llc;

    invoke-virtual/range {p0 .. p1}, Laip;->getItemViewType(I)I

    move-result v2

    if-nez v2, :cond_6

    if-nez p2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Laip;->b:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f03011a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v3, Laip$b;

    invoke-direct {v3}, Laip$b;-><init>()V

    const v2, 0x7f080139

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Laip$b;->a:Landroid/widget/TextView;

    const v2, 0x7f080377

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Laip$b;->b:Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v2, v3

    :goto_1
    iget-object v3, v2, Laip$b;->b:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Llc;->c:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, v1, Llc;->b:I

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_3

    iget-object v1, v2, Laip$b;->a:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b033d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Laip$b;->a:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090033

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v2, Laip$b;->b:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laip$b;

    goto :goto_1

    :cond_3
    iget v3, v1, Llc;->b:I

    const/16 v4, 0x7d1

    if-ne v3, v4, :cond_4

    iget-object v1, v2, Laip$b;->a:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b033e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Laip$b;->a:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090034

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v2, Laip$b;->b:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_4
    iget v3, v1, Llc;->b:I

    const/16 v4, 0xfa1

    if-ne v3, v4, :cond_5

    iget-object v1, v2, Laip$b;->a:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0340

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Laip$b;->a:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v2, Laip$b;->b:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_5
    iget v1, v1, Llc;->b:I

    const/16 v3, 0xbb9

    if-ne v1, v3, :cond_0

    iget-object v1, v2, Laip$b;->a:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b033f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v2, Laip$b;->a:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v2, Laip$b;->b:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_6
    if-nez p2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Laip;->a:Landroid/view/LayoutInflater;

    const v3, 0x7f030119

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v3, Laip$a;

    invoke-direct {v3}, Laip$a;-><init>()V

    const v2, 0x7f080378

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Laip$a;->a:Landroid/widget/TextView;

    const v2, 0x7f080379

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Laip$a;->c:Landroid/widget/TextView;

    const v2, 0x7f08037a

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Laip$a;->b:Landroid/widget/TextView;

    const v2, 0x7f08037b

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Laip$a;->d:Landroid/widget/TextView;

    const v2, 0x7f08037c

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Laip$a;->e:Landroid/widget/TextView;

    const v2, 0x7f08037e

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v3, Laip$a;->f:Landroid/widget/TextView;

    const v2, 0x7f08037f

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    iput-object v2, v3, Laip$a;->g:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const v2, 0x7f08037d

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v3, Laip$a;->h:Landroid/widget/ImageView;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_2
    const-string v5, ""

    const-string v9, ""

    const-string v4, ""

    const-string v8, ""

    const-string v7, ""

    const-string v11, ""

    const-string v12, ""

    const/4 v2, -0x1

    iget v6, v1, Llc;->b:I

    sparse-switch v6, :sswitch_data_0

    :cond_7
    move v1, v2

    move-object v6, v9

    move-object v2, v7

    move-object v7, v5

    move-object v5, v4

    move-object v4, v8

    :goto_3
    iget-object v8, v3, Laip$a;->a:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v3, Laip$a;->b:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v3, Laip$a;->c:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v3, Laip$a;->d:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v3, Laip$a;->e:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, -0x1

    if-eq v1, v2, :cond_10

    iget-object v2, v3, Laip$a;->g:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v2, v3, Laip$a;->f:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v3, Laip$a;->h:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v3, Laip$a;->h:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laip$a;

    move-object v3, v2

    goto :goto_2

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b034a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    const-string v4, ""

    const-string v2, ""

    const v1, 0x7f020190

    move-object v6, v4

    move-object v4, v8

    move-object v15, v2

    move-object v2, v7

    move-object v7, v5

    move-object v5, v15

    goto :goto_3

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0347

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v1, 0x7f020192

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto :goto_3

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0349

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v1, 0x7f020190

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0348

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v1, 0x7f020192

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0358

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0359

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Llc;->c:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f020190

    move-object v6, v4

    move-object v4, v8

    move-object v15, v2

    move-object v2, v7

    move-object v7, v5

    move-object v5, v15

    goto/16 :goto_3

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b034c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v2, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b034d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Llc;->c:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Llc;->d:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f020190

    move-object v15, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v4

    move-object v4, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b034e

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    const-wide/16 v4, 0x0

    iget-object v1, v1, Llc;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    move v6, v2

    :goto_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v6, v2, :cond_9

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkw;

    invoke-virtual {v2}, Lkw;->I()J

    move-result-wide v13

    add-long/2addr v4, v13

    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_4

    :cond_9
    invoke-static {v4, v5}, La;->b(J)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f020190

    move-object v4, v8

    move-object v5, v2

    move-object v6, v9

    move-object v2, v7

    move-object v7, v10

    goto/16 :goto_3

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0351

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0352

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Llc;->c:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f020192

    move-object v6, v4

    move-object v4, v8

    move-object v15, v2

    move-object v2, v7

    move-object v7, v5

    move-object v5, v15

    goto/16 :goto_3

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0356

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0357

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Llc;->c:Ljava/lang/Object;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f020190

    move-object v6, v4

    move-object v4, v8

    move-object v15, v2

    move-object v2, v7

    move-object v7, v5

    move-object v5, v15

    goto/16 :goto_3

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0362

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v1, 0x7f020193

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0363

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v1, 0x7f020193

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0366

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v1, 0x7f020193

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_c
    invoke-static {}, Lqx;->a()Lqx;

    move-result-object v1

    invoke-virtual {v1}, Lqx;->h()I

    move-result v1

    sget v2, Lqx$a;->q:I

    if-ne v1, v2, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b036a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_5
    const v2, 0x7f020193

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move v15, v2

    move-object v2, v7

    move-object v7, v1

    move v1, v15

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b036b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_5

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b036c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v1, 0x7f020193

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b036d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v1, 0x7f020193

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_f
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0365

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v1, 0x7f020193

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_10
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0364

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v1, 0x7f020193

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0369

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v1, 0x7f020193

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0367

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v1, 0x7f020193

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_13
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0368

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v1, 0x7f020193

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_14
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    const v2, 0x7f0b0378

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lxb;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Laip;->b:Landroid/content/Context;

    const v5, 0x7f0b0379

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Laip;->b:Landroid/content/Context;

    const v5, 0x7f0b037a

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v5, Lxb;->b:J

    invoke-static {v5, v6}, La;->c(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Laip;->b:Landroid/content/Context;

    const v5, 0x7f0b037b

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f020193

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_15
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    const v2, 0x7f0b037d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f020193

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_16
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    const v2, 0x7f0b037e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f020193

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_17
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    const v2, 0x7f0b037f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f020193

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_18
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v1, 0x7f020193

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_19
    iget-object v1, v1, Llc;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    const v2, 0x7f0b0382

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f020193

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b036e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lxb;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v4, ""

    const-string v2, ""

    const v1, 0x7f020193

    goto/16 :goto_3

    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b036f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b04cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lxb;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v4, ""

    const-string v2, ""

    const v1, 0x7f020193

    goto/16 :goto_3

    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    const v2, 0x7f0b0383

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f020190

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_1d
    iget-object v6, v1, Llc;->e:Ljava/lang/Object;

    instance-of v6, v6, Ljava/lang/Long;

    if-eqz v6, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Laip;->b:Landroid/content/Context;

    const v6, 0x7f0b0346

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Llc;->e:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, La;->b(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f020193

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    const v2, 0x7f0b032d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f020192

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_1f
    iget-object v1, v1, Llc;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v5, 0x1

    if-le v2, v5, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Laip;->b:Landroid/content/Context;

    const v5, 0x7f0b0342

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v13, v0, Laip;->b:Landroid/content/Context;

    const v14, 0x7f0b0531

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_6
    const v2, 0x7f020192

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move v15, v2

    move-object v2, v7

    move-object v7, v1

    move v1, v15

    goto/16 :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Laip;->b:Landroid/content/Context;

    const v5, 0x7f0b0342

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v2, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    const v2, 0x7f0b0342

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :sswitch_20
    iget-object v2, v1, Llc;->c:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget v1, v1, Llc;->b:I

    const/16 v5, 0x7d8

    if-ne v1, v5, :cond_d

    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b04cb

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0b04cc

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v4, ""

    const-string v2, ""

    const v1, 0x7f020190

    goto/16 :goto_3

    :cond_d
    if-eqz v2, :cond_f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v5, 0x1

    if-le v1, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    const v5, 0x7f0b0343

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v13, v0, Laip;->b:Landroid/content/Context;

    const v14, 0x7f0b0531

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_7
    const v2, 0x7f020192

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move v15, v2

    move-object v2, v7

    move-object v7, v1

    move v1, v15

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    const v5, 0x7f0b0343

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget-object v1, v1, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->softName:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    const v2, 0x7f0b0343

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :sswitch_21
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    const v2, 0x7f0b035a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f020190

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_22
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    const v2, 0x7f0b035b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f020193

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_23
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    const v2, 0x7f0b035d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f020190

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_24
    move-object/from16 v0, p0

    iget-object v2, v0, Laip;->b:Landroid/content/Context;

    const v4, 0x7f0b0370

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0b0371

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Llc;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f020190

    move-object v6, v4

    move-object v4, v8

    move-object v15, v2

    move-object v2, v7

    move-object v7, v5

    move-object v5, v15

    goto/16 :goto_3

    :sswitch_25
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0373

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const v1, 0x7f020193

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_26
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    const v2, 0x7f0b0374

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget v10, Lxb;->e:I

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f020193

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_27
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    const v2, 0x7f0b0354

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f020190

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_28
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    const v2, 0x7f0b0355

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f020193

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :sswitch_29
    move-object/from16 v0, p0

    iget-object v1, v0, Laip;->b:Landroid/content/Context;

    const v2, 0x7f0b0353

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v1, 0x7f020193

    move-object v5, v4

    move-object v6, v9

    move-object v4, v8

    move-object v15, v7

    move-object v7, v2

    move-object v2, v15

    goto/16 :goto_3

    :cond_10
    const-string v1, ""

    invoke-virtual {v11, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, v3, Laip$a;->g:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v1, v3, Laip$a;->h:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v3, Laip$a;->f:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v3, Laip$a;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_11
    const-string v1, ""

    invoke-virtual {v12, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, v3, Laip$a;->f:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v3, Laip$a;->h:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-boolean v1, Lqc;->g:Z

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_12
    iget-object v1, v3, Laip$a;->g:Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setVisibility(I)V

    iget-object v1, v3, Laip$a;->h:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v3, Laip$a;->f:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3ea -> :sswitch_20
        0x3eb -> :sswitch_1
        0x3ec -> :sswitch_7
        0x3ed -> :sswitch_3
        0x3ee -> :sswitch_1e
        0x3ef -> :sswitch_1f
        0x7d2 -> :sswitch_5
        0x7d3 -> :sswitch_6
        0x7d4 -> :sswitch_4
        0x7d5 -> :sswitch_0
        0x7d6 -> :sswitch_8
        0x7d7 -> :sswitch_2
        0x7d8 -> :sswitch_20
        0x7d9 -> :sswitch_21
        0x7da -> :sswitch_23
        0x7db -> :sswitch_1c
        0x7dc -> :sswitch_24
        0x7dd -> :sswitch_27
        0xbba -> :sswitch_14
        0xbbb -> :sswitch_15
        0xbbc -> :sswitch_16
        0xbbd -> :sswitch_17
        0xbbe -> :sswitch_19
        0xbbf -> :sswitch_1d
        0xbc0 -> :sswitch_22
        0xbc1 -> :sswitch_18
        0xbc2 -> :sswitch_1a
        0xbc3 -> :sswitch_26
        0xbc4 -> :sswitch_28
        0xbc5 -> :sswitch_1b
        0xfa2 -> :sswitch_9
        0xfa3 -> :sswitch_b
        0xfa4 -> :sswitch_c
        0xfa5 -> :sswitch_f
        0xfa6 -> :sswitch_10
        0xfa7 -> :sswitch_11
        0xfa8 -> :sswitch_12
        0xfa9 -> :sswitch_13
        0xfaa -> :sswitch_d
        0xfab -> :sswitch_e
        0xfac -> :sswitch_25
        0xfad -> :sswitch_29
        0xfae -> :sswitch_a
    .end sparse-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final hasStableIds()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

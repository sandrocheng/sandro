.class final Laol;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Laoa;


# direct methods
.method constructor <init>(Laoa;)V
    .locals 0

    iput-object p1, p0, Laol;->a:Laoa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    const v6, 0x7f090034

    const v7, 0x7f090033

    const v8, 0x7f020190

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Laol;->a:Laoa;

    invoke-static {v0}, Laoa;->o(Laoa;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Laol;->a:Laoa;

    invoke-static {v0}, Laoa;->ae(Laoa;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Laol;->a:Laoa;

    invoke-static {v0}, Laoa;->af(Laoa;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v1, v2

    move v3, v2

    move v4, v2

    :goto_0
    iget-object v0, p0, Laol;->a:Laoa;

    invoke-static {v0}, Laoa;->R(Laoa;)Lum;

    move-result-object v0

    iget-object v0, v0, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Laol;->a:Laoa;

    invoke-static {v0}, Laoa;->R(Laoa;)Lum;

    move-result-object v0

    iget-object v0, v0, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    iget v0, v0, Llc;->b:I

    const/16 v9, 0x3ee

    if-ne v0, v9, :cond_0

    move v4, v5

    :cond_0
    iget-object v0, p0, Laol;->a:Laoa;

    invoke-static {v0}, Laoa;->R(Laoa;)Lum;

    move-result-object v0

    iget-object v0, v0, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    iget v0, v0, Llc;->b:I

    const/16 v9, 0x3ea

    if-ne v0, v9, :cond_1

    invoke-static {}, Lcom/tencent/tmsecure/utils/ScriptHelper;->canRunAtRoot()I

    move-result v0

    if-eqz v0, :cond_1

    move v3, v5

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    if-nez v4, :cond_4

    move v1, v2

    :goto_1
    iget-object v0, p0, Laol;->a:Laoa;

    invoke-static {v0}, Laoa;->R(Laoa;)Lum;

    move-result-object v0

    iget-object v0, v0, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Laol;->a:Laoa;

    invoke-static {v0}, Laoa;->R(Laoa;)Lum;

    move-result-object v0

    iget-object v0, v0, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    iget v0, v0, Llc;->b:I

    const/16 v9, 0x7db

    if-eq v0, v9, :cond_3

    iget-object v0, p0, Laol;->a:Laoa;

    invoke-static {v0}, Laoa;->R(Laoa;)Lum;

    move-result-object v0

    iget-object v0, v0, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Llc;

    iget v0, v0, Llc;->b:I

    const/16 v9, 0x7da

    if-ne v0, v9, :cond_5

    :cond_3
    move v4, v5

    :cond_4
    if-eqz v4, :cond_6

    iget-object v0, p0, Laol;->a:Laoa;

    invoke-static {v0}, Laoa;->Q(Laoa;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Laol;->a:Laoa;

    invoke-static {v1}, Laoa;->ag(Laoa;)Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f0b024a

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v5, v2

    move v0, v6

    move v1, v8

    :goto_2
    iget-object v6, p0, Laol;->a:Laoa;

    invoke-static {v6}, Laoa;->al(Laoa;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Laol;->a:Laoa;

    invoke-static {v2}, Laoa;->al(Laoa;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Laol;->a:Laoa;

    invoke-static {v1}, Laoa;->am(Laoa;)Z

    move-result v1

    if-nez v1, :cond_a

    if-eqz v5, :cond_a

    iget-object v1, p0, Laol;->a:Laoa;

    invoke-static {v1}, Laoa;->ao(Laoa;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Laol;->a:Laoa;

    invoke-static {v2}, Laoa;->an(Laoa;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0246

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v1, p0, Laol;->a:Laoa;

    invoke-static {v1}, Laoa;->ao(Laoa;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Laol;->a:Laoa;

    invoke-static {v2}, Laoa;->as(Laoa;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Laol;->a:Laoa;

    invoke-static {v0}, Laoa;->at(Laoa;)Laip;

    move-result-object v0

    invoke-virtual {v0}, Laip;->notifyDataSetChanged()V

    return-void

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1

    :cond_6
    if-eqz v3, :cond_7

    iget-object v0, p0, Laol;->a:Laoa;

    invoke-static {v0}, Laoa;->Q(Laoa;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Laol;->a:Laoa;

    invoke-static {v1}, Laoa;->ah(Laoa;)Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f0b0249

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v5, v2

    move v0, v7

    move v1, v8

    goto :goto_2

    :cond_7
    iget-object v0, p0, Laol;->a:Laoa;

    invoke-static {v0}, Laoa;->R(Laoa;)Lum;

    move-result-object v0

    iget-object v0, v0, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Laol;->a:Laoa;

    invoke-static {v0}, Laoa;->ai(Laoa;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0392

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v5, p0, Laol;->a:Laoa;

    invoke-static {v5}, Laoa;->R(Laoa;)Lum;

    move-result-object v5

    iget-object v5, v5, Lum;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Laol;->a:Laoa;

    invoke-static {v1}, Laoa;->Q(Laoa;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f020192

    move v5, v2

    move v1, v0

    move v0, v7

    goto/16 :goto_2

    :cond_8
    iget-object v0, p0, Laol;->a:Laoa;

    invoke-static {v0}, Laoa;->R(Laoa;)Lum;

    move-result-object v0

    iget-object v0, v0, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, Laol;->a:Laoa;

    invoke-static {v0}, Laoa;->aj(Laoa;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0394

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    iget-object v5, p0, Laol;->a:Laoa;

    invoke-static {v5}, Laoa;->R(Laoa;)Lum;

    move-result-object v5

    iget-object v5, v5, Lum;->d:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Laol;->a:Laoa;

    invoke-static {v1}, Laoa;->Q(Laoa;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v5, v2

    move v0, v6

    move v1, v8

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Laol;->a:Laoa;

    invoke-static {v0}, Laoa;->Q(Laoa;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Laol;->a:Laoa;

    invoke-static {v1}, Laoa;->ak(Laoa;)Landroid/content/Context;

    move-result-object v1

    const v6, 0x7f0b024d

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f020193

    const v0, 0x7f090035

    goto/16 :goto_2

    :cond_a
    if-eqz v4, :cond_b

    iget-object v1, p0, Laol;->a:Laoa;

    invoke-static {v1}, Laoa;->ao(Laoa;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Laol;->a:Laoa;

    invoke-static {v2}, Laoa;->ap(Laoa;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0247

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_b
    if-eqz v3, :cond_c

    iget-object v1, p0, Laol;->a:Laoa;

    invoke-static {v1}, Laoa;->ao(Laoa;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Laol;->a:Laoa;

    invoke-static {v2}, Laoa;->aq(Laoa;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0248

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_c
    iget-object v1, p0, Laol;->a:Laoa;

    invoke-static {v1}, Laoa;->ao(Laoa;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Laol;->a:Laoa;

    invoke-static {v2}, Laoa;->ar(Laoa;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0398

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

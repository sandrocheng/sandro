.class public final Lalg;
.super Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lalg$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter",
        "<",
        "Lkw;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lbmp;


# direct methods
.method public constructor <init>(Lbmp;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbmp;",
            "Ljava/util/List",
            "<",
            "Lcom/tencent/qqpimsecure/uilib/model/ListModel",
            "<",
            "Lkw;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lbmp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/tencent/qqpimsecure/uilib/ui/adapter/BasePinnedListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lalg;->b:Ljava/util/List;

    iput-object p1, p0, Lalg;->c:Lbmp;

    iget-object v0, p0, Lalg;->c:Lbmp;

    invoke-virtual {v0}, Lbmp;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lalg;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lkw;)I
    .locals 1

    invoke-virtual {p0}, Lkw;->isApk()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkw;->getApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lalg;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lalg;->b:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    const v3, 0x7f0b0b1b

    iget-object v0, p0, Lalg;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lalg;->c:Lbmp;

    invoke-virtual {v0}, Lbmp;->a()Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonEnabled(Z)V

    iget-object v0, p0, Lalg;->c:Lbmp;

    invoke-virtual {v0}, Lbmp;->a()Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lalg;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lalg;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lalg;->c:Lbmp;

    invoke-virtual {v0}, Lbmp;->a()Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setButtonEnabled(Z)V

    iget-object v0, p0, Lalg;->c:Lbmp;

    invoke-virtual {v0}, Lbmp;->a()Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    iget-object v1, p0, Lalg;->a:Landroid/content/Context;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 1

    iget-object v0, p0, Lalg;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lkw;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lalg;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    iget-object v1, p0, Lalg;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0}, Lkw;->isApk()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lkw;->getApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v2, v1, :cond_1

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_3
    return-object v3
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lalg;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final d()V
    .locals 5

    iget-object v1, p0, Lalg;->mDataList:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lalg;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    invoke-virtual {v0}, Lkw;->isApk()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lalg;->b:Ljava/util/List;

    invoke-virtual {v0}, Lkw;->isApk()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lkw;->getApkPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lalg;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lalg;->a()V

    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lalg;->mDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lalg;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    const/4 v2, -0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    if-nez p2, :cond_1

    const v0, 0x7f030122

    invoke-virtual {p0, p1, v0}, Lalg;->createItemView(II)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lalg$a;

    invoke-direct {v1}, Lalg$a;-><init>()V

    const v0, 0x7f080095

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lalg$a;->a:Landroid/widget/ImageView;

    const v0, 0x7f080139

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lalg$a;->b:Landroid/widget/TextView;

    const v0, 0x7f080352

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lalg$a;->c:Landroid/widget/TextView;

    const v0, 0x7f08014c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iput-object v0, v1, Lalg$a;->d:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    const v0, 0x7f08038f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lalg$a;->e:Landroid/widget/TextView;

    const v0, 0x7f08038e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lalg$a;->f:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lalg;->mDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkw;

    iget-object v3, v1, Lalg$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lkw;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, v1, Lalg$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lkw;->getAppName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lalg$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lkw;->isApk()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Lkw;->n()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_2

    const v2, 0x7f0b04f1

    :cond_0
    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0}, Lkw;->y()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, v1, Lalg$a;->d:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v2, v7}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    iget-object v2, v1, Lalg$a;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lalg$a;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lalg;->a:Landroid/content/Context;

    const v4, 0x7f0b0921

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    invoke-virtual {v0}, Lkw;->isApk()Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v1, Lalg$a;->f:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v1, Lalg$a;->f:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lkw;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lalg;->a:Landroid/content/Context;

    const v3, 0x7f0b03cd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p0, Lalg;->mItemModelList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqpimsecure/uilib/model/ItemModel;

    invoke-virtual {p0, p2, v0}, Lalg;->setLabel(Landroid/view/View;Lcom/tencent/qqpimsecure/uilib/model/ItemModel;)V

    return-object p2

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lalg$a;

    move-object v1, v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v0}, Lkw;->n()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_3

    const v2, 0x7f0b04f2

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Lkw;->n()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_4

    const v2, 0x7f0b04f6

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lkw;->n()I

    move-result v4

    const/16 v5, 0xc

    if-ne v4, v5, :cond_5

    const v2, 0x7f0b08f0

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v0}, Lkw;->n()I

    move-result v4

    const/16 v5, 0xe

    if-ne v4, v5, :cond_6

    const v2, 0x7f0b08f2

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v0}, Lkw;->n()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_0

    const v2, 0x7f0b08f1

    goto/16 :goto_1

    :cond_7
    invoke-virtual {v0}, Lkw;->v()I

    move-result v4

    if-ne v4, v2, :cond_8

    const v2, 0x7f0b0376

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v0}, Lkw;->v()I

    move-result v4

    if-nez v4, :cond_9

    const v2, 0x7f0b090c

    goto/16 :goto_1

    :cond_9
    invoke-virtual {v0}, Lkw;->v()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    const v2, 0x7f0b090d

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v0}, Lkw;->v()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b

    const v2, 0x7f0b090e

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v0}, Lkw;->v()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_c

    const v2, 0x7f0b090f

    goto/16 :goto_1

    :cond_c
    invoke-virtual {v0}, Lkw;->v()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    const v2, 0x7f0b08c2

    goto/16 :goto_1

    :cond_d
    iget-object v2, v1, Lalg$a;->d:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v2, v6}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setVisibility(I)V

    iget-object v2, v1, Lalg$a;->d:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v1, Lalg$a;->d:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    iget-object v4, p0, Lalg;->b:Ljava/util/List;

    invoke-virtual {v0}, Lkw;->isApk()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v0}, Lkw;->getApkPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setChecked(Z)V

    iget-object v2, v1, Lalg$a;->d:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    invoke-virtual {v2, v0}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setTag(Ljava/lang/Object;)V

    iget-object v2, v1, Lalg$a;->d:Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;

    new-instance v3, Lalh;

    invoke-direct {v3, p0}, Lalh;-><init>(Lalg;)V

    invoke-virtual {v2, v3}, Lcom/tencent/qqpimsecure/uilib/view/CheckBoxView;->setClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, v1, Lalg$a;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_e
    invoke-virtual {v0}, Lkw;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_f
    iget-object v0, v1, Lalg$a;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3
.end method

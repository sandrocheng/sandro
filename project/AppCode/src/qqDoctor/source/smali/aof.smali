.class final Laof;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Laoa;


# direct methods
.method constructor <init>(Laoa;)V
    .locals 0

    iput-object p1, p0, Laof;->a:Laoa;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 12

    const v3, 0x7f0b0372

    const/16 v11, 0x64

    const/4 v4, 0x0

    const/4 v10, 0x3

    const/4 v5, 0x1

    iget-object v0, p0, Laof;->a:Laoa;

    invoke-static {v0}, Laoa;->a(Laoa;)Lqc;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laof;->a:Laoa;

    invoke-static {v0}, Laoa;->a(Laoa;)Lqc;

    move-result-object v0

    iget-boolean v0, v0, Lqc;->i:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Llc;

    const-string v2, ""

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_2
    :goto_1
    move-object v0, v2

    :cond_3
    :goto_2
    iget v1, p1, Landroid/os/Message;->what:I

    if-eq v1, v11, :cond_0

    iget-object v1, p0, Laof;->a:Laoa;

    invoke-static {v1}, Laoa;->P(Laoa;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Laof;->a:Laoa;

    invoke-static {v1}, Laoa;->Q(Laoa;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :sswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_6

    iget-object v1, p0, Laof;->a:Laoa;

    invoke-static {v1}, Laoa;->v(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->getAnimationing()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Laof;->a:Laoa;

    invoke-static {v1}, Laoa;->v(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->startAnimation()V

    :cond_4
    iget-object v2, p0, Laof;->a:Laoa;

    iget-object v1, v0, Llc;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v1, v1, 0x48

    div-int/lit8 v1, v1, 0x64

    add-int/lit8 v1, v1, 0x1c

    invoke-static {v2, v1}, Laoa;->a(Laoa;I)I

    iget-object v1, p0, Laof;->a:Laoa;

    invoke-static {v1}, Laoa;->w(Laoa;)I

    move-result v1

    if-lt v1, v11, :cond_5

    iget-object v1, p0, Laof;->a:Laoa;

    const/16 v2, 0x63

    invoke-static {v1, v2}, Laoa;->a(Laoa;I)I

    :cond_5
    iget-object v1, p0, Laof;->a:Laoa;

    invoke-static {v1}, Laoa;->x(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    move-result-object v1

    iget-object v2, p0, Laof;->a:Laoa;

    invoke-static {v2}, Laoa;->w(Laoa;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgressWithAnim(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Laof;->a:Laoa;

    invoke-static {v2}, Laoa;->y(Laoa;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b0407

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Llc;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_6
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v10, :cond_7

    iget-object v0, p0, Laof;->a:Laoa;

    invoke-static {v0}, Laoa;->z(Laoa;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b04ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_7
    iget-object v1, v0, Llc;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Laof;->a:Laoa;

    invoke-static {v2}, Laoa;->A(Laoa;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0b05b9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_a

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;

    iget v8, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    if-ne v8, v10, :cond_9

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    :cond_9
    iget v8, v2, Lcom/tencent/tmsecure/module/qscanner/QScanResultEntity;->type:I

    const/16 v9, 0x8

    if-ne v8, v9, :cond_8

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    new-instance v1, Llc;

    invoke-direct {v1}, Llc;-><init>()V

    iput v4, v1, Llc;->a:I

    iput-object v6, v1, Llc;->c:Ljava/lang/Object;

    iget-object v0, v0, Llc;->e:Ljava/lang/Object;

    iput-object v0, v1, Llc;->e:Ljava/lang/Object;

    iget-object v0, p0, Laof;->a:Laoa;

    invoke-static {v0, v1}, Laoa;->a(Laoa;Llc;)V

    new-instance v0, Llc;

    invoke-direct {v0}, Llc;-><init>()V

    const/16 v1, 0xc

    iput v1, v0, Llc;->a:I

    iput-object v7, v0, Llc;->c:Ljava/lang/Object;

    iget-object v1, p0, Laof;->a:Laoa;

    invoke-static {v1, v0}, Laoa;->a(Laoa;Llc;)V

    iget-object v0, p0, Laof;->a:Laoa;

    invoke-static {v0, v11}, Laoa;->a(Laoa;I)I

    iget-object v0, p0, Laof;->a:Laoa;

    invoke-static {v0}, Laoa;->x(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    move-result-object v0

    iget-object v1, p0, Laof;->a:Laoa;

    invoke-static {v1}, Laoa;->w(Laoa;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgressWithAnim(I)V

    move-object v0, v5

    goto/16 :goto_2

    :sswitch_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v1, v5, :cond_2

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v1, v10, :cond_2

    iget-object v1, v0, Llc;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Llc;->c:Ljava/lang/Object;

    iget-object v1, p0, Laof;->a:Laoa;

    invoke-static {v1, v0}, Laoa;->a(Laoa;Llc;)V

    iget-object v0, p0, Laof;->a:Laoa;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Laoa;->a(Laoa;I)I

    iget-object v0, p0, Laof;->a:Laoa;

    invoke-static {v0}, Laoa;->x(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    move-result-object v0

    iget-object v1, p0, Laof;->a:Laoa;

    invoke-static {v1}, Laoa;->w(Laoa;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgressWithAnim(I)V

    iget-object v0, p0, Laof;->a:Laoa;

    invoke-static {v0}, Laoa;->x(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->startAnimation()V

    move-object v0, v2

    goto/16 :goto_2

    :sswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_c

    iget-object v1, p0, Laof;->a:Laoa;

    invoke-static {v1}, Laoa;->v(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->getAnimationing()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Laof;->a:Laoa;

    invoke-static {v1}, Laoa;->v(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->startAnimation()V

    :cond_b
    iget-object v0, v0, Llc;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto/16 :goto_2

    :cond_c
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v10, :cond_d

    iget-object v0, p0, Laof;->a:Laoa;

    invoke-static {v0}, Laoa;->B(Laoa;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b05bd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_d
    iget-object v1, p0, Laof;->a:Laoa;

    invoke-static {v1}, Laoa;->C(Laoa;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b05bf

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laof;->a:Laoa;

    invoke-static {v2, v0}, Laoa;->a(Laoa;Llc;)V

    iget-object v0, p0, Laof;->a:Laoa;

    const/16 v2, 0xf

    invoke-static {v0, v2}, Laoa;->a(Laoa;I)I

    iget-object v0, p0, Laof;->a:Laoa;

    invoke-static {v0}, Laoa;->x(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    move-result-object v0

    iget-object v2, p0, Laof;->a:Laoa;

    invoke-static {v2}, Laoa;->w(Laoa;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgressWithAnim(I)V

    iget-object v0, p0, Laof;->a:Laoa;

    invoke-static {v0}, Laoa;->v(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    move-result-object v0

    iget-object v2, p0, Laof;->a:Laoa;

    invoke-static {v2}, Laoa;->D(Laoa;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->setScore(I)V

    move-object v0, v1

    goto/16 :goto_2

    :sswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v10, :cond_e

    iget-object v0, p0, Laof;->a:Laoa;

    invoke-static {v0}, Laoa;->E(Laoa;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b05bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Laof;->a:Laoa;

    invoke-static {v1}, Laoa;->v(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->getAnimationing()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Laof;->a:Laoa;

    invoke-static {v1}, Laoa;->v(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->startAnimation()V

    goto/16 :goto_2

    :cond_e
    iget-object v1, p0, Laof;->a:Laoa;

    invoke-static {v1}, Laoa;->x(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    move-result-object v1

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgressWithAnim(I)V

    iget-object v1, p0, Laof;->a:Laoa;

    invoke-static {v1}, Laoa;->F(Laoa;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b04ce

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laof;->a:Laoa;

    invoke-static {v2, v0}, Laoa;->a(Laoa;Llc;)V

    iget-object v0, p0, Laof;->a:Laoa;

    invoke-static {v0}, Laoa;->v(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    move-result-object v0

    iget-object v2, p0, Laof;->a:Laoa;

    invoke-static {v2}, Laoa;->D(Laoa;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->setScore(I)V

    move-object v0, v1

    goto/16 :goto_2

    :sswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v1, v5, :cond_2

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v1, v10, :cond_2

    iget-object v1, p0, Laof;->a:Laoa;

    invoke-static {v1, v0}, Laoa;->a(Laoa;Llc;)V

    move-object v0, v2

    goto/16 :goto_2

    :sswitch_5
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v1, v5, :cond_2

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v1, v10, :cond_2

    iget-object v1, p0, Laof;->a:Laoa;

    invoke-static {v1, v0}, Laoa;->a(Laoa;Llc;)V

    move-object v0, v2

    goto/16 :goto_2

    :sswitch_6
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v1, v5, :cond_2

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v1, v10, :cond_2

    iget-object v1, p0, Laof;->a:Laoa;

    invoke-static {v1, v0}, Laoa;->a(Laoa;Llc;)V

    move-object v0, v2

    goto/16 :goto_2

    :sswitch_7
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v1, v5, :cond_2

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v1, v10, :cond_2

    iget-object v1, p0, Laof;->a:Laoa;

    invoke-static {v1, v0}, Laoa;->a(Laoa;Llc;)V

    move-object v0, v2

    goto/16 :goto_2

    :sswitch_8
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_f

    iget-object v0, p0, Laof;->a:Laoa;

    invoke-static {v0}, Laoa;->G(Laoa;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b05bc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_f
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v1, v10, :cond_2

    iget-object v1, p0, Laof;->a:Laoa;

    invoke-static {v1}, Laoa;->H(Laoa;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b05ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v1, v0, Llc;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laof;->a:Laoa;

    invoke-static {v2, v0}, Laoa;->a(Laoa;Llc;)V

    move-object v0, v1

    goto/16 :goto_2

    :sswitch_9
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_10

    iget-object v0, p0, Laof;->a:Laoa;

    invoke-static {v0}, Laoa;->I(Laoa;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b05be

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_10
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v1, v10, :cond_2

    iget-object v1, p0, Laof;->a:Laoa;

    invoke-static {v1}, Laoa;->J(Laoa;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b05bb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v1, v0, Llc;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laof;->a:Laoa;

    invoke-static {v2, v0}, Laoa;->a(Laoa;Llc;)V

    move-object v0, v1

    goto/16 :goto_2

    :sswitch_a
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v1, v5, :cond_2

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eq v1, v10, :cond_2

    iget-object v1, p0, Laof;->a:Laoa;

    invoke-static {v1}, Laoa;->K(Laoa;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b05bd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laof;->a:Laoa;

    invoke-static {v2, v0}, Laoa;->a(Laoa;Llc;)V

    iget-object v0, p0, Laof;->a:Laoa;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Laoa;->a(Laoa;I)I

    iget-object v0, p0, Laof;->a:Laoa;

    invoke-static {v0}, Laoa;->x(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    move-result-object v0

    iget-object v2, p0, Laof;->a:Laoa;

    invoke-static {v2}, Laoa;->w(Laoa;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgressWithAnim(I)V

    iget-object v0, p0, Laof;->a:Laoa;

    invoke-static {v0}, Laoa;->v(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    move-result-object v0

    iget-object v2, p0, Laof;->a:Laoa;

    invoke-static {v2}, Laoa;->D(Laoa;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->setScore(I)V

    move-object v0, v1

    goto/16 :goto_2

    :sswitch_b
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v5, :cond_12

    iget-object v0, p0, Laof;->a:Laoa;

    invoke-static {v0}, Laoa;->v(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->getAnimationing()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Laof;->a:Laoa;

    invoke-static {v0}, Laoa;->v(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->startAnimation()V

    :cond_11
    iget-object v0, p0, Laof;->a:Laoa;

    invoke-static {v0}, Laoa;->L(Laoa;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_12
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v10, :cond_13

    iget-object v0, p0, Laof;->a:Laoa;

    invoke-static {v0}, Laoa;->M(Laoa;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :cond_13
    iget-object v1, p0, Laof;->a:Laoa;

    invoke-static {v1}, Laoa;->N(Laoa;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Laof;->a:Laoa;

    invoke-static {v2, v0}, Laoa;->a(Laoa;Llc;)V

    iget-object v0, p0, Laof;->a:Laoa;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Laoa;->a(Laoa;I)I

    iget-object v0, p0, Laof;->a:Laoa;

    invoke-static {v0}, Laoa;->x(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;

    move-result-object v0

    iget-object v2, p0, Laof;->a:Laoa;

    invoke-static {v2}, Laoa;->w(Laoa;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ProgressBarView;->setProgressWithAnim(I)V

    iget-object v0, p0, Laof;->a:Laoa;

    invoke-static {v0}, Laoa;->v(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;

    move-result-object v0

    iget-object v2, p0, Laof;->a:Laoa;

    invoke-static {v2}, Laoa;->D(Laoa;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/qqpimsecure/uilib/view/ScoreRollBoxView;->setScore(I)V

    move-object v0, v1

    goto/16 :goto_2

    :sswitch_c
    iget-object v0, p0, Laof;->a:Laoa;

    invoke-static {v0}, Laoa;->O(Laoa;)V

    move-object v0, v2

    goto/16 :goto_2

    :sswitch_d
    iget-object v0, p0, Laof;->a:Laoa;

    invoke-static {v0}, Laoa;->c(Laoa;)Lcom/tencent/qqpimsecure/uilib/view/ButtonView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tencent/qqpimsecure/uilib/view/ButtonView;->setClickable(Z)V

    goto/16 :goto_1

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
        0x64 -> :sswitch_c
        0x65 -> :sswitch_d
    .end sparse-switch
.end method

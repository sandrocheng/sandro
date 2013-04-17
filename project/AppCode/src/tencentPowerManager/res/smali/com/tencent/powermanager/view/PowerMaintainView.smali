.class public Lcom/tencent/powermanager/view/PowerMaintainView;
.super Lcom/tencent/powermanager/uilib/view/BaseTabView;

# interfaces
.implements Lcom/tencent/powermanager/service/BatteryEventReceiver$a;


# instance fields
.field private b:Lcom/tencent/powermanager/uilib/CircleProgressButton;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Lcom/tencent/powermanager/uilib/CircleProgressButton;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/tencent/powermanager/uilib/CircleProgressButton;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/tencent/powermanager/uilib/BatteryFlowView;

.field private l:Landroid/widget/LinearLayout;

.field private m:Lcom/tencent/powermanager/uilib/ExpectTimeView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/tencent/powermanager/uilib/view/BaseTabView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->b:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->c:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->d:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->e:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->f:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->g:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->h:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->i:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->j:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->k:Lcom/tencent/powermanager/uilib/BatteryFlowView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->l:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->m:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->n:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->o:Landroid/widget/TextView;

    return-void
.end method

.method private a()V
    .locals 3

    invoke-static {}, Ls$a;->d()Lr;

    move-result-object v0

    invoke-virtual {v0}, Lr;->w()[I

    move-result-object v0

    new-instance v1, Lcom/tencent/powermanager/uilib/BatteryFlowView;

    iget-object v2, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->a:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/tencent/powermanager/uilib/BatteryFlowView;-><init>(Landroid/content/Context;[I)V

    iput-object v1, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->k:Lcom/tencent/powermanager/uilib/BatteryFlowView;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->k:Lcom/tencent/powermanager/uilib/BatteryFlowView;

    invoke-virtual {v1}, Lcom/tencent/powermanager/uilib/BatteryFlowView;->b()I

    move-result v1

    iget-object v2, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->k:Lcom/tencent/powermanager/uilib/BatteryFlowView;

    invoke-virtual {v2}, Lcom/tencent/powermanager/uilib/BatteryFlowView;->a()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v1, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->l:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->k:Lcom/tencent/powermanager/uilib/BatteryFlowView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(Landroid/widget/TextView;I)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(ZI)V
    .locals 5

    const v4, 0x7f06002d

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->a:Landroid/content/Context;

    const v1, 0x7f060033

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->a:Landroid/content/Context;

    const v2, 0x7f060032

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->n:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->o:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/16 v0, 0x5a

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->a:Landroid/content/Context;

    const v1, 0x7f060034

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->a:Landroid/content/Context;

    const v3, 0x7f06002e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->a:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x64

    if-ge p2, v0, :cond_2

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->a:Landroid/content/Context;

    const v1, 0x7f060035

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->a:Landroid/content/Context;

    const v3, 0x7f06002f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->a:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->a:Landroid/content/Context;

    const v1, 0x7f060036

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->a:Landroid/content/Context;

    const v3, 0x7f060030

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->a:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private b(ZI)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x4

    const-wide/16 v2, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    sget-object v0, Lai;->g:Lai;

    if-nez v0, :cond_0

    new-instance v0, Lai;

    invoke-direct {v0}, Lai;-><init>()V

    sput-object v0, Lai;->g:Lai;

    :cond_0
    sget-object v4, Lai;->g:Lai;

    sget-boolean v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    sget v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    const/16 v1, 0x5a

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    sget v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    :goto_0
    iget-wide v0, v4, Lai;->a:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    move-wide v0, v2

    :goto_1
    cmp-long v5, v0, v2

    if-gtz v5, :cond_6

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    iget-wide v0, v4, Lai;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    move-wide v0, v2

    :goto_3
    cmp-long v5, v0, v2

    if-gtz v5, :cond_9

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4
    iget-wide v0, v4, Lai;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    move-wide v0, v2

    :goto_5
    cmp-long v2, v0, v2

    if-gtz v2, :cond_c

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_6
    if-nez p1, :cond_d

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->b:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v7}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setActive(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->e:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v7}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setActive(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->h:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v7}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setActive(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->b:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v7}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setEnableAnimation(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->e:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v7}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setEnableAnimation(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->h:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v7}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setEnableAnimation(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->c:Landroid/widget/TextView;

    invoke-direct {p0, v0, v8}, Lcom/tencent/powermanager/view/PowerMaintainView;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->f:Landroid/widget/TextView;

    invoke-direct {p0, v0, v8}, Lcom/tencent/powermanager/view/PowerMaintainView;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->i:Landroid/widget/TextView;

    invoke-direct {p0, v0, v8}, Lcom/tencent/powermanager/view/PowerMaintainView;->a(Landroid/widget/TextView;I)V

    :goto_7
    return-void

    :cond_3
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    sget v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    const/16 v1, 0x5a

    if-ge v0, v1, :cond_5

    sget-boolean v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    if-eqz v0, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, v4, Lai;->a:J

    sub-long/2addr v0, v5

    goto :goto_1

    :cond_5
    iget-wide v0, v4, Lai;->d:J

    iget-wide v5, v4, Lai;->a:J

    sub-long/2addr v0, v5

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->d:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->a:Landroid/content/Context;

    invoke-static {v6, v0, v1}, La;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_7
    sget v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_8

    sget-boolean v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    if-eqz v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, v4, Lai;->b:J

    sub-long/2addr v0, v5

    goto/16 :goto_3

    :cond_8
    iget-wide v0, v4, Lai;->e:J

    iget-wide v5, v4, Lai;->b:J

    sub-long/2addr v0, v5

    goto/16 :goto_3

    :cond_9
    iget-object v5, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->g:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->a:Landroid/content/Context;

    invoke-static {v6, v0, v1}, La;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    :cond_a
    sget-boolean v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, v4, Lai;->c:J

    sub-long/2addr v0, v4

    goto/16 :goto_5

    :cond_b
    iget-wide v0, v4, Lai;->f:J

    iget-wide v4, v4, Lai;->c:J

    sub-long/2addr v0, v4

    goto/16 :goto_5

    :cond_c
    iget-object v2, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->a:Landroid/content/Context;

    invoke-static {v3, v0, v1}, La;->b(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    :cond_d
    const/16 v0, 0x5a

    if-ge p2, v0, :cond_e

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->b:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v7}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setActive(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->e:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v7}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setActive(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->h:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v7}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setActive(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->e:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v7}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setEnableAnimation(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->h:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v7}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setEnableAnimation(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->b:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v8}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setEnableAnimation(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->c:Landroid/widget/TextView;

    invoke-direct {p0, v0, v10}, Lcom/tencent/powermanager/view/PowerMaintainView;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->f:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/tencent/powermanager/view/PowerMaintainView;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->i:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/tencent/powermanager/view/PowerMaintainView;->a(Landroid/widget/TextView;I)V

    goto/16 :goto_7

    :cond_e
    const/16 v0, 0x64

    if-ge p2, v0, :cond_f

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->b:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v8}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setActive(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->b:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v7}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setEnableAnimation(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->e:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v7}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setActive(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->e:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v8}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setEnableAnimation(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->h:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v7}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setActive(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->h:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v7}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setEnableAnimation(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->c:Landroid/widget/TextView;

    invoke-direct {p0, v0, v8}, Lcom/tencent/powermanager/view/PowerMaintainView;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->f:Landroid/widget/TextView;

    invoke-direct {p0, v0, v10}, Lcom/tencent/powermanager/view/PowerMaintainView;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->i:Landroid/widget/TextView;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/tencent/powermanager/view/PowerMaintainView;->a(Landroid/widget/TextView;I)V

    goto/16 :goto_7

    :cond_f
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->b:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v8}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setActive(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->b:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v7}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setEnableAnimation(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->e:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v8}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setActive(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->e:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v7}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setEnableAnimation(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->c:Landroid/widget/TextView;

    invoke-direct {p0, v0, v8}, Lcom/tencent/powermanager/view/PowerMaintainView;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->f:Landroid/widget/TextView;

    invoke-direct {p0, v0, v8}, Lcom/tencent/powermanager/view/PowerMaintainView;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->i:Landroid/widget/TextView;

    invoke-direct {p0, v0, v10}, Lcom/tencent/powermanager/view/PowerMaintainView;->a(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->h:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v7}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setActive(Z)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->h:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v8}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setEnableAnimation(Z)V

    goto/16 :goto_7
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)V
    .locals 7

    const/16 v6, 0x64

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/tencent/powermanager/view/PowerMaintainView;->a()V

    const-string v0, "status"

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_2

    sget v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    invoke-direct {p0, v3, v0}, Lcom/tencent/powermanager/view/PowerMaintainView;->a(ZI)V

    :cond_0
    :goto_0
    sget-boolean v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    sget v1, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    invoke-direct {p0, v0, v1}, Lcom/tencent/powermanager/view/PowerMaintainView;->b(ZI)V

    sget-boolean v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->m:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->setVisibility(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    invoke-direct {p0, v3, v6}, Lcom/tencent/powermanager/view/PowerMaintainView;->a(ZI)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    if-ne v0, v5, :cond_0

    :cond_4
    invoke-direct {p0, v2, v2}, Lcom/tencent/powermanager/view/PowerMaintainView;->a(ZI)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->m:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    invoke-virtual {v0, v2}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->setVisibility(I)V

    sget v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    if-lt v0, v6, :cond_6

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->m:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    invoke-virtual {v0, v5}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->setViewType(I)V

    :goto_2
    invoke-static {}, La;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->m:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    long-to-int v3, v0

    const v4, 0x36ee80

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->setTextHour(I)V

    iget-object v2, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->m:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    const-wide/32 v3, 0x36ee80

    rem-long/2addr v0, v3

    long-to-int v0, v0

    const v1, 0xea60

    div-int/2addr v0, v1

    invoke-virtual {v2, v0}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->setTextMin(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->m:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    invoke-virtual {v0, v4}, Lcom/tencent/powermanager/uilib/ExpectTimeView;->setViewType(I)V

    goto :goto_2
.end method

.method public final d()V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/tencent/powermanager/uilib/view/BaseTabView;->d()V

    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/view/PowerMaintainView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/CircleProgressButton;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->b:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    const v0, 0x7f08008d

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/view/PowerMaintainView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/CircleProgressButton;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->e:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    const v0, 0x7f080090

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/view/PowerMaintainView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/CircleProgressButton;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->h:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->b:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v3}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setButtonType(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->e:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v2}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setButtonType(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->h:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setButtonType(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->b:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v1}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setAnimSpeedType(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->e:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v2}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setAnimSpeedType(I)V

    iget-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->h:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    invoke-virtual {v0, v3}, Lcom/tencent/powermanager/uilib/CircleProgressButton;->setAnimSpeedType(I)V

    const v0, 0x7f08008b

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/view/PowerMaintainView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->c:Landroid/widget/TextView;

    const v0, 0x7f08008e

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/view/PowerMaintainView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->f:Landroid/widget/TextView;

    const v0, 0x7f080091

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/view/PowerMaintainView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->i:Landroid/widget/TextView;

    const v0, 0x7f08008c

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/view/PowerMaintainView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->d:Landroid/widget/TextView;

    const v0, 0x7f08008f

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/view/PowerMaintainView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->g:Landroid/widget/TextView;

    const v0, 0x7f080092

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/view/PowerMaintainView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->j:Landroid/widget/TextView;

    const v0, 0x7f080096

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/view/PowerMaintainView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->n:Landroid/widget/TextView;

    const v0, 0x7f080094

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/view/PowerMaintainView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->l:Landroid/widget/LinearLayout;

    const v0, 0x7f080095

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/view/PowerMaintainView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->o:Landroid/widget/TextView;

    const v0, 0x7f080023

    invoke-virtual {p0, v0}, Lcom/tencent/powermanager/view/PowerMaintainView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/powermanager/uilib/ExpectTimeView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->m:Lcom/tencent/powermanager/uilib/ExpectTimeView;

    invoke-direct {p0}, Lcom/tencent/powermanager/view/PowerMaintainView;->a()V

    return-void
.end method

.method public final e()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/tencent/powermanager/uilib/view/BaseTabView;->e()V

    sget-boolean v0, Lcom/tencent/powermanager/service/BatteryEventReceiver;->c:Z

    sget v1, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a:I

    invoke-direct {p0, v0, v1}, Lcom/tencent/powermanager/view/PowerMaintainView;->b(ZI)V

    invoke-direct {p0, v2, v2}, Lcom/tencent/powermanager/view/PowerMaintainView;->a(ZI)V

    invoke-static {p0}, Lcom/tencent/powermanager/service/BatteryEventReceiver;->a(Lcom/tencent/powermanager/service/BatteryEventReceiver$a;)V

    return-void
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/tencent/powermanager/uilib/view/BaseTabView;->f()V

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->b:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->c:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->e:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->f:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->h:Lcom/tencent/powermanager/uilib/CircleProgressButton;

    iput-object v0, p0, Lcom/tencent/powermanager/view/PowerMaintainView;->i:Landroid/widget/TextView;

    return-void
.end method

.method public final g()I
    .locals 1

    const v0, 0x7f03002c

    return v0
.end method

.method public final h()V
    .locals 0

    invoke-static {p0}, Lcom/tencent/powermanager/service/BatteryEventReceiver;->b(Lcom/tencent/powermanager/service/BatteryEventReceiver$a;)V

    return-void
.end method

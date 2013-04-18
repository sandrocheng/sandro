.class final Lcom/ijinshan/kinghelper/firewall/q;
.super Landroid/widget/ResourceCursorAdapter;
.source "FirewallCallLogListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

.field private b:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 463
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/q;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    .line 464
    const v0, 0x7f0300a8

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 461
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/q;->b:Landroid/util/SparseBooleanArray;

    .line 465
    return-void
.end method

.method static synthetic a(Lcom/ijinshan/kinghelper/firewall/q;)Landroid/util/SparseBooleanArray;
    .locals 1
    .parameter

    .prologue
    .line 458
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/q;->b:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method private d()Z
    .locals 2

    .prologue
    .line 630
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/q;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/q;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()V
    .locals 4

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/q;->getCount()I

    move-result v0

    .line 641
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 642
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/q;->b:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 641
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 644
    :cond_0
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/q;->notifyDataSetChanged()V

    .line 645
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/q;->notifyDataSetInvalidated()V

    .line 646
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 610
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/q;->b:Landroid/util/SparseBooleanArray;

    .line 611
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 613
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 615
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 616
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 617
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 620
    :cond_1
    return-object v2
.end method

.method public final a(I)V
    .locals 2
    .parameter

    .prologue
    .line 634
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/q;->b:Landroid/util/SparseBooleanArray;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/q;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 635
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/q;->notifyDataSetChanged()V

    .line 636
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/q;->notifyDataSetInvalidated()V

    .line 637
    return-void

    .line 634
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/q;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 625
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/q;->notifyDataSetChanged()V

    .line 626
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/q;->notifyDataSetInvalidated()V

    .line 627
    return-void
.end method

.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 469
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/p;

    .line 472
    const-string v1, "firewall_log_description"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-static {p2, v1}, Lcom/ijinshan/kinghelper/firewall/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 475
    const-string v2, "number"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 477
    const-string v3, "date"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 479
    const-string v5, "_id"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 482
    invoke-static {v2}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ijinshan/kinghelper/firewall/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 484
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 485
    invoke-static {p2}, Lcom/jxphone/mosecurity/d/a;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/a;

    move-result-object v6

    invoke-static {v2}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/ijinshan/kinghelper/firewall/q;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    const v9, 0x7f0b0186

    invoke-virtual {v8, v9}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/jxphone/mosecurity/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/ijinshan/kinghelper/firewall/p;->h:Ljava/lang/CharSequence;

    .line 493
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 494
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/ijinshan/kinghelper/firewall/p;->h:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 509
    :goto_1
    iget-object v7, v0, Lcom/ijinshan/kinghelper/firewall/p;->a:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v6, v0, Lcom/ijinshan/kinghelper/firewall/p;->b:Landroid/widget/TextView;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v6, v0, Lcom/ijinshan/kinghelper/firewall/p;->c:Landroid/widget/TextView;

    invoke-static {v3, v4}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->a(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v6, p0, Lcom/ijinshan/kinghelper/firewall/q;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-static {v6}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->a(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 515
    iget-object v6, v0, Lcom/ijinshan/kinghelper/firewall/p;->c:Landroid/widget/TextView;

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 520
    :goto_2
    iput-object v2, v0, Lcom/ijinshan/kinghelper/firewall/p;->g:Ljava/lang/String;

    .line 521
    iput-wide v3, v0, Lcom/ijinshan/kinghelper/firewall/p;->j:J

    .line 522
    iput-object v1, v0, Lcom/ijinshan/kinghelper/firewall/p;->i:Ljava/lang/String;

    .line 523
    iput v5, v0, Lcom/ijinshan/kinghelper/firewall/p;->k:I

    .line 524
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    iput v1, v0, Lcom/ijinshan/kinghelper/firewall/p;->l:I

    .line 531
    iget-object v1, v0, Lcom/ijinshan/kinghelper/firewall/p;->e:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 532
    iget-object v1, v0, Lcom/ijinshan/kinghelper/firewall/p;->e:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/q;->b:Landroid/util/SparseBooleanArray;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 533
    iget-object v1, v0, Lcom/ijinshan/kinghelper/firewall/p;->e:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 535
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/q;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->a(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 536
    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/p;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v10}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 540
    :goto_3
    return-void

    .line 489
    :cond_0
    iput-object v6, v0, Lcom/ijinshan/kinghelper/firewall/p;->h:Ljava/lang/CharSequence;

    goto :goto_0

    .line 496
    :cond_1
    invoke-static {p2, v2}, Lcom/ijinshan/kinghelper/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 498
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 499
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/ijinshan/kinghelper/firewall/p;->h:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 501
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Lcom/ijinshan/kinghelper/firewall/p;->h:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 517
    :cond_3
    iget-object v6, v0, Lcom/ijinshan/kinghelper/firewall/p;->c:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 538
    :cond_4
    iget-object v0, v0, Lcom/ijinshan/kinghelper/firewall/p;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_3
.end method

.method public final c()[I
    .locals 6

    .prologue
    .line 649
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/q;->a()Ljava/util/ArrayList;

    move-result-object v0

    .line 651
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/q;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 653
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 654
    new-array v3, v2, [I

    .line 655
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 656
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 657
    invoke-interface {v1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 658
    const-string v5, "_id"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    aput v5, v3, v4

    .line 655
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 661
    :cond_0
    return-object v3
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 544
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 545
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/p;

    invoke-direct {v1}, Lcom/ijinshan/kinghelper/firewall/p;-><init>()V

    .line 547
    const v2, 0x7f08027b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/ijinshan/kinghelper/firewall/p;->a:Landroid/widget/TextView;

    .line 549
    const v2, 0x7f08027c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/ijinshan/kinghelper/firewall/p;->b:Landroid/widget/TextView;

    .line 551
    const v2, 0x7f08027e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/ijinshan/kinghelper/firewall/p;->c:Landroid/widget/TextView;

    .line 553
    const v2, 0x7f08027f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    iput-object p0, v1, Lcom/ijinshan/kinghelper/firewall/p;->e:Landroid/widget/CheckBox;

    .line 556
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 557
    return-object v0
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 592
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/p;

    .line 595
    if-eqz p2, :cond_2

    .line 596
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/q;->b:Landroid/util/SparseBooleanArray;

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/p;->l:I

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 597
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/q;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->b(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)Lcom/ijinshan/kinghelper/firewall/q;

    move-result-object v0

    iget-object v1, v0, Lcom/ijinshan/kinghelper/firewall/q;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/ijinshan/kinghelper/firewall/q;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v1, v0, :cond_1

    move v0, v2

    :goto_0
    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/q;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->c(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 607
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v3

    .line 597
    goto :goto_0

    .line 601
    :cond_2
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/q;->b:Landroid/util/SparseBooleanArray;

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/p;->l:I

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 602
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/q;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->c(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/q;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->c(Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 562
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/p;

    .line 565
    new-instance v1, Lcom/keniu/security/util/aq;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/q;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    invoke-direct {v1, v2, v6}, Lcom/keniu/security/util/aq;-><init>(Landroid/content/Context;B)V

    .line 567
    const v2, 0x7f0b00bf

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->a(I)Lcom/keniu/security/util/aq;

    .line 568
    iget-object v2, p0, Lcom/ijinshan/kinghelper/firewall/q;->a:Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;

    const v3, 0x7f0b00c0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, ""

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Lcom/ijinshan/kinghelper/firewall/FirewallCallLogListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/keniu/security/util/aq;->b(Ljava/lang/CharSequence;)Lcom/keniu/security/util/aq;

    .line 570
    const v2, 0x7f0b00d6

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/util/aq;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 571
    const v2, 0x7f0b00d5

    new-instance v3, Lcom/ijinshan/kinghelper/firewall/r;

    invoke-direct {v3, p0, v0}, Lcom/ijinshan/kinghelper/firewall/r;-><init>(Lcom/ijinshan/kinghelper/firewall/q;Lcom/ijinshan/kinghelper/firewall/p;)V

    invoke-virtual {v1, v2, v3}, Lcom/keniu/security/util/aq;->a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/keniu/security/util/aq;

    .line 586
    invoke-virtual {v1}, Lcom/keniu/security/util/aq;->c()Lcom/keniu/security/util/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/ap;->show()V

    .line 587
    return-void
.end method

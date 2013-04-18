.class final Lcom/ijinshan/kinghelper/firewall/bw;
.super Landroid/widget/ResourceCursorAdapter;
.source "FirewallSmsLogListActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

.field private b:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 694
    iput-object p1, p0, Lcom/ijinshan/kinghelper/firewall/bw;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    .line 695
    const v0, 0x7f0300a9

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 692
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bw;->b:Landroid/util/SparseBooleanArray;

    .line 696
    iget-object v0, p0, Lcom/ijinshan/kinghelper/firewall/bw;->b:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 697
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/bw;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 701
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/firewall/bw;->notifyDataSetChanged()V

    .line 702
    return-void
.end method

.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter
    .parameter
    .parameter

    .prologue
    .line 706
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ijinshan/kinghelper/firewall/bv;

    .line 709
    const-string v0, "logtype"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    .line 711
    const-string v2, "address"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 713
    const-string v3, "body"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 715
    const-string v4, "firewall_log_time"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 717
    const-string v6, "_id"

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 719
    const-string v7, "read"

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 723
    invoke-static {v2}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ijinshan/kinghelper/firewall/a/e;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 725
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 726
    invoke-static {p2}, Lcom/jxphone/mosecurity/d/a;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/a;

    move-result-object v8

    invoke-static {v2}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/ijinshan/kinghelper/firewall/bw;->a:Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;

    const v11, 0x7f0b0186

    invoke-virtual {v10, v11}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/jxphone/mosecurity/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/ijinshan/kinghelper/firewall/bv;->g:Ljava/lang/String;

    .line 732
    :goto_0
    invoke-static {p2, v2}, Lcom/ijinshan/kinghelper/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 733
    sget v9, Lcom/ijinshan/kinghelper/firewall/a/a;->i:I

    int-to-long v9, v9

    cmp-long v9, v0, v9

    if-nez v9, :cond_1

    .line 734
    iget-object v8, p1, Lcom/ijinshan/kinghelper/firewall/bv;->a:Landroid/widget/TextView;

    const v9, 0x7f0b020e

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    .line 744
    :goto_1
    sget v8, Lcom/ijinshan/kinghelper/firewall/a/a;->h:I

    int-to-long v8, v8

    cmp-long v0, v0, v8

    if-nez v0, :cond_4

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "firewall_log_description"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0b020d

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 750
    :goto_2
    iget-object v1, p1, Lcom/ijinshan/kinghelper/firewall/bv;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 752
    if-nez v7, :cond_3

    .line 753
    iget-object v1, p1, Lcom/ijinshan/kinghelper/firewall/bv;->c:Landroid/widget/ImageView;

    const v3, 0x7f0201a8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 758
    :goto_3
    iget-object v1, p1, Lcom/ijinshan/kinghelper/firewall/bv;->d:Landroid/widget/TextView;

    invoke-static {v4, v5}, Lcom/ijinshan/kinghelper/firewall/FirewallSmsLogListActivity;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 760
    iget-object v1, p1, Lcom/ijinshan/kinghelper/firewall/bv;->d:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 762
    iput-object v2, p1, Lcom/ijinshan/kinghelper/firewall/bv;->f:Ljava/lang/String;

    .line 763
    iput-object v0, p1, Lcom/ijinshan/kinghelper/firewall/bv;->h:Ljava/lang/String;

    .line 764
    iput-wide v4, p1, Lcom/ijinshan/kinghelper/firewall/bv;->i:J

    .line 765
    iput v6, p1, Lcom/ijinshan/kinghelper/firewall/bv;->j:I

    .line 766
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iput v0, p1, Lcom/ijinshan/kinghelper/firewall/bv;->k:I

    .line 767
    iget-object v0, p1, Lcom/ijinshan/kinghelper/firewall/bv;->e:Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;

    invoke-virtual {v0, p1}, Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;->setTag(Ljava/lang/Object;)V

    .line 768
    iget-object v0, p1, Lcom/ijinshan/kinghelper/firewall/bv;->e:Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;

    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/bw;->b:Landroid/util/SparseBooleanArray;

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;->setChecked(Z)V

    .line 769
    iget-object v0, p1, Lcom/ijinshan/kinghelper/firewall/bv;->e:Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;

    invoke-virtual {v0, p0}, Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 770
    iget-object v0, p1, Lcom/ijinshan/kinghelper/firewall/bv;->e:Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;->setVisibility(I)V

    .line 771
    return-void

    .line 730
    :cond_0
    iput-object v8, p1, Lcom/ijinshan/kinghelper/firewall/bv;->g:Ljava/lang/String;

    goto/16 :goto_0

    .line 736
    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 737
    iget-object v9, p1, Lcom/ijinshan/kinghelper/firewall/bv;->a:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " ("

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p1, Lcom/ijinshan/kinghelper/firewall/bv;->g:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ")"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 740
    :cond_2
    iget-object v8, p1, Lcom/ijinshan/kinghelper/firewall/bv;->a:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/ijinshan/kinghelper/firewall/bv;->g:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 755
    :cond_3
    iget-object v1, p1, Lcom/ijinshan/kinghelper/firewall/bv;->c:Landroid/widget/ImageView;

    const v3, 0x7f0201a3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_4
    move-object v0, v3

    goto/16 :goto_2
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 775
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 776
    new-instance v1, Lcom/ijinshan/kinghelper/firewall/bv;

    invoke-direct {v1}, Lcom/ijinshan/kinghelper/firewall/bv;-><init>()V

    .line 778
    const v2, 0x7f08027b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/ijinshan/kinghelper/firewall/bv;->a:Landroid/widget/TextView;

    .line 780
    const v2, 0x7f08027c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/ijinshan/kinghelper/firewall/bv;->b:Landroid/widget/TextView;

    .line 782
    const v2, 0x7f080280

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    iput-object p0, v1, Lcom/ijinshan/kinghelper/firewall/bv;->c:Landroid/widget/ImageView;

    .line 784
    const v2, 0x7f08027e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/ijinshan/kinghelper/firewall/bv;->d:Landroid/widget/TextView;

    .line 786
    const v2, 0x7f08027f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;

    iput-object p0, v1, Lcom/ijinshan/kinghelper/firewall/bv;->e:Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;

    .line 789
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 790
    return-object v0
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 796
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/firewall/bv;

    .line 799
    if-eqz p2, :cond_0

    .line 800
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/bw;->b:Landroid/util/SparseBooleanArray;

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/bv;->k:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 804
    :goto_0
    return-void

    .line 802
    :cond_0
    iget-object v1, p0, Lcom/ijinshan/kinghelper/firewall/bw;->b:Landroid/util/SparseBooleanArray;

    iget v0, v0, Lcom/ijinshan/kinghelper/firewall/bv;->k:I

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_0
.end method

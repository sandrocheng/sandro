.class final Lcom/jxphone/mosecurity/activity/friend/t;
.super Ljava/lang/Object;
.source "FriendCallLogActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 683
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/t;->a:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0b0511

    const v5, 0x7f0b0510

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 686
    const v0, 0x7f080319

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 687
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/t;->a:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->e(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;)V

    .line 766
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    const v0, 0x7f080318

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 689
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/t;->a:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->b(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;)Lcom/jxphone/mosecurity/activity/friend/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/activity/friend/z;->getCount()I

    move-result v0

    move v1, v3

    .line 690
    :goto_1
    if-ge v1, v0, :cond_2

    .line 691
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/t;->a:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    invoke-static {v2}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->b(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;)Lcom/jxphone/mosecurity/activity/friend/z;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jxphone/mosecurity/activity/friend/z;->a(I)Lcom/jxphone/mosecurity/activity/friend/b;

    move-result-object v2

    .line 692
    iput-boolean v4, v2, Lcom/jxphone/mosecurity/activity/friend/b;->a:Z

    .line 690
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 694
    :cond_2
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/t;->a:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->b(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;)Lcom/jxphone/mosecurity/activity/friend/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/activity/friend/z;->notifyDataSetChanged()V

    .line 695
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/t;->a:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->b(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;)Lcom/jxphone/mosecurity/activity/friend/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/activity/friend/z;->notifyDataSetInvalidated()V

    goto :goto_0

    .line 696
    :cond_3
    const v0, 0x7f080317

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 697
    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 699
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/t;->a:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    invoke-static {v1}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->b(Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;)Lcom/jxphone/mosecurity/activity/friend/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/activity/friend/z;->a()Ljava/util/List;

    move-result-object v1

    .line 702
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_4

    .line 703
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/t;->a:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    const v1, 0x7f0b0514

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 709
    :cond_4
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/t;->a:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    invoke-virtual {v2, v5}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 711
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/t;->a:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 713
    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 714
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/t;->a:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    invoke-virtual {v2, v5}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 715
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 716
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 717
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 718
    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/u;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/friend/u;-><init>(Lcom/jxphone/mosecurity/activity/friend/t;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 724
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 726
    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/v;

    invoke-direct {v2, p0, v1, v0}, Lcom/jxphone/mosecurity/activity/friend/v;-><init>(Lcom/jxphone/mosecurity/activity/friend/t;Ljava/util/List;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/activity/friend/v;->start()V

    goto/16 :goto_0

    .line 736
    :cond_5
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/t;->a:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    invoke-virtual {v2, v6}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 739
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/t;->a:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 741
    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 742
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/t;->a:Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;

    invoke-virtual {v2, v6}, Lcom/jxphone/mosecurity/activity/friend/FriendCallLogActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 743
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 744
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 745
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 746
    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/w;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/friend/w;-><init>(Lcom/jxphone/mosecurity/activity/friend/t;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 752
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 754
    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/x;

    invoke-direct {v2, p0, v1, v0}, Lcom/jxphone/mosecurity/activity/friend/x;-><init>(Lcom/jxphone/mosecurity/activity/friend/t;Ljava/util/List;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/activity/friend/x;->start()V

    goto/16 :goto_0
.end method

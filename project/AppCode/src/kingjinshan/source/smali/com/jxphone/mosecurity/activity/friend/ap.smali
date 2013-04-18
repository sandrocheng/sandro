.class final Lcom/jxphone/mosecurity/activity/friend/ap;
.super Ljava/lang/Object;
.source "FriendSmsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 658
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/friend/ap;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

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

    .line 661
    const v0, 0x7f080319

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 662
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ap;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->e(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)V

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    const v0, 0x7f080318

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 664
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ap;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->b(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)Lcom/jxphone/mosecurity/activity/friend/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/activity/friend/au;->getCount()I

    move-result v0

    move v1, v3

    .line 665
    :goto_1
    if-ge v1, v0, :cond_2

    .line 666
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/ap;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    invoke-static {v2}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->b(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)Lcom/jxphone/mosecurity/activity/friend/au;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/jxphone/mosecurity/activity/friend/au;->a(I)Lcom/jxphone/mosecurity/activity/friend/b;

    move-result-object v2

    .line 667
    iput-boolean v4, v2, Lcom/jxphone/mosecurity/activity/friend/b;->a:Z

    .line 665
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 669
    :cond_2
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ap;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->b(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)Lcom/jxphone/mosecurity/activity/friend/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/activity/friend/au;->notifyDataSetChanged()V

    .line 670
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ap;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    invoke-static {v0}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->b(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)Lcom/jxphone/mosecurity/activity/friend/au;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/activity/friend/au;->notifyDataSetInvalidated()V

    goto :goto_0

    .line 671
    :cond_3
    const v0, 0x7f080317

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 672
    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 674
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/friend/ap;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    invoke-static {v1}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->b(Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;)Lcom/jxphone/mosecurity/activity/friend/au;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/activity/friend/au;->a()Ljava/util/List;

    move-result-object v1

    .line 676
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_4

    .line 677
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/friend/ap;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    const v1, 0x7f0b0514

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 683
    :cond_4
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/ap;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    invoke-virtual {v2, v5}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 685
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/ap;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 687
    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 688
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/ap;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    invoke-virtual {v2, v5}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 689
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 690
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 691
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 692
    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/aq;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/friend/aq;-><init>(Lcom/jxphone/mosecurity/activity/friend/ap;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 698
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 700
    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/ar;

    invoke-direct {v2, p0, v1, v0}, Lcom/jxphone/mosecurity/activity/friend/ar;-><init>(Lcom/jxphone/mosecurity/activity/friend/ap;Ljava/util/List;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/activity/friend/ar;->start()V

    goto/16 :goto_0

    .line 710
    :cond_5
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/ap;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    invoke-virtual {v2, v6}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/ap;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    invoke-direct {v0, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 715
    invoke-virtual {v0, v6}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 716
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/friend/ap;->a:Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;

    invoke-virtual {v2, v6}, Lcom/jxphone/mosecurity/activity/friend/FriendSmsActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 717
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 718
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 719
    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 720
    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/as;

    invoke-direct {v2, p0}, Lcom/jxphone/mosecurity/activity/friend/as;-><init>(Lcom/jxphone/mosecurity/activity/friend/ap;)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 726
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 728
    new-instance v2, Lcom/jxphone/mosecurity/activity/friend/at;

    invoke-direct {v2, p0, v1, v0}, Lcom/jxphone/mosecurity/activity/friend/at;-><init>(Lcom/jxphone/mosecurity/activity/friend/ap;Ljava/util/List;Landroid/app/ProgressDialog;)V

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/activity/friend/at;->start()V

    goto/16 :goto_0
.end method

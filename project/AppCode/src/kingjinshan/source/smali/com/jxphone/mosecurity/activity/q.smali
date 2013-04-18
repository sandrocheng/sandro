.class final Lcom/jxphone/mosecurity/activity/q;
.super Ljava/lang/Object;
.source "BaseContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/jxphone/mosecurity/d/k;

.field final synthetic c:Z

.field final synthetic d:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/jxphone/mosecurity/d/k;ZLandroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 724
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/q;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/jxphone/mosecurity/activity/q;->b:Lcom/jxphone/mosecurity/d/k;

    iput-boolean p3, p0, Lcom/jxphone/mosecurity/activity/q;->c:Z

    iput-object p4, p0, Lcom/jxphone/mosecurity/activity/q;->d:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const v7, 0x7f0b0612

    const/4 v6, 0x0

    .line 728
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/q;->a:Landroid/view/View;

    const v1, 0x7f080350

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 730
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/q;->a:Landroid/view/View;

    const v2, 0x7f080352

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 732
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/q;->a:Landroid/view/View;

    const v3, 0x7f080354

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 735
    iget-object v3, p0, Lcom/jxphone/mosecurity/activity/q;->b:Lcom/jxphone/mosecurity/d/k;

    iget-boolean v4, p0, Lcom/jxphone/mosecurity/activity/q;->c:Z

    invoke-virtual {v3, v4}, Lcom/jxphone/mosecurity/d/k;->a(Z)Z

    move-result v3

    .line 738
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 739
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    .line 741
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 742
    const v0, 0x7f0b060b

    move v1, v0

    move v0, v6

    .line 770
    :goto_0
    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/q;->d:Landroid/app/Activity;

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 773
    if-eqz v0, :cond_0

    .line 774
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 776
    :cond_0
    return-void

    .line 744
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 745
    const v0, 0x7f0b060d

    move v1, v0

    move v0, v6

    .line 746
    goto :goto_0

    .line 747
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 748
    const v0, 0x7f0b060e

    move v1, v0

    move v0, v6

    .line 749
    goto :goto_0

    .line 750
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move v0, v6

    move v1, v7

    .line 753
    goto :goto_0

    .line 754
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ge v4, v5, :cond_5

    .line 755
    const v0, 0x7f0b060f

    move v1, v0

    move v0, v6

    .line 756
    goto :goto_0

    .line 757
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xc

    if-le v4, v5, :cond_6

    .line 758
    const v0, 0x7f0b0610

    move v1, v0

    move v0, v6

    .line 759
    goto :goto_0

    .line 761
    :cond_6
    iget-object v4, p0, Lcom/jxphone/mosecurity/activity/q;->b:Lcom/jxphone/mosecurity/d/k;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-boolean v5, p0, Lcom/jxphone/mosecurity/activity/q;->c:Z

    invoke-virtual {v4, v0, v1, v2, v5}, Lcom/jxphone/mosecurity/d/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 765
    if-eqz v0, :cond_7

    const v1, 0x7f0b0604

    goto/16 :goto_0

    :cond_7
    if-eqz v3, :cond_8

    const v1, 0x7f0b060c

    goto/16 :goto_0

    :cond_8
    move v1, v7

    goto/16 :goto_0
.end method

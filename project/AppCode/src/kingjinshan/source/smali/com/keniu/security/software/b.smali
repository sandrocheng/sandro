.class final Lcom/keniu/security/software/b;
.super Landroid/os/Handler;
.source "APKManagerActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/software/APKManagerActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/software/APKManagerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 667
    iput-object p1, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v1, 0x8

    .line 671
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 725
    :goto_0
    return-void

    .line 673
    :pswitch_0
    new-instance v0, Lcom/keniu/security/software/n;

    iget-object v1, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    iget-object v2, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v2}, Lcom/keniu/security/software/APKManagerActivity;->p(Lcom/keniu/security/software/APKManagerActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/keniu/security/software/n;-><init>(Lcom/keniu/security/software/APKManagerActivity;Landroid/os/Handler;)V

    invoke-virtual {v0}, Lcom/keniu/security/software/n;->start()V

    goto :goto_0

    .line 677
    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->q(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 678
    iget-object v0, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->o(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 679
    iget-object v0, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 680
    iget-object v0, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->r(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 681
    iget-object v0, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->d(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 682
    iget-object v0, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->s(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->t(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b057d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 684
    iget-object v0, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->t(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 687
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 688
    iget-object v1, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v1}, Lcom/keniu/security/software/APKManagerActivity;->s(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    const v3, 0x7f0b057f

    invoke-virtual {v2, v3}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const-string v4, "path"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getCharArray(Ljava/lang/String;)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 694
    :pswitch_3
    iget-object v0, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->q(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->o(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 696
    iget-object v0, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 697
    iget-object v0, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->r(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->d(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 699
    iget-object v0, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->s(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 700
    iget-object v0, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->t(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b057e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 701
    iget-object v0, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->t(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 704
    :pswitch_4
    iget-object v0, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->q(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 705
    iget-object v0, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->r(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->d(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->t(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->s(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 709
    iget-object v0, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->o(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    const v2, 0x7f0b0578

    invoke-virtual {v1, v2}, Lcom/keniu/security/software/APKManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v3}, Lcom/keniu/security/software/APKManagerActivity;->j(Lcom/keniu/security/software/APKManagerActivity;)I

    move-result v3

    iget-object v4, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v4}, Lcom/keniu/security/software/APKManagerActivity;->k(Lcom/keniu/security/software/APKManagerActivity;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v3}, Lcom/keniu/security/software/APKManagerActivity;->i(Lcom/keniu/security/software/APKManagerActivity;)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/keniu/security/util/ax;->f(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    iget-object v0, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v1}, Lcom/keniu/security/software/APKManagerActivity;->f(Lcom/keniu/security/software/APKManagerActivity;)Lcom/keniu/security/software/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 723
    iget-object v0, p0, Lcom/keniu/security/software/b;->a:Lcom/keniu/security/software/APKManagerActivity;

    invoke-static {v0}, Lcom/keniu/security/software/APKManagerActivity;->a(Lcom/keniu/security/software/APKManagerActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->invalidateViews()V

    goto/16 :goto_0

    .line 671
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

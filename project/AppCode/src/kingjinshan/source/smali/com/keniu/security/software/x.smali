.class final Lcom/keniu/security/software/x;
.super Ljava/lang/Object;
.source "SoftwareManager2.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/software/SoftwareManager2;


# direct methods
.method constructor <init>(Lcom/keniu/security/software/SoftwareManager2;)V
    .locals 0
    .parameter

    .prologue
    .line 544
    iput-object p1, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x2

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 548
    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0, p3}, Lcom/keniu/security/software/SoftwareManager2;->a(Lcom/keniu/security/software/SoftwareManager2;I)I

    .line 549
    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->b(Lcom/keniu/security/software/SoftwareManager2;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v1}, Lcom/keniu/security/software/SoftwareManager2;->d(Lcom/keniu/security/software/SoftwareManager2;)Lcom/keniu/security/software/af;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 550
    packed-switch p3, :pswitch_data_0

    .line 626
    :cond_0
    :goto_0
    return-void

    .line 552
    :pswitch_0
    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->p(Lcom/keniu/security/software/SoftwareManager2;)Lcom/keniu/security/software/aj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->q(Lcom/keniu/security/software/SoftwareManager2;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->r(Lcom/keniu/security/software/SoftwareManager2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 556
    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->s(Lcom/keniu/security/software/SoftwareManager2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 557
    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->s(Lcom/keniu/security/software/SoftwareManager2;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b055e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 558
    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->b(Lcom/keniu/security/software/SoftwareManager2;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v1}, Lcom/keniu/security/software/SoftwareManager2;->p(Lcom/keniu/security/software/SoftwareManager2;)Lcom/keniu/security/software/aj;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 561
    :pswitch_1
    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->t(Lcom/keniu/security/software/SoftwareManager2;)Lcom/keniu/security/software/aj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->u(Lcom/keniu/security/software/SoftwareManager2;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->r(Lcom/keniu/security/software/SoftwareManager2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->s(Lcom/keniu/security/software/SoftwareManager2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 566
    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->s(Lcom/keniu/security/software/SoftwareManager2;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b055f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 567
    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->b(Lcom/keniu/security/software/SoftwareManager2;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v1}, Lcom/keniu/security/software/SoftwareManager2;->t(Lcom/keniu/security/software/SoftwareManager2;)Lcom/keniu/security/software/aj;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 569
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    invoke-static {}, Lcom/keniu/security/malware/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 571
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 575
    const-string v1, "hidesoftwareremoverootdialog"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-virtual {v0, v5}, Lcom/keniu/security/software/SoftwareManager2;->showDialog(I)V

    goto/16 :goto_0

    .line 580
    :cond_1
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->c()V

    goto/16 :goto_0

    .line 587
    :pswitch_2
    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->v(Lcom/keniu/security/software/SoftwareManager2;)Lcom/keniu/security/software/aj;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->w(Lcom/keniu/security/software/SoftwareManager2;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->r(Lcom/keniu/security/software/SoftwareManager2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 591
    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->s(Lcom/keniu/security/software/SoftwareManager2;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 592
    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->s(Lcom/keniu/security/software/SoftwareManager2;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b0560

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 593
    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->b(Lcom/keniu/security/software/SoftwareManager2;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v1}, Lcom/keniu/security/software/SoftwareManager2;->v(Lcom/keniu/security/software/SoftwareManager2;)Lcom/keniu/security/software/aj;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 594
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    invoke-static {}, Lcom/keniu/security/malware/bz;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 596
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/ijinshan/kpref/t;->b(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 600
    const-string v1, "hidesoftwareremoverootdialog"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 602
    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-virtual {v0, v5}, Lcom/keniu/security/software/SoftwareManager2;->showDialog(I)V

    goto/16 :goto_0

    .line 605
    :cond_2
    invoke-static {}, Lcom/keniu/security/malware/bz;->a()Lcom/keniu/security/malware/bz;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/malware/bz;->c()V

    goto/16 :goto_0

    .line 616
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->c(Lcom/keniu/security/software/SoftwareManager2;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v0}, Lcom/keniu/security/software/SoftwareManager2;->b(Lcom/keniu/security/software/SoftwareManager2;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-static {v1}, Lcom/keniu/security/software/SoftwareManager2;->c(Lcom/keniu/security/software/SoftwareManager2;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/software/o;

    .line 621
    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-virtual {v0, v4}, Lcom/keniu/security/software/SoftwareManager2;->removeDialog(I)V

    .line 625
    iget-object v0, p0, Lcom/keniu/security/software/x;->a:Lcom/keniu/security/software/SoftwareManager2;

    invoke-virtual {v0, v4}, Lcom/keniu/security/software/SoftwareManager2;->showDialog(I)V

    goto/16 :goto_0

    .line 550
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

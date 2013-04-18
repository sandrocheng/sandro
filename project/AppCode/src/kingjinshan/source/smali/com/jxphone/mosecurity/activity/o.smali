.class final Lcom/jxphone/mosecurity/activity/o;
.super Ljava/lang/Object;
.source "BaseContactActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Landroid/widget/EditText;

.field final synthetic c:Landroid/content/Context;

.field final synthetic d:Lcom/jxphone/mosecurity/c/c;

.field final synthetic e:Lcom/jxphone/mosecurity/logic/a/d;

.field final synthetic f:Landroid/widget/CheckBox;

.field final synthetic g:Lcom/jxphone/mosecurity/activity/r;

.field final synthetic h:Lcom/jxphone/mosecurity/activity/BaseContactActivity;


# direct methods
.method constructor <init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/content/Context;Lcom/jxphone/mosecurity/c/c;Lcom/jxphone/mosecurity/logic/a/d;Landroid/widget/CheckBox;Lcom/jxphone/mosecurity/activity/r;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 569
    iput-object p1, p0, Lcom/jxphone/mosecurity/activity/o;->h:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    iput-object p2, p0, Lcom/jxphone/mosecurity/activity/o;->a:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/jxphone/mosecurity/activity/o;->b:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/jxphone/mosecurity/activity/o;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/jxphone/mosecurity/activity/o;->d:Lcom/jxphone/mosecurity/c/c;

    iput-object p6, p0, Lcom/jxphone/mosecurity/activity/o;->e:Lcom/jxphone/mosecurity/logic/a/d;

    iput-object p7, p0, Lcom/jxphone/mosecurity/activity/o;->f:Landroid/widget/CheckBox;

    iput-object p8, p0, Lcom/jxphone/mosecurity/activity/o;->g:Lcom/jxphone/mosecurity/activity/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v8, -0x1

    .line 572
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/o;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 573
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/o;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 574
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 575
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/o;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/o;->c:Landroid/content/Context;

    const v2, 0x7f0b0678

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 581
    :cond_1
    new-instance v2, Lcom/jxphone/mosecurity/c/b;

    invoke-direct {v2}, Lcom/jxphone/mosecurity/c/b;-><init>()V

    .line 582
    invoke-virtual {v2, v0}, Lcom/jxphone/mosecurity/c/b;->a(Ljava/lang/String;)V

    .line 583
    invoke-virtual {v2, v1}, Lcom/jxphone/mosecurity/c/b;->b(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/o;->d:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v2, v0}, Lcom/jxphone/mosecurity/c/b;->a(Lcom/jxphone/mosecurity/c/c;)V

    .line 585
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/o;->d:Lcom/jxphone/mosecurity/c/c;

    sget-object v1, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v0, v1}, Lcom/jxphone/mosecurity/c/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 586
    sget-object v0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->g:Lcom/jxphone/mosecurity/c/b;

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2, v0}, Lcom/jxphone/mosecurity/c/b;->a(Landroid/graphics/Bitmap;)V

    .line 591
    :cond_2
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/o;->e:Lcom/jxphone/mosecurity/logic/a/d;

    invoke-interface {v0, v2}, Lcom/jxphone/mosecurity/logic/a/d;->a(Lcom/jxphone/mosecurity/c/b;)I

    move-result v0

    .line 593
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/o;->f:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/o;->d:Lcom/jxphone/mosecurity/c/c;

    sget-object v3, Lcom/jxphone/mosecurity/c/c;->e:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v1, v3}, Lcom/jxphone/mosecurity/c/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    if-eq v0, v8, :cond_3

    .line 595
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/o;->h:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    new-instance v3, Lcom/jxphone/mosecurity/d/n;

    iget-object v4, p0, Lcom/jxphone/mosecurity/activity/o;->h:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    const v5, 0x7f0b0667

    new-instance v6, Lcom/jxphone/mosecurity/activity/t;

    iget-object v7, p0, Lcom/jxphone/mosecurity/activity/o;->h:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    invoke-direct {v6, v7}, Lcom/jxphone/mosecurity/activity/t;-><init>(Lcom/jxphone/mosecurity/activity/BaseContactActivity;)V

    invoke-direct {v3, v4, v5, v6}, Lcom/jxphone/mosecurity/d/n;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    iput-object v3, v1, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->k:Lcom/jxphone/mosecurity/d/n;

    .line 599
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/o;->e:Lcom/jxphone/mosecurity/logic/a/d;

    iget-object v3, p0, Lcom/jxphone/mosecurity/activity/o;->h:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    iget-object v3, v3, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->k:Lcom/jxphone/mosecurity/d/n;

    invoke-interface {v1, v2, v3}, Lcom/jxphone/mosecurity/logic/a/d;->b(Lcom/jxphone/mosecurity/c/b;Lcom/jxphone/mosecurity/logic/a/a;)V

    .line 605
    :cond_3
    if-eq v0, v8, :cond_6

    .line 606
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/o;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/jxphone/mosecurity/logic/h;->b(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/g;

    move-result-object v1

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v1, v3, v4}, Lcom/jxphone/mosecurity/logic/a/g;->d(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)Z

    .line 608
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/o;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/jxphone/mosecurity/logic/h;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/j;

    move-result-object v1

    invoke-virtual {v2}, Lcom/jxphone/mosecurity/c/b;->c()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/jxphone/mosecurity/c/c;->b:Lcom/jxphone/mosecurity/c/c;

    invoke-interface {v1, v3, v4}, Lcom/jxphone/mosecurity/logic/a/j;->c(Ljava/lang/String;Lcom/jxphone/mosecurity/c/c;)Z

    .line 610
    invoke-virtual {v2, v0}, Lcom/jxphone/mosecurity/c/b;->a(I)V

    .line 611
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/o;->g:Lcom/jxphone/mosecurity/activity/r;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/o;->g:Lcom/jxphone/mosecurity/activity/r;

    invoke-virtual {v0, v2}, Lcom/jxphone/mosecurity/activity/r;->a(Lcom/jxphone/mosecurity/c/b;)V

    .line 617
    sget-object v0, Lcom/jxphone/mosecurity/activity/h;->a:[I

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/o;->d:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 628
    const v0, 0x7f0b0661

    .line 631
    :goto_2
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/o;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 632
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/o;->g:Lcom/jxphone/mosecurity/activity/r;

    .line 652
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/o;->c:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 656
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 657
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/o;->h:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    const-class v2, Lcom/jxphone/mosecurity/activity/friend/FriendTabActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 659
    const-string v1, "isDummy"

    iget-object v2, p0, Lcom/jxphone/mosecurity/activity/o;->h:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    iget-boolean v2, v2, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->i:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 660
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/o;->h:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    invoke-virtual {v1, v0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->startActivity(Landroid/content/Intent;)V

    .line 661
    iget-object v0, p0, Lcom/jxphone/mosecurity/activity/o;->h:Lcom/jxphone/mosecurity/activity/BaseContactActivity;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->finish()V

    goto/16 :goto_0

    .line 586
    :cond_5
    sget-object v0, Lcom/jxphone/mosecurity/activity/BaseContactActivity;->g:Lcom/jxphone/mosecurity/c/b;

    invoke-virtual {v0}, Lcom/jxphone/mosecurity/c/b;->g()Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_1

    .line 619
    :pswitch_0
    const v0, 0x7f0b05f6

    .line 620
    goto :goto_2

    .line 622
    :pswitch_1
    const v0, 0x7f0b051b

    .line 623
    goto :goto_2

    .line 625
    :pswitch_2
    const v0, 0x7f0b052c

    .line 626
    goto :goto_2

    .line 633
    :cond_6
    sget-object v0, Lcom/jxphone/mosecurity/activity/h;->a:[I

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/o;->d:Lcom/jxphone/mosecurity/c/c;

    invoke-virtual {v1}, Lcom/jxphone/mosecurity/c/c;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 647
    const v0, 0x7f0b0662

    .line 650
    :goto_4
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/o;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 651
    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/o;->g:Lcom/jxphone/mosecurity/activity/r;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/jxphone/mosecurity/activity/o;->g:Lcom/jxphone/mosecurity/activity/r;

    goto :goto_3

    .line 638
    :pswitch_3
    const v0, 0x7f0b05f8

    .line 639
    goto :goto_4

    .line 641
    :pswitch_4
    const v0, 0x7f0b051c

    .line 642
    goto :goto_4

    .line 644
    :pswitch_5
    const v0, 0x7f0b052d

    .line 645
    goto :goto_4

    .line 617
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 633
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

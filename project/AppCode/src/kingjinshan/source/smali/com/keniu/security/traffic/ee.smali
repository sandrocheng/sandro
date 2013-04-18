.class final Lcom/keniu/security/traffic/ee;
.super Ljava/lang/Object;
.source "TrafficZiFeiSettingActivity.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 579
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->j(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 580
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 624
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 583
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->y(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    .line 584
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->w(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    .line 585
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->e(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0

    .line 586
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->k(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 587
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 590
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->y(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    .line 591
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->w(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    .line 592
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->e(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0

    .line 593
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->l(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_4

    .line 594
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 597
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->y(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    .line 598
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->w(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    .line 599
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->e(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 600
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->C(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_6

    .line 601
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->D(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->d(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 602
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->m(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 603
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->m(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RatesRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 605
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->w(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    .line 606
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->v(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    goto/16 :goto_0

    .line 608
    :cond_6
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->E(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_8

    .line 609
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->D(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->d(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 610
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->m(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 611
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->m(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RatesRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 613
    :cond_7
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->w(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    .line 614
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->v(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    goto/16 :goto_0

    .line 615
    :cond_8
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->F(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getId()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->D(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->d(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 617
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->m(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 618
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->m(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RatesRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 620
    :cond_9
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->w(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    .line 621
    iget-object v0, p0, Lcom/keniu/security/traffic/ee;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->v(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    goto/16 :goto_0
.end method

.class final Lcom/keniu/security/traffic/ei;
.super Ljava/lang/Object;
.source "TrafficZiFeiSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 303
    iput-object p1, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    iput-object p2, p0, Lcom/keniu/security/traffic/ei;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x3

    const-wide/16 v5, 0x400

    const/4 v2, 0x1

    .line 306
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->m(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->getDisplayedChild()I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->m(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "RatesRequest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->n(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    .line 411
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->getDisplayedChild()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 314
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->o(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->p(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 317
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    const-string v1, "\u8bf7\u8f93\u5165\u6d41\u91cf\u5957\u9910\u989d\u5ea6"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 321
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/Button;

    move-result-object v0

    const-string v1, "\u8df3\u8fc7"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->q(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Z

    goto :goto_0

    .line 327
    :cond_2
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->o(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 330
    iget-object v2, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v2}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;)Lcom/keniu/security/traffic/y;

    move-result-object v2

    .line 333
    iget-object v3, p0, Lcom/keniu/security/traffic/ei;->a:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    mul-long/2addr v0, v5

    mul-long/2addr v0, v5

    :goto_1
    iput-wide v0, v2, Lcom/keniu/security/traffic/y;->d:J

    .line 337
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    const v1, 0x7f0b03c3

    invoke-virtual {v2, v0, v1}, Lcom/keniu/security/traffic/y;->a(Landroid/content/Context;I)V

    .line 342
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->n(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    goto/16 :goto_0

    .line 333
    :cond_4
    mul-long/2addr v0, v5

    mul-long/2addr v0, v5

    mul-long/2addr v0, v5

    goto :goto_1

    .line 345
    :cond_5
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_6

    .line 346
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->r(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 347
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    const-string v1, "\u8bf7\u9009\u62e9\u6240\u5728\u7701\u5e02"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 353
    :cond_6
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->getDisplayedChild()I

    move-result v0

    if-ne v0, v2, :cond_7

    .line 355
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->s(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 356
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    const-string v1, "\u8bf7\u9009\u62e9\u6240\u5728\u5e02"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 362
    :cond_7
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->getDisplayedChild()I

    move-result v0

    if-ne v0, v4, :cond_8

    .line 364
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->t(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 365
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    const-string v1, "\u8bf7\u9009\u62e9\u8fd0\u8425\u5546"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 371
    :cond_8
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->getDisplayedChild()I

    move-result v0

    if-ne v0, v3, :cond_9

    .line 373
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->u(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 374
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    const-string v1, "\u8bf7\u9009\u62e9\u54c1\u724c"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 382
    :cond_9
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->getDisplayedChild()I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 383
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->v(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    .line 386
    :cond_a
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->w(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    .line 387
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0, v2}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Z)Z

    .line 389
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->getDisplayedChild()I

    move-result v0

    if-ne v0, v2, :cond_b

    .line 390
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->d(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0b079d

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 392
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->e(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 394
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->f(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/en;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/en;->notifyDataSetChanged()V

    .line 396
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->g(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/traffic/en;

    invoke-virtual {p0}, Lcom/keniu/security/traffic/en;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 399
    :cond_b
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->getDisplayedChild()I

    move-result v0

    if-ne v0, v4, :cond_c

    .line 401
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->x(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    goto/16 :goto_0

    .line 402
    :cond_c
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->getDisplayedChild()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 404
    iget-object v0, p0, Lcom/keniu/security/traffic/ei;->b:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->y(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V

    goto/16 :goto_0
.end method

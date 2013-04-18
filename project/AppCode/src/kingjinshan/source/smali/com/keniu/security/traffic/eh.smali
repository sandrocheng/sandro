.class final Lcom/keniu/security/traffic/eh;
.super Ljava/lang/Object;
.source "TrafficZiFeiSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;


# direct methods
.method constructor <init>(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 229
    iput-object p1, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const v4, 0x7f0b079d

    const v2, 0x7f0b079c

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 233
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->finish()V

    .line 299
    :goto_0
    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->getDisplayedChild()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 238
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 240
    :cond_1
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->a()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/SafeViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 241
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v0

    iget-object v1, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keniu/security/util/SafeViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 242
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->showPrevious()V

    .line 243
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0, v3}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Z)Z

    .line 245
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->getDisplayedChild()I

    move-result v0

    if-nez v0, :cond_3

    .line 246
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->d(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f0b0513

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 248
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 249
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->e(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 250
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->f(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/en;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/en;->notifyDataSetChanged()V

    .line 252
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->g(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/en;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/en;->notifyDataSetChanged()V

    .line 292
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->e(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 293
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->f(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/en;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/en;->notifyDataSetChanged()V

    .line 295
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->g(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    check-cast p0, Lcom/keniu/security/traffic/en;

    invoke-virtual {p0}, Lcom/keniu/security/traffic/en;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 254
    :cond_3
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->getDisplayedChild()I

    move-result v0

    if-ne v0, v5, :cond_4

    .line 255
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->d(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 257
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 258
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->e(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 259
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->f(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/en;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/en;->notifyDataSetChanged()V

    .line 261
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->g(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/en;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/en;->notifyDataSetChanged()V

    goto :goto_1

    .line 263
    :cond_4
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->c(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Lcom/keniu/security/util/SafeViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keniu/security/util/SafeViewFlipper;->getDisplayedChild()I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 264
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->d(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 266
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 267
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {}, Lcn/com/wali/zft/plugin;->getcarries()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->b(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 268
    iget-object v1, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->h(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v2}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->h(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;[Ljava/lang/String;)[Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v3

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v2}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, v5

    iget-object v2, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v2}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v5

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 278
    iget-object v2, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v2}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v6

    iget-object v3, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v6

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v4}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->i(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 281
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 282
    iget-object v3, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v3}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->j(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/RadioButton;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 283
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->k(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->l(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    iget-object v1, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->e(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->a(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 286
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->f(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/en;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/en;->notifyDataSetChanged()V

    .line 288
    iget-object v0, p0, Lcom/keniu/security/traffic/eh;->a:Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;

    invoke-static {v0}, Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;->g(Lcom/keniu/security/traffic/TrafficZiFeiSettingActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/traffic/en;

    invoke-virtual {v0}, Lcom/keniu/security/traffic/en;->notifyDataSetChanged()V

    goto/16 :goto_1
.end method

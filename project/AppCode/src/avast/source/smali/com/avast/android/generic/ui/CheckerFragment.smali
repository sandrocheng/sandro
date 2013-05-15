.class public abstract Lcom/avast/android/generic/ui/CheckerFragment;
.super Lcom/avast/android/generic/util/ga/TrackedListFragment;
.source "CheckerFragment.java"

# interfaces
.implements Lcom/avast/android/generic/ui/widget/f;


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/avast/android/generic/ui/b/a;

.field private c:I

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Z

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/LinearLayout;

.field private j:Z

.field private k:Z

.field private l:Ljava/lang/Boolean;

.field private m:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->c:I

    .line 52
    iput-boolean v1, p0, Lcom/avast/android/generic/ui/CheckerFragment;->g:Z

    .line 57
    iput-boolean v1, p0, Lcom/avast/android/generic/ui/CheckerFragment;->j:Z

    .line 58
    iput-boolean v1, p0, Lcom/avast/android/generic/ui/CheckerFragment;->k:Z

    .line 60
    iput-object v2, p0, Lcom/avast/android/generic/ui/CheckerFragment;->l:Ljava/lang/Boolean;

    .line 62
    iput-object v2, p0, Lcom/avast/android/generic/ui/CheckerFragment;->m:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic a(Lcom/avast/android/generic/ui/CheckerFragment;)Z
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-boolean v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/avast/android/generic/ui/CheckerFragment;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/avast/android/generic/ui/CheckerFragment;->g:Z

    return p1
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(I)V
    .locals 5
    .parameter

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 479
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 420
    if-eqz v1, :cond_0

    .line 423
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->b:Lcom/avast/android/generic/ui/b/a;

    iget v2, p0, Lcom/avast/android/generic/ui/CheckerFragment;->c:I

    invoke-virtual {v0, v2}, Lcom/avast/android/generic/ui/b/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/b/d;

    .line 425
    if-nez v0, :cond_2

    .line 427
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->h()V

    goto :goto_0

    .line 476
    :catch_0
    move-exception v0

    goto :goto_0

    .line 431
    :cond_2
    const-string v2, "checker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "click context item "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/b/d;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p1}, Lcom/avast/android/generic/ui/CheckerFragment;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 433
    invoke-virtual {v0, v1, p0, p1}, Lcom/avast/android/generic/ui/b/d;->a(Landroid/content/Context;Landroid/support/v4/app/Fragment;I)Z

    move-result v1

    .line 435
    if-eqz v1, :cond_3

    .line 437
    const-string v1, "checker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem solved "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/b/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/avast/android/generic/ui/CheckerFragment;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 439
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/avast/android/generic/ui/l;

    invoke-direct {v2, p0, v0}, Lcom/avast/android/generic/ui/l;-><init>(Lcom/avast/android/generic/ui/CheckerFragment;Lcom/avast/android/generic/ui/b/d;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 472
    :cond_3
    const-string v1, "checker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem solved later "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/b/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lcom/avast/android/generic/ui/CheckerFragment;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 474
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->h()V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 489
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->g()Ljava/lang/String;

    move-result-object v1

    int-to-long v4, p3

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-super/range {v0 .. v5}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 491
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 486
    return-void
.end method

.method public abstract b()Lcom/avast/android/generic/ui/b/a;
.end method

.method public abstract c()I
.end method

.method public abstract d()I
.end method

.method public abstract e()I
.end method

.method public abstract g()Ljava/lang/String;
.end method

.method protected h()V
    .locals 7

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 179
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    .line 185
    if-eqz v5, :cond_0

    .line 188
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->f:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 190
    iget-boolean v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->g:Z

    if-eqz v0, :cond_4

    .line 192
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->f:Landroid/widget/Button;

    sget v4, Lcom/avast/android/generic/z;->bq:I

    invoke-virtual {p0, v4}, Lcom/avast/android/generic/ui/CheckerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 198
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->b:Lcom/avast/android/generic/ui/b/a;

    iget-boolean v4, p0, Lcom/avast/android/generic/ui/CheckerFragment;->g:Z

    invoke-virtual {v0, v5, v4}, Lcom/avast/android/generic/ui/b/a;->a(Landroid/content/Context;Z)V

    .line 202
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->b:Lcom/avast/android/generic/ui/b/a;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/b/a;->a()Ljava/util/List;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_5

    .line 205
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v4, v1

    :cond_3
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/b/d;

    .line 207
    invoke-virtual {v0}, Lcom/avast/android/generic/ui/b/d;->c()Z

    move-result v0

    if-nez v0, :cond_3

    move v4, v3

    .line 212
    goto :goto_2

    .line 195
    :cond_4
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->f:Landroid/widget/Button;

    sget v4, Lcom/avast/android/generic/z;->W:I

    invoke-virtual {p0, v4}, Lcom/avast/android/generic/ui/CheckerFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 318
    :catch_0
    move-exception v0

    .line 320
    const-string v1, "AvastGeneric"

    const-string v2, "Error updating setup check rows"

    invoke-static {v1, v2, v0}, Lcom/avast/android/generic/util/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    move v4, v1

    .line 216
    :cond_6
    :try_start_1
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->l:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->l:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, v4, :cond_8

    .line 218
    :cond_7
    const-class v0, Lcom/avast/android/generic/ah;

    invoke-static {v5, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 219
    const-string v6, "hasproblems"

    invoke-virtual {v0, v6, v4}, Lcom/avast/android/generic/ae;->a(Ljava/lang/String;Z)V

    .line 220
    invoke-virtual {v0}, Lcom/avast/android/generic/ae;->b()Z

    .line 222
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->l:Ljava/lang/Boolean;

    .line 224
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.avast.android.generic.action.ACTION_PROBLEMS_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 225
    invoke-static {v5}, Landroid/support/v4/a/p;->a(Landroid/content/Context;)Landroid/support/v4/a/p;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/support/v4/a/p;->a(Landroid/content/Intent;)Z

    .line 229
    :cond_8
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->b:Lcom/avast/android/generic/ui/b/a;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/b/a;->a()Ljava/util/List;

    move-result-object v4

    .line 230
    iget-boolean v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->k:Z

    if-nez v0, :cond_a

    .line 232
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->i:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    if-eqz v4, :cond_9

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    .line 235
    :cond_9
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->i()V

    goto/16 :goto_0

    .line 241
    :cond_a
    iget-object v5, p0, Lcom/avast/android/generic/ui/CheckerFragment;->i:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_b

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    move v0, v1

    :goto_3
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 246
    :cond_c
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v0, v1

    move v2, v3

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/b/d;

    .line 248
    invoke-virtual {v0}, Lcom/avast/android/generic/ui/b/d;->b()Z

    move-result v0

    if-nez v0, :cond_11

    move v0, v1

    :goto_5
    move v2, v0

    move v0, v3

    .line 251
    goto :goto_4

    :cond_d
    move v0, v2

    .line 241
    goto :goto_3

    .line 254
    :cond_e
    if-nez v2, :cond_f

    .line 256
    const-string v0, "checker"

    const-string v1, "non ignorable problem present"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/avast/android/generic/ui/CheckerFragment;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 258
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->d:Landroid/widget/Button;

    sget v1, Lcom/avast/android/generic/z;->ag:I

    invoke-virtual {p0, v1}, Lcom/avast/android/generic/ui/CheckerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->d:Landroid/widget/Button;

    new-instance v1, Lcom/avast/android/generic/ui/j;

    invoke-direct {v1, p0}, Lcom/avast/android/generic/ui/j;-><init>(Lcom/avast/android/generic/ui/CheckerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->c()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/avast/android/generic/ui/CheckerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 268
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->d:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->e:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 272
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/avast/android/generic/q;->d:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 273
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget v3, Lcom/avast/android/generic/s;->b:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 317
    :goto_6
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->b:Lcom/avast/android/generic/ui/b/a;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/b/a;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 276
    :cond_f
    const-string v1, "checker"

    const-string v2, "only ignorable problems"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/avast/android/generic/ui/CheckerFragment;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 278
    iget-object v1, p0, Lcom/avast/android/generic/ui/CheckerFragment;->d:Landroid/widget/Button;

    sget v2, Lcom/avast/android/generic/z;->cz:I

    invoke-virtual {p0, v2}, Lcom/avast/android/generic/ui/CheckerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v1, p0, Lcom/avast/android/generic/ui/CheckerFragment;->d:Landroid/widget/Button;

    new-instance v2, Lcom/avast/android/generic/ui/k;

    invoke-direct {v2, p0}, Lcom/avast/android/generic/ui/k;-><init>(Lcom/avast/android/generic/ui/CheckerFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 287
    iget-object v1, p0, Lcom/avast/android/generic/ui/CheckerFragment;->e:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->c()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/avast/android/generic/ui/CheckerFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v1, p0, Lcom/avast/android/generic/ui/CheckerFragment;->d:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 289
    iget-object v1, p0, Lcom/avast/android/generic/ui/CheckerFragment;->e:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 291
    if-eqz v0, :cond_10

    .line 293
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->e()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 294
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/avast/android/generic/q;->d:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 295
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sget v3, Lcom/avast/android/generic/s;->b:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_6

    .line 298
    :cond_10
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->h:Landroid/widget/TextView;

    sget v1, Lcom/avast/android/generic/z;->ai:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 299
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/avast/android/generic/q;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 300
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->h:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6

    :cond_11
    move v0, v2

    goto/16 :goto_5
.end method

.method public i()V
    .locals 3

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 334
    :goto_0
    return-void

    .line 331
    :cond_0
    const-string v0, "checker"

    const-string v1, "success, launch next"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/avast/android/generic/ui/CheckerFragment;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 333
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->a()V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 170
    invoke-static {p0}, Lcom/avast/android/generic/util/a;->a(Landroid/support/v4/app/Fragment;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->b()Lcom/avast/android/generic/ui/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->b:Lcom/avast/android/generic/ui/b/a;

    .line 69
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 81
    sget v0, Lcom/avast/android/generic/v;->p:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 83
    invoke-virtual {p0, v1}, Lcom/avast/android/generic/ui/CheckerFragment;->b(Landroid/view/View;)V

    .line 85
    sget v0, Lcom/avast/android/generic/v;->I:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->a:Landroid/view/View;

    .line 87
    sget v0, Lcom/avast/android/generic/t;->aa:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 88
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 90
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->a:Landroid/view/View;

    sget v2, Lcom/avast/android/generic/t;->aq:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->h:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->h:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 93
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->a:Landroid/view/View;

    sget v2, Lcom/avast/android/generic/t;->r:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->d:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->a:Landroid/view/View;

    sget v2, Lcom/avast/android/generic/t;->aW:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->e:Landroid/widget/Button;

    .line 95
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->a:Landroid/view/View;

    sget v2, Lcom/avast/android/generic/t;->ak:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->f:Landroid/widget/Button;

    .line 96
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->a:Landroid/view/View;

    sget v2, Lcom/avast/android/generic/t;->aI:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->i:Landroid/widget/LinearLayout;

    .line 98
    iget-boolean v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->j:Z

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->a:Landroid/view/View;

    sget v2, Lcom/avast/android/generic/t;->U:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->m:Landroid/widget/LinearLayout;

    .line 101
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->a:Landroid/view/View;

    sget v2, Lcom/avast/android/generic/t;->af:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->m:Landroid/widget/LinearLayout;

    .line 103
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->e:Landroid/widget/Button;

    new-instance v2, Lcom/avast/android/generic/ui/h;

    invoke-direct {v2, p0}, Lcom/avast/android/generic/ui/h;-><init>(Lcom/avast/android/generic/ui/CheckerFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->f:Landroid/widget/Button;

    new-instance v2, Lcom/avast/android/generic/ui/i;

    invoke-direct {v2, p0}, Lcom/avast/android/generic/ui/i;-><init>(Lcom/avast/android/generic/ui/CheckerFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-object v1

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->a:Landroid/view/View;

    sget v2, Lcom/avast/android/generic/t;->af:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->m:Landroid/widget/LinearLayout;

    .line 107
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->a:Landroid/view/View;

    sget v2, Lcom/avast/android/generic/t;->U:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->m:Landroid/widget/LinearLayout;

    .line 109
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->m:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 369
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onDestroyView()V

    .line 370
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/CheckerFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 371
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 378
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 382
    if-eqz v1, :cond_0

    .line 385
    add-int/lit8 v0, p3, -0x1

    .line 386
    iput v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->c:I

    .line 388
    iget-object v3, p0, Lcom/avast/android/generic/ui/CheckerFragment;->b:Lcom/avast/android/generic/ui/b/a;

    invoke-virtual {v3, v0}, Lcom/avast/android/generic/ui/b/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/b/d;

    .line 390
    const-string v3, "checker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "click row "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/b/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, v2}, Lcom/avast/android/generic/ui/CheckerFragment;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 392
    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/b/d;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 394
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 395
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    move v1, v2

    .line 397
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 399
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v1

    .line 397
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 403
    :cond_2
    new-instance v0, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;

    invoke-direct {v0}, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;-><init>()V

    .line 404
    invoke-virtual {v0, v4}, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;->a([Ljava/lang/String;)Lcom/avast/android/generic/ui/widget/ContextDialogFragment;

    .line 405
    sget v1, Lcom/avast/android/generic/z;->j:I

    invoke-virtual {p0, v1}, Lcom/avast/android/generic/ui/CheckerFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;->a(Ljava/lang/String;)Lcom/avast/android/generic/ui/widget/ContextDialogFragment;

    .line 406
    invoke-virtual {v0, p0, v2}, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 407
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "contextDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->h()V

    .line 161
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onResume()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 147
    invoke-super {p0, p1, p2}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 149
    invoke-virtual {p0}, Lcom/avast/android/generic/ui/CheckerFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/avast/android/generic/ui/CheckerFragment;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Lcom/avast/android/generic/ui/CheckerFragment;->b:Lcom/avast/android/generic/ui/b/a;

    invoke-virtual {p0, v0}, Lcom/avast/android/generic/ui/CheckerFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 152
    return-void
.end method

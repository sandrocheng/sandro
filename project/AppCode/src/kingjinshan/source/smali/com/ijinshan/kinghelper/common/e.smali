.class final Lcom/ijinshan/kinghelper/common/e;
.super Landroid/widget/CursorAdapter;
.source "NumberPickListActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic a:Lcom/ijinshan/kinghelper/common/NumberPickListActivity;

.field private b:Ljava/lang/String;

.field private c:Landroid/database/Cursor;

.field private d:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/ijinshan/kinghelper/common/NumberPickListActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 309
    iput-object p1, p0, Lcom/ijinshan/kinghelper/common/e;->a:Lcom/ijinshan/kinghelper/common/NumberPickListActivity;

    .line 310
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 311
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/ijinshan/kinghelper/common/e;->d:Landroid/view/LayoutInflater;

    .line 312
    iput-object p3, p0, Lcom/ijinshan/kinghelper/common/e;->b:Ljava/lang/String;

    .line 313
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    invoke-static {p1, v0}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->a(Lcom/ijinshan/kinghelper/common/NumberPickListActivity;Landroid/util/SparseBooleanArray;)Landroid/util/SparseBooleanArray;

    .line 314
    invoke-static {p1}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->a(Lcom/ijinshan/kinghelper/common/NumberPickListActivity;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 315
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/e;->a:Lcom/ijinshan/kinghelper/common/NumberPickListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->a(Lcom/ijinshan/kinghelper/common/NumberPickListActivity;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 449
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/e;->notifyDataSetChanged()V

    .line 450
    invoke-virtual {p0}, Lcom/ijinshan/kinghelper/common/e;->notifyDataSetInvalidated()V

    .line 451
    return-void
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 1
    .parameter

    .prologue
    .line 441
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/e;->c:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/e;->c:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 444
    :cond_0
    iput-object p1, p0, Lcom/ijinshan/kinghelper/common/e;->c:Landroid/database/Cursor;

    .line 445
    return-void
.end method

.method public final b()Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 454
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/e;->a:Lcom/ijinshan/kinghelper/common/NumberPickListActivity;

    invoke-static {v0}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->a(Lcom/ijinshan/kinghelper/common/NumberPickListActivity;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 455
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    .line 457
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 459
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 460
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 461
    invoke-virtual {v0, v3}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 464
    :cond_1
    return-object v2
.end method

.method public final bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const v7, 0x7f0b0186

    .line 336
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/common/g;

    .line 338
    const-string v1, "vnd.android.cursor.dir/calls"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 340
    const-string v1, "number"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-static {v1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/ijinshan/kinghelper/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 343
    const-string v3, "date"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 345
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 346
    iput-object v1, v0, Lcom/ijinshan/kinghelper/common/g;->f:Ljava/lang/String;

    .line 350
    :goto_0
    iput-object v1, v0, Lcom/ijinshan/kinghelper/common/g;->g:Ljava/lang/String;

    .line 351
    invoke-static {}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->b()Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ijinshan/kinghelper/common/g;->i:Ljava/lang/String;

    .line 354
    invoke-static {p2}, Lcom/jxphone/mosecurity/d/a;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/a;

    move-result-object v2

    invoke-static {v1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/e;->a:Lcom/ijinshan/kinghelper/common/NumberPickListActivity;

    invoke-virtual {v3, v7}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/jxphone/mosecurity/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/common/g;->h:Ljava/lang/String;

    .line 355
    iget-object v1, v0, Lcom/ijinshan/kinghelper/common/g;->b:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ijinshan/kinghelper/common/g;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v1, v0, Lcom/ijinshan/kinghelper/common/g;->c:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ijinshan/kinghelper/common/g;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    iget-object v1, v0, Lcom/ijinshan/kinghelper/common/g;->e:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ijinshan/kinghelper/common/g;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    iget-object v1, v0, Lcom/ijinshan/kinghelper/common/g;->d:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ijinshan/kinghelper/common/g;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 409
    :cond_0
    :goto_1
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    iput v1, v0, Lcom/ijinshan/kinghelper/common/g;->j:I

    .line 410
    iget-object v1, v0, Lcom/ijinshan/kinghelper/common/g;->a:Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;

    invoke-virtual {v1, v0}, Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;->setTag(Ljava/lang/Object;)V

    .line 411
    iget-object v1, v0, Lcom/ijinshan/kinghelper/common/g;->a:Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/e;->a:Lcom/ijinshan/kinghelper/common/NumberPickListActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->a(Lcom/ijinshan/kinghelper/common/NumberPickListActivity;)Landroid/util/SparseBooleanArray;

    move-result-object v2

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;->setChecked(Z)V

    .line 412
    iget-object v0, v0, Lcom/ijinshan/kinghelper/common/g;->a:Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;

    invoke-virtual {v0, p0}, Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 413
    return-void

    .line 348
    :cond_1
    iput-object v2, v0, Lcom/ijinshan/kinghelper/common/g;->f:Ljava/lang/String;

    goto :goto_0

    .line 360
    :cond_2
    const-string v1, "vnd.android.cursor.dir/sms"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 363
    const-string v1, "address"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 365
    const-string v2, "body"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 367
    const-string v3, "date"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 369
    invoke-static {v1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/ijinshan/kinghelper/a/j;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 371
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 372
    iput-object v1, v0, Lcom/ijinshan/kinghelper/common/g;->f:Ljava/lang/String;

    .line 376
    :goto_2
    iput-object v2, v0, Lcom/ijinshan/kinghelper/common/g;->g:Ljava/lang/String;

    .line 377
    invoke-static {}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->b()Ljava/text/SimpleDateFormat;

    move-result-object v2

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/ijinshan/kinghelper/common/g;->i:Ljava/lang/String;

    .line 380
    invoke-static {p2}, Lcom/jxphone/mosecurity/d/a;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/a;

    move-result-object v2

    invoke-static {v1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/e;->a:Lcom/ijinshan/kinghelper/common/NumberPickListActivity;

    invoke-virtual {v3, v7}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/jxphone/mosecurity/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/common/g;->h:Ljava/lang/String;

    .line 381
    iget-object v1, v0, Lcom/ijinshan/kinghelper/common/g;->b:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ijinshan/kinghelper/common/g;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    iget-object v1, v0, Lcom/ijinshan/kinghelper/common/g;->c:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ijinshan/kinghelper/common/g;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v1, v0, Lcom/ijinshan/kinghelper/common/g;->e:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ijinshan/kinghelper/common/g;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v1, v0, Lcom/ijinshan/kinghelper/common/g;->d:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ijinshan/kinghelper/common/g;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 374
    :cond_3
    iput-object v5, v0, Lcom/ijinshan/kinghelper/common/g;->f:Ljava/lang/String;

    goto :goto_2

    .line 386
    :cond_4
    const-string v1, "vnd.android.cursor.dir/contact"

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/e;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_5

    const-string v1, "data1"

    .line 389
    :goto_3
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const-string v2, "display_name"

    .line 390
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 391
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 393
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 394
    iput-object v1, v0, Lcom/ijinshan/kinghelper/common/g;->f:Ljava/lang/String;

    .line 399
    :goto_4
    iput-object v1, v0, Lcom/ijinshan/kinghelper/common/g;->g:Ljava/lang/String;

    .line 402
    invoke-static {p2}, Lcom/jxphone/mosecurity/d/a;->a(Landroid/content/Context;)Lcom/jxphone/mosecurity/d/a;

    move-result-object v2

    invoke-static {v1}, Lcom/ijinshan/kinghelper/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/ijinshan/kinghelper/common/e;->a:Lcom/ijinshan/kinghelper/common/NumberPickListActivity;

    invoke-virtual {v3, v7}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lcom/jxphone/mosecurity/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ijinshan/kinghelper/common/g;->h:Ljava/lang/String;

    .line 403
    iget-object v1, v0, Lcom/ijinshan/kinghelper/common/g;->b:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ijinshan/kinghelper/common/g;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v1, v0, Lcom/ijinshan/kinghelper/common/g;->c:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ijinshan/kinghelper/common/g;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v1, v0, Lcom/ijinshan/kinghelper/common/g;->e:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ijinshan/kinghelper/common/g;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v1, v0, Lcom/ijinshan/kinghelper/common/g;->d:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/ijinshan/kinghelper/common/g;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 388
    :cond_5
    const-string v1, "number"

    goto :goto_3

    .line 396
    :cond_6
    iput-object v2, v0, Lcom/ijinshan/kinghelper/common/g;->f:Ljava/lang/String;

    goto :goto_4
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/e;->c:Landroid/database/Cursor;

    .line 322
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 325
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/e;->a:Lcom/ijinshan/kinghelper/common/NumberPickListActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->b(Lcom/ijinshan/kinghelper/common/NumberPickListActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p3}, Lcom/ijinshan/kinghelper/common/e;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 330
    :goto_0
    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/e;->a:Lcom/ijinshan/kinghelper/common/NumberPickListActivity;

    invoke-static {v2}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->b(Lcom/ijinshan/kinghelper/common/NumberPickListActivity;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/ijinshan/kinghelper/common/e;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 331
    return-object v1

    :cond_1
    move-object v1, p2

    .line 328
    goto :goto_0
.end method

.method public final newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 418
    iget-object v0, p0, Lcom/ijinshan/kinghelper/common/e;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f0300ac

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 419
    new-instance v1, Lcom/ijinshan/kinghelper/common/g;

    iget-object v2, p0, Lcom/ijinshan/kinghelper/common/e;->a:Lcom/ijinshan/kinghelper/common/NumberPickListActivity;

    invoke-direct {v1, v2}, Lcom/ijinshan/kinghelper/common/g;-><init>(Lcom/ijinshan/kinghelper/common/NumberPickListActivity;)V

    .line 420
    const v2, 0x7f08028a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;

    iput-object p0, v1, Lcom/ijinshan/kinghelper/common/g;->a:Lcom/ijinshan/kinghelper/common/DontPressWithParentCheckBox;

    .line 421
    const v2, 0x7f08028b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/ijinshan/kinghelper/common/g;->b:Landroid/widget/TextView;

    .line 422
    const v2, 0x7f08028c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/ijinshan/kinghelper/common/g;->c:Landroid/widget/TextView;

    .line 423
    const v2, 0x7f08028e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/ijinshan/kinghelper/common/g;->d:Landroid/widget/TextView;

    .line 424
    const v2, 0x7f08028d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iput-object p0, v1, Lcom/ijinshan/kinghelper/common/g;->e:Landroid/widget/TextView;

    .line 425
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 426
    return-object v0
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 431
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ijinshan/kinghelper/common/g;

    .line 432
    if-eqz p2, :cond_0

    .line 433
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/e;->a:Lcom/ijinshan/kinghelper/common/NumberPickListActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->a(Lcom/ijinshan/kinghelper/common/NumberPickListActivity;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    iget v0, v0, Lcom/ijinshan/kinghelper/common/g;->j:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 437
    :goto_0
    return-void

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/ijinshan/kinghelper/common/e;->a:Lcom/ijinshan/kinghelper/common/NumberPickListActivity;

    invoke-static {v1}, Lcom/ijinshan/kinghelper/common/NumberPickListActivity;->a(Lcom/ijinshan/kinghelper/common/NumberPickListActivity;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    iget v0, v0, Lcom/ijinshan/kinghelper/common/g;->j:I

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_0
.end method

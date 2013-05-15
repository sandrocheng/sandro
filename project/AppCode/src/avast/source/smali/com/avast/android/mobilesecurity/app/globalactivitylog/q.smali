.class Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;
.super Landroid/support/v4/e/a;
.source "GlobalActivityLogFragment.java"


# instance fields
.field private a:Landroid/view/LayoutInflater;

.field private b:Landroid/content/res/Resources;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 347
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v4/e/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 348
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->a:Landroid/view/LayoutInflater;

    .line 349
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->b:Landroid/content/res/Resources;

    .line 350
    return-void
.end method

.method private a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 415
    iget-object v0, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 416
    iget-object v0, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    iget-object v0, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 418
    iget-object v0, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 419
    iget-object v0, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    iget-object v0, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 421
    iget-object v0, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 422
    iget-object v0, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 423
    iget-object v0, p1, Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;->h:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 424
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iget v1, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->d:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->a(I)Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    move-result-object v0

    .line 446
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->a(Landroid/content/Context;)V

    .line 448
    :cond_0
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x1

    return v0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    .line 389
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;

    .line 390
    iget-object v0, v3, Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->c:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const v2, 0x10011

    invoke-static {v1, v4, v5, v2}, Lcom/avast/android/generic/util/k;->a(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    invoke-direct {p0, v3}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->a(Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;)V

    .line 396
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->d:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->a(I)Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    move-result-object v0

    .line 398
    if-eqz v0, :cond_0

    .line 399
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 400
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->b:Landroid/content/res/Resources;

    iget v4, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->e:I

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->f:I

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->g:I

    invoke-interface {p3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget v7, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->h:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget v8, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->i:I

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget v9, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->j:I

    invoke-interface {p3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->a(Landroid/content/Context;Landroid/content/res/Resources;Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 407
    :goto_0
    return-void

    .line 405
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter

    .prologue
    .line 354
    invoke-super {p0, p1}, Landroid/support/v4/e/a;->changeCursor(Landroid/database/Cursor;)V

    .line 355
    if-eqz p1, :cond_0

    .line 356
    const-string v0, "date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->c:I

    .line 357
    const-string v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->d:I

    .line 358
    const-string v0, "text_primary"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->e:I

    .line 359
    const-string v0, "text_secondary"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->f:I

    .line 360
    const-string v0, "text_tertiary"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->g:I

    .line 361
    const-string v0, "number_primary"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->h:I

    .line 362
    const-string v0, "number_secondary"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->i:I

    .line 364
    const-string v0, "number_tertiary"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->j:I

    .line 366
    :cond_0
    return-void
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter

    .prologue
    .line 433
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    iget v1, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->d:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->a(I)Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;

    move-result-object v0

    .line 436
    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/y;->b()Z

    move-result v0

    .line 439
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 370
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/globalactivitylog/q;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f030086

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 371
    new-instance v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;

    invoke-direct {v2}, Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;-><init>()V

    .line 372
    const v0, 0x7f0701a7

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;->a:Landroid/widget/ImageView;

    .line 373
    const v0, 0x7f0701aa

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;->b:Landroid/widget/TextView;

    .line 374
    const v0, 0x7f0701a8

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;->c:Landroid/widget/TextView;

    .line 375
    const v0, 0x7f0701ab

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;->d:Landroid/widget/TextView;

    .line 376
    const v0, 0x7f0701ad

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;->e:Landroid/widget/TextView;

    .line 377
    const v0, 0x7f0701a9

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;->f:Landroid/widget/TextView;

    .line 378
    const v0, 0x7f0701ac

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;->g:Landroid/widget/TextView;

    .line 380
    const v0, 0x7f0701ae

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/globalactivitylog/r;->h:Landroid/widget/TextView;

    .line 383
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 384
    return-object v1
.end method

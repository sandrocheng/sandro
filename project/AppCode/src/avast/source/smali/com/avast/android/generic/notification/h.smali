.class Lcom/avast/android/generic/notification/h;
.super Landroid/support/v4/e/a;
.source "AvastNotificationFragment.java"


# instance fields
.field final synthetic a:Lcom/avast/android/generic/notification/AvastNotificationFragment;


# direct methods
.method public constructor <init>(Lcom/avast/android/generic/notification/AvastNotificationFragment;)V
    .locals 3
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/avast/android/generic/notification/h;->a:Lcom/avast/android/generic/notification/AvastNotificationFragment;

    .line 249
    invoke-virtual {p1}, Lcom/avast/android/generic/notification/AvastNotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v4/e/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 250
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 254
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/notification/i;

    .line 256
    iget-object v1, v0, Lcom/avast/android/generic/notification/i;->a:Landroid/widget/TextView;

    const-string v2, "contentTitle"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v1, v0, Lcom/avast/android/generic/notification/i;->b:Landroid/widget/TextView;

    const-string v2, "contentText"

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    iget-object v1, v0, Lcom/avast/android/generic/notification/i;->d:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/avast/android/generic/notification/h;->a:Lcom/avast/android/generic/notification/AvastNotificationFragment;

    invoke-static {v2}, Lcom/avast/android/generic/notification/AvastNotificationFragment;->b(Lcom/avast/android/generic/notification/AvastNotificationFragment;)Lcom/avast/android/generic/notification/j;

    move-result-object v2

    const-string v3, "_id"

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/avast/android/generic/notification/j;->a(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 261
    const-string v1, "ongoing"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_1

    .line 262
    const-string v1, "percentage"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v1

    .line 263
    const/high16 v2, -0x4080

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 264
    iget-object v2, v0, Lcom/avast/android/generic/notification/i;->c:Landroid/widget/TextView;

    const-string v3, "%.0f %%"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    :goto_0
    new-instance v1, Lcom/avast/android/generic/notification/AvastPendingIntent;

    invoke-direct {v1, p3}, Lcom/avast/android/generic/notification/AvastPendingIntent;-><init>(Landroid/database/Cursor;)V

    .line 274
    iput-object v1, v0, Lcom/avast/android/generic/notification/i;->f:Lcom/avast/android/generic/notification/AvastPendingIntent;

    .line 275
    iget-object v2, p0, Lcom/avast/android/generic/notification/h;->a:Lcom/avast/android/generic/notification/AvastNotificationFragment;

    invoke-virtual {v2}, Lcom/avast/android/generic/notification/AvastNotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/avast/android/generic/notification/AvastPendingIntent;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 276
    iget-object v0, v0, Lcom/avast/android/generic/notification/i;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    :goto_1
    return-void

    .line 266
    :cond_0
    iget-object v1, v0, Lcom/avast/android/generic/notification/i;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 269
    :cond_1
    iget-object v1, v0, Lcom/avast/android/generic/notification/i;->c:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/avast/android/generic/notification/h;->a:Lcom/avast/android/generic/notification/AvastNotificationFragment;

    invoke-static {v2}, Lcom/avast/android/generic/notification/AvastNotificationFragment;->c(Lcom/avast/android/generic/notification/AvastNotificationFragment;)Ljava/text/DateFormat;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    const-string v4, "timestamp"

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 278
    :cond_2
    iget-object v0, v0, Lcom/avast/android/generic/notification/i;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 284
    iget-object v0, p0, Lcom/avast/android/generic/notification/h;->a:Lcom/avast/android/generic/notification/AvastNotificationFragment;

    invoke-virtual {v0}, Lcom/avast/android/generic/notification/AvastNotificationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/avast/android/generic/v;->u:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 286
    new-instance v2, Lcom/avast/android/generic/notification/i;

    iget-object v0, p0, Lcom/avast/android/generic/notification/h;->a:Lcom/avast/android/generic/notification/AvastNotificationFragment;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/avast/android/generic/notification/i;-><init>(Lcom/avast/android/generic/notification/AvastNotificationFragment;Lcom/avast/android/generic/notification/c;)V

    .line 288
    sget v0, Lcom/avast/android/generic/t;->aq:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avast/android/generic/notification/i;->a:Landroid/widget/TextView;

    .line 289
    sget v0, Lcom/avast/android/generic/t;->E:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avast/android/generic/notification/i;->b:Landroid/widget/TextView;

    .line 290
    sget v0, Lcom/avast/android/generic/t;->P:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/avast/android/generic/notification/i;->d:Landroid/widget/ImageView;

    .line 291
    sget v0, Lcom/avast/android/generic/t;->R:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avast/android/generic/notification/i;->c:Landroid/widget/TextView;

    .line 293
    sget v0, Lcom/avast/android/generic/t;->a:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/avast/android/generic/notification/i;->e:Landroid/widget/ImageView;

    .line 295
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 296
    return-object v1
.end method

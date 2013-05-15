.class Lcom/avast/android/mobilesecurity/app/filter/q;
.super Landroid/support/v4/e/a;
.source "FilterLogsFragment.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;

.field private final b:Ljava/text/SimpleDateFormat;


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 200
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/filter/q;->a:Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;

    .line 201
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Landroid/support/v4/e/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 198
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/q;->b:Ljava/text/SimpleDateFormat;

    .line 202
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/q;->b:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 203
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    .line 207
    const-string v0, "type"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 208
    const-string v0, "direction"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 209
    const-string v0, "lookupKey"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 210
    const-string v0, "phone"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    const-string v1, "text"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 212
    const-string v1, "time"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 214
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/q;->a:Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;

    const v6, 0x7f0c02b1

    invoke-virtual {v1, v6}, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 215
    if-eqz v4, :cond_3

    .line 216
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/q;->a:Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/avast/android/mobilesecurity/app/filter/core/d;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 227
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/avast/android/mobilesecurity/app/filter/r;

    .line 228
    iget-object v0, v8, Lcom/avast/android/mobilesecurity/app/filter/r;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    if-nez v3, :cond_1

    .line 230
    iget-object v1, v8, Lcom/avast/android/mobilesecurity/app/filter/r;->d:Landroid/widget/ImageView;

    if-ne v2, v7, :cond_4

    const v0, 0x7f0200f2

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 233
    :cond_1
    if-ne v3, v7, :cond_2

    .line 234
    iget-object v1, v8, Lcom/avast/android/mobilesecurity/app/filter/r;->d:Landroid/widget/ImageView;

    if-ne v2, v7, :cond_5

    const v0, 0x7f0200f3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 238
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/q;->b:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 239
    const v6, 0x20011

    .line 242
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    iget-object v7, p0, Lcom/avast/android/mobilesecurity/app/filter/q;->a:Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;

    invoke-virtual {v7}, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static/range {v0 .. v7}, Lcom/avast/android/generic/util/k;->a(JJJILandroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 245
    iget-object v1, v8, Lcom/avast/android/mobilesecurity/app/filter/r;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 249
    :goto_3
    iget-object v0, v8, Lcom/avast/android/mobilesecurity/app/filter/r;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v1, v8, Lcom/avast/android/mobilesecurity/app/filter/r;->a:Landroid/widget/TextView;

    if-eqz v9, :cond_6

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    return-void

    .line 218
    :cond_3
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 220
    :try_start_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 223
    goto :goto_0

    .line 221
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 222
    goto :goto_0

    .line 230
    :cond_4
    const v0, 0x7f0200ec

    goto :goto_1

    .line 234
    :cond_5
    const v0, 0x7f0200ed

    goto :goto_2

    .line 246
    :catch_1
    move-exception v0

    .line 247
    iget-object v0, v8, Lcom/avast/android/mobilesecurity/app/filter/r;->b:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 250
    :cond_6
    const/16 v0, 0x8

    goto :goto_4
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 255
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/q;->a:Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/filter/FilterLogsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030082

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 258
    new-instance v2, Lcom/avast/android/mobilesecurity/app/filter/r;

    const/4 v0, 0x0

    invoke-direct {v2, p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/r;-><init>(Lcom/avast/android/mobilesecurity/app/filter/q;Lcom/avast/android/mobilesecurity/app/filter/p;)V

    .line 259
    const v0, 0x7f0701a5

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/filter/r;->d:Landroid/widget/ImageView;

    .line 260
    const v0, 0x7f070140

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/filter/r;->c:Landroid/widget/TextView;

    .line 261
    const v0, 0x7f0701a2

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/filter/r;->b:Landroid/widget/TextView;

    .line 262
    const v0, 0x7f0700a6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/filter/r;->a:Landroid/widget/TextView;

    .line 264
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 266
    return-object v1
.end method

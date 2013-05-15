.class public Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;
.super Landroid/app/Activity;
.source "MessageShieldActivity.java"


# instance fields
.field private a:Z

.field private b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

.field private c:Ljava/util/List;

.field private d:Ljava/util/Queue;

.field private e:Landroid/widget/Button;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/CheckBox;

.field private i:Landroid/widget/CheckBox;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 301
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->f:Landroid/widget/Button;

    const v1, 0x7f02017f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 304
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 305
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 306
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x2

    const/16 v8, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 212
    iput-boolean v2, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->j:Z

    .line 213
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 215
    if-nez p1, :cond_0

    .line 216
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->g()V

    .line 298
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b(Landroid/os/Bundle;)Lcom/avast/android/mobilesecurity/app/messageshield/i;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    .line 222
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->e:Lcom/avast/android/mobilesecurity/engine/p;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->e:Lcom/avast/android/mobilesecurity/engine/p;

    sget-object v3, Lcom/avast/android/mobilesecurity/engine/p;->b:Lcom/avast/android/mobilesecurity/engine/p;

    if-eq v0, v3, :cond_2

    .line 223
    :cond_1
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->g()V

    goto :goto_0

    .line 227
    :cond_2
    const-string v0, "message_ids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    const-string v0, "message_ids"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 229
    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-wide v3, v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->c:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_4

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->a:Z

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v3, v3, Lcom/avast/android/mobilesecurity/app/messageshield/i;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->h()Ljava/lang/String;

    move-result-object v5

    .line 237
    sget-object v3, Lcom/avast/android/mobilesecurity/app/messageshield/h;->a:[I

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v4, v4, Lcom/avast/android/mobilesecurity/app/messageshield/i;->b:Lcom/avast/android/mobilesecurity/engine/o;

    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/engine/o;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 295
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->g()V

    goto/16 :goto_0

    :cond_4
    move v0, v2

    .line 233
    goto :goto_2

    .line 239
    :pswitch_0
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->g:Landroid/widget/TextView;

    const v4, 0x7f0c024b

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v2

    aput-object v5, v6, v1

    invoke-virtual {p0, v4, v6}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->a()V

    goto/16 :goto_0

    .line 244
    :pswitch_1
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->g:Landroid/widget/TextView;

    const v4, 0x7f0c024c

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v0, v6, v2

    aput-object v5, v6, v1

    invoke-virtual {p0, v4, v6}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->a()V

    goto/16 :goto_0

    .line 249
    :pswitch_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->g:Landroid/widget/TextView;

    const v3, 0x7f0c024d

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v5, v1, v2

    invoke-virtual {p0, v3, v1}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->a()V

    goto/16 :goto_0

    .line 254
    :pswitch_3
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->g:Landroid/widget/TextView;

    const v4, 0x7f0c024e

    new-array v6, v7, [Ljava/lang/Object;

    aput-object v5, v6, v2

    aput-object v0, v6, v1

    invoke-virtual {p0, v4, v6}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->a()V

    goto/16 :goto_0

    .line 261
    :pswitch_4
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/i;->e:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 262
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/i;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v3, v2

    move v4, v2

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 263
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/ak;->a(I)Lcom/avast/android/mobilesecurity/engine/ak;

    move-result-object v0

    .line 264
    sget-object v7, Lcom/avast/android/mobilesecurity/engine/ak;->f:Lcom/avast/android/mobilesecurity/engine/ak;

    if-ne v0, v7, :cond_5

    move v0, v3

    move v3, v1

    :goto_4
    move v4, v3

    move v3, v0

    .line 269
    goto :goto_3

    .line 266
    :cond_5
    sget-object v7, Lcom/avast/android/mobilesecurity/engine/ak;->c:Lcom/avast/android/mobilesecurity/engine/ak;

    if-ne v0, v7, :cond_b

    move v0, v1

    move v3, v4

    .line 267
    goto :goto_4

    :cond_6
    move v3, v2

    move v4, v2

    .line 271
    :cond_7
    if-eqz v4, :cond_8

    if-eqz v3, :cond_8

    .line 272
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->g:Landroid/widget/TextView;

    const v3, 0x7f0c0251

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v5, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 289
    :goto_5
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->e:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->f:Landroid/widget/Button;

    const v2, 0x7f02017d

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 291
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 292
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 276
    :cond_8
    if-eqz v4, :cond_9

    .line 277
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->g:Landroid/widget/TextView;

    const v3, 0x7f0c024f

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v5, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 279
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_5

    .line 281
    :cond_9
    if-eqz v3, :cond_a

    .line 282
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->g:Landroid/widget/TextView;

    const v3, 0x7f0c0250

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v5, v4, v2

    invoke-virtual {p0, v3, v4}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 284
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 285
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_5

    .line 287
    :cond_a
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->g()V

    goto :goto_5

    :cond_b
    move v0, v3

    move v3, v4

    goto/16 :goto_4

    .line 237
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b()V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->j:Z

    return p1
.end method

.method private b(Landroid/os/Bundle;)Lcom/avast/android/mobilesecurity/app/messageshield/i;
    .locals 3
    .parameter

    .prologue
    .line 315
    new-instance v1, Lcom/avast/android/mobilesecurity/app/messageshield/i;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/avast/android/mobilesecurity/app/messageshield/i;-><init>(Lcom/avast/android/mobilesecurity/app/messageshield/e;)V

    .line 316
    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    .line 317
    const-string v0, "infectionType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/app/messageshield/i;->c:Ljava/lang/String;

    .line 318
    const-string v0, "result"

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/o;->a:Lcom/avast/android/mobilesecurity/engine/o;

    invoke-virtual {v2}, Lcom/avast/android/mobilesecurity/engine/o;->a()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/o;->a(I)Lcom/avast/android/mobilesecurity/engine/o;

    move-result-object v0

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/app/messageshield/i;->b:Lcom/avast/android/mobilesecurity/engine/o;

    .line 320
    const-string v0, "urlDetections_urls"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const-string v0, "urlDetections_urls"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/app/messageshield/i;->d:Ljava/util/List;

    .line 322
    const-string v0, "urlDetections_results"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/app/messageshield/i;->e:Ljava/util/List;

    .line 323
    const-string v0, "urlDetections_brandDomains"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/avast/android/mobilesecurity/app/messageshield/i;->f:Ljava/util/List;

    .line 325
    :cond_0
    return-object v1
.end method

.method private b()V
    .locals 4

    .prologue
    .line 329
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->h:Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/i;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 331
    const/4 v0, 0x0

    move v2, v0

    move-object v3, v1

    :goto_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 332
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/i;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/ak;->a(I)Lcom/avast/android/mobilesecurity/engine/ak;

    move-result-object v0

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ak;->f:Lcom/avast/android/mobilesecurity/engine/ak;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->h:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/i;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/messageshield/i;->f:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 331
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v3, v1

    goto :goto_0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/i;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/engine/ak;->a(I)Lcom/avast/android/mobilesecurity/engine/ak;

    move-result-object v0

    sget-object v1, Lcom/avast/android/mobilesecurity/engine/ak;->c:Lcom/avast/android/mobilesecurity/engine/ak;

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->i:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 338
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/i;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f0c0257

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    .line 344
    :cond_2
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->a:Z

    if-nez v0, :cond_4

    .line 345
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->d()J

    move-result-wide v0

    .line 346
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iput-object v3, v2, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->h:Ljava/lang/String;

    .line 347
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 348
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->e()V

    .line 357
    :goto_2
    return-void

    .line 350
    :cond_3
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iput-wide v0, v2, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->c:J

    .line 351
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->f()V

    goto :goto_2

    .line 354
    :cond_4
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iput-object v3, v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->h:Ljava/lang/String;

    .line 355
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->f()V

    goto :goto_2

    :cond_5
    move-object v1, v3

    goto :goto_1
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->g()V

    return-void
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->a:Z

    return p1
.end method

.method private c()V
    .locals 5

    .prologue
    .line 364
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-wide v1, v1, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->c:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v3, v3, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v3, v3, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->h:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/filter/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 368
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v3, v3, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v3, v3, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->f:Ljava/lang/String;

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v4, v4, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v4, v4, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->h:Ljava/lang/String;

    invoke-static {p0, v2, v0, v3, v4}, Lcom/avast/android/mobilesecurity/app/filter/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 371
    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->c()V

    return-void
.end method

.method public static call(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;Ljava/util/Set;Lcom/avast/android/mobilesecurity/engine/k;I)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    invoke-static {p3}, Lcom/avast/android/mobilesecurity/app/messageshield/a;->c(Lcom/avast/android/mobilesecurity/engine/k;)Lcom/avast/android/mobilesecurity/engine/l;

    move-result-object v3

    .line 111
    iget-object v0, p3, Lcom/avast/android/mobilesecurity/engine/k;->b:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 112
    new-instance v4, Ljava/util/ArrayList;

    iget-object v0, p3, Lcom/avast/android/mobilesecurity/engine/k;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 113
    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, p3, Lcom/avast/android/mobilesecurity/engine/k;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    new-instance v6, Ljava/util/ArrayList;

    iget-object v0, p3, Lcom/avast/android/mobilesecurity/engine/k;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    iget-object v0, p3, Lcom/avast/android/mobilesecurity/engine/k;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 118
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 119
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 121
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/webshield/WebshieldService;->a(Ljava/util/List;)V

    .line 122
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/engine/ah;

    .line 123
    iget-object v1, v0, Lcom/avast/android/mobilesecurity/engine/ah;->a:Lcom/avast/android/mobilesecurity/engine/ak;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/ak;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, v0, Lcom/avast/android/mobilesecurity/engine/ah;->d:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 127
    :cond_0
    const-string v0, "urlDetections_urls"

    invoke-virtual {v2, v0, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 128
    const-string v0, "urlDetections_results"

    invoke-virtual {v2, v0, v5}, Landroid/content/Intent;->putIntegerArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 129
    const-string v0, "urlDetections_brandDomains"

    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 132
    :cond_1
    const-string v0, "result"

    iget-object v1, v3, Lcom/avast/android/mobilesecurity/engine/l;->a:Lcom/avast/android/mobilesecurity/engine/o;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/engine/o;->a()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    const-string v0, "infectionType"

    iget-object v1, v3, Lcom/avast/android/mobilesecurity/engine/l;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v0, "message"

    invoke-virtual {v2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 135
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 136
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 138
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 140
    :cond_2
    const-string v0, "message_ids"

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 143
    :cond_3
    invoke-virtual {v2, p4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 145
    return-void
.end method

.method private d()J
    .locals 3

    .prologue
    .line 379
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/g;->b(Ljava/lang/String;)Z

    move-result v0

    .line 380
    if-eqz v0, :cond_0

    .line 381
    const-wide/16 v0, -0x1

    .line 383
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/avast/android/mobilesecurity/app/filter/core/g;->a(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->a:Z

    return v0
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method private e()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 392
    iput-boolean v6, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->a:Z

    .line 393
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v3, v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-wide v4, v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->i:J

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/avast/android/mobilesecurity/app/filter/core/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 396
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/g;->c(Ljava/lang/String;)V

    .line 399
    :cond_0
    return-void
.end method

.method private f()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 405
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->a:Z

    .line 406
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 407
    sget-object v0, Lcom/avast/android/mobilesecurity/app/filter/core/u;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/avast/android/mobilesecurity/app/filter/core/u;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v3, v3, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-wide v3, v3, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->c:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 411
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 412
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/avast/android/mobilesecurity/app/filter/core/u;->a:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v3, v0, v1, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 416
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->e()V

    return-void
.end method

.method private g()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->a(Landroid/os/Bundle;)V

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->finish()V

    goto :goto_0
.end method

.method private h()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 463
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v6, v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->f:Ljava/lang/String;

    .line 465
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->f:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "display_name"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 469
    if-eqz v1, :cond_1

    .line 470
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    const-string v0, "display_name"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 473
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 475
    :goto_1
    return-object v0

    :cond_0
    move-object v0, v6

    goto :goto_0

    :cond_1
    move-object v0, v6

    goto :goto_1
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 455
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 155
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 156
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->d:Ljava/util/Queue;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->c:Ljava/util/List;

    .line 158
    const v0, 0x7f03001d

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->setContentView(I)V

    .line 160
    const v0, 0x7f070068

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->g:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f07006b

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->e:Landroid/widget/Button;

    .line 163
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->e:Landroid/widget/Button;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/messageshield/e;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/messageshield/e;-><init>(Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    const v0, 0x7f07006c

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->f:Landroid/widget/Button;

    .line 172
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->f:Landroid/widget/Button;

    new-instance v1, Lcom/avast/android/mobilesecurity/app/messageshield/f;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/messageshield/f;-><init>(Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v0, 0x7f07006d

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 182
    new-instance v1, Lcom/avast/android/mobilesecurity/app/messageshield/g;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/messageshield/g;-><init>(Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const v0, 0x7f070069

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->h:Landroid/widget/CheckBox;

    .line 195
    const v0, 0x7f07006a

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->i:Landroid/widget/CheckBox;

    .line 197
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_queue"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->d:Ljava/util/Queue;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent_queue"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 200
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->g()V

    .line 204
    :goto_0
    return-void

    .line 202
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter

    .prologue
    .line 149
    const-string v0, "MessageShieldActivity: onNewIntent: adding intent to queue."

    invoke-static {v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->d:Ljava/util/Queue;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 151
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 428
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 431
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->j:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->a:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->d()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 432
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->e()V

    .line 439
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->finish()V

    .line 441
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->d:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 443
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 444
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->d:Ljava/util/Queue;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 445
    const-string v2, "intent_queue"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 446
    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->startActivity(Landroid/content/Intent;)V

    .line 448
    :cond_1
    return-void

    .line 434
    :cond_2
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/g;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageShieldActivity;->b:Lcom/avast/android/mobilesecurity/app/messageshield/i;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/i;->a:Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/messageshield/MessageToScan;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/g;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.class public Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SmsBlockOfferActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Lcom/avast/android/generic/util/s;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:J

.field private g:Z

.field private h:Ljava/util/Queue;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 86
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->j:Z

    .line 87
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->k:Z

    .line 88
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->l:Z

    .line 486
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)Lcom/avast/android/generic/util/s;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->a:Lcom/avast/android/generic/util/s;

    return-object v0
.end method

.method private a()V
    .locals 6

    .prologue
    .line 254
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 255
    iget-boolean v1, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->k:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->l:Z

    if-eqz v0, :cond_2

    .line 284
    :cond_1
    :goto_0
    return-void

    .line 261
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->l:Z

    .line 269
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->j:Z

    if-nez v0, :cond_5

    .line 270
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->g:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->i:Z

    if-nez v0, :cond_4

    .line 271
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->d:Ljava/lang/String;

    iget-wide v4, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->f:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 280
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->finish()V

    .line 283
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->h:Ljava/util/Queue;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/messageshield/c;->a(Landroid/content/Context;Ljava/util/Queue;I)V

    goto :goto_0

    .line 273
    :cond_4
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/core/g;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 276
    :cond_5
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsBlockOfferActivity.REMOVE_UUID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->j:Z

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/messageshield/c;->a(Z)V

    goto :goto_1
.end method

.method private a(Landroid/content/ContentResolver;J)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 377
    new-instance v0, Lcom/avast/android/mobilesecurity/app/filter/z;

    invoke-direct {v0, p0, p1}, Lcom/avast/android/mobilesecurity/app/filter/z;-><init>(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;Landroid/content/ContentResolver;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    const/4 v2, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 461
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 168
    iput-boolean v4, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->g:Z

    .line 169
    iput-boolean v4, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->j:Z

    .line 170
    iput-boolean v4, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->i:Z

    .line 172
    if-nez p1, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->b()V

    .line 191
    :goto_0
    return-void

    .line 177
    :cond_0
    const-string v0, "uuid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->b:Ljava/lang/String;

    .line 178
    const-string v0, "number"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->c:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 180
    :cond_1
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->b()V

    goto :goto_0

    .line 184
    :cond_2
    const-string v0, "message_text"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->d:Ljava/lang/String;

    .line 185
    const-string v0, "subject"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->e:Ljava/lang/String;

    .line 186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->f:J

    .line 188
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->m:Landroid/widget/TextView;

    const v1, 0x7f0c02ba

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->c:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->n:Landroid/widget/TextView;

    const v1, 0x7f0c02bb

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->d:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct/range {p0 .. p5}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 297
    iput-boolean v3, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->i:Z

    .line 298
    const-string v0, "SmsBlockOfferActivity"

    const-string v1, "Saving the message back to the provider, address: %s, subject: %s, text: %s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v7

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v0, Lcom/avast/android/mobilesecurity/app/filter/y;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-wide v4, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/avast/android/mobilesecurity/app/filter/y;-><init>(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    new-array v1, v7, [Ljava/lang/Void;

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    .line 314
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->a(Landroid/os/Bundle;)V

    .line 476
    :goto_0
    return-void

    .line 474
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->finish()V

    goto :goto_0
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static call(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    const-string v1, "uuid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v1, "number"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 108
    const-string v1, "message_text"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "subject"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v1, "original_extras"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 111
    invoke-virtual {v0, p6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 113
    return-void
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)J
    .locals 2
    .parameter

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->f:J

    return-wide v0
.end method

.method static synthetic f(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->b()V

    return-void
.end method

.method static synthetic g(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)Ljava/util/Queue;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->h:Ljava/util/Queue;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 11
    .parameter

    .prologue
    const v10, 0x7f07002f

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 318
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v10, :cond_2

    .line 319
    iput-boolean v4, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->g:Z

    .line 321
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 324
    iget v0, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v0

    .line 326
    const-wide/16 v6, -0x1

    cmp-long v0, v1, v6

    if-nez v0, :cond_1

    .line 327
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 328
    const-string v1, "name"

    const v2, 0x7f0c02bf

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v1, "minuteTo"

    const/16 v2, 0x59f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 330
    const-string v1, "incomingSMS"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    const-string v1, "days"

    const/16 v2, 0x7f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    invoke-static {}, Lcom/avast/android/mobilesecurity/j;->a()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v5, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 333
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    move v3, v4

    .line 339
    :goto_0
    invoke-static {v1, v2}, Lcom/avast/android/mobilesecurity/i;->a(J)Landroid/net/Uri;

    move-result-object v6

    .line 342
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 343
    const-string v8, "phone"

    iget-object v9, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->c:Ljava/lang/String;

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    const-string v8, "type"

    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 345
    invoke-virtual {v5, v6, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 347
    invoke-direct {p0, v5, v1, v2}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->a(Landroid/content/ContentResolver;J)V

    .line 349
    if-eqz v3, :cond_0

    .line 350
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 352
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 353
    invoke-static {p0, v1}, Lcom/avast/android/mobilesecurity/app/home/StartActivity;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->a:Lcom/avast/android/generic/util/s;

    invoke-virtual {v0, v10, p0}, Lcom/avast/android/generic/util/s;->b(ILandroid/os/Handler$Callback;)V

    .line 361
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->b()V

    .line 364
    :goto_1
    return v4

    .line 336
    :cond_1
    invoke-static {v1, v2}, Lcom/avast/android/mobilesecurity/j;->a(J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v4, v3

    .line 364
    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 468
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->h:Ljava/util/Queue;

    .line 119
    const-class v0, Lcom/avast/android/generic/util/s;

    invoke-static {p0, v0}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->a:Lcom/avast/android/generic/util/s;

    .line 121
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsBlockOfferActivity.REMOVE_UUID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsBlockOfferActivity.REMOVE_NUMBER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    const-string v0, "SmsBlockOfferActivity"

    const-string v1, "onCreate: Kill self flag set, stopping."

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->j:Z

    .line 126
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->finish()V

    .line 160
    :goto_0
    return-void

    .line 130
    :cond_1
    const v0, 0x7f030021

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->setContentView(I)V

    .line 132
    const v0, 0x7f07005e

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/avast/android/mobilesecurity/app/filter/w;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/filter/w;-><init>(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v0, 0x7f070074

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/avast/android/mobilesecurity/app/filter/x;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/filter/x;-><init>(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v0, 0x7f07005b

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->m:Landroid/widget/TextView;

    .line 151
    const v0, 0x7f070072

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->n:Landroid/widget/TextView;

    .line 153
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent_queue"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->h:Ljava/util/Queue;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent_queue"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 156
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->b()V

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 245
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 246
    const-string v0, "SmsBlockOfferActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy called, finishing, message blocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->a()V

    .line 248
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 195
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 196
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsBlockOfferActivity.REMOVE_UUID"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 197
    const-string v0, "uuid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    const-string v0, "SmsBlockOfferActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewIntent: Removing uuid from queue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 202
    const-string v3, "uuid"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 208
    iput-boolean v4, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->j:Z

    .line 209
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->b()V

    .line 211
    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/messageshield/c;->a(Z)V

    .line 234
    :cond_3
    :goto_1
    return-void

    .line 213
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmsBlockOfferActivity.REMOVE_NUMBER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 214
    const-string v0, "number"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 215
    const-string v0, "SmsBlockOfferActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewIntent: Removing number from queue: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->h:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 218
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 219
    const-string v3, "number"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 221
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 224
    :cond_6
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    iput-boolean v4, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->j:Z

    .line 226
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->b()V

    goto :goto_1

    .line 232
    :cond_7
    const-string v0, "SmsBlockOfferActivity"

    const-string v1, "onNewIntent: adding intent to queue."

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->h:Ljava/util/Queue;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 238
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 239
    const-string v0, "SmsBlockOfferActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop called, finishing, message blocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->a()V

    .line 241
    return-void
.end method

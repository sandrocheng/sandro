.class Lcom/avast/android/mobilesecurity/app/filter/aa;
.super Lcom/avast/android/mobilesecurity/app/filter/core/f;
.source "SmsBlockOfferActivity.java"


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/avast/android/mobilesecurity/app/filter/z;


# direct methods
.method constructor <init>(Lcom/avast/android/mobilesecurity/app/filter/z;Landroid/content/Context;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 393
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/filter/aa;->b:Lcom/avast/android/mobilesecurity/app/filter/z;

    iput-wide p3, p0, Lcom/avast/android/mobilesecurity/app/filter/aa;->a:J

    invoke-direct {p0, p2}, Lcom/avast/android/mobilesecurity/app/filter/core/f;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 396
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 397
    const-string v0, "SmsBlockOfferActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LookupSupport matched id \'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\' and we want \'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v7, p0, Lcom/avast/android/mobilesecurity/app/filter/aa;->a:J

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\'"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "."

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-wide v7, p0, Lcom/avast/android/mobilesecurity/app/filter/aa;->a:J

    cmp-long v0, v5, v7

    if-eqz v0, :cond_1

    .line 449
    :cond_0
    :goto_0
    return-void

    .line 404
    :cond_1
    const-string v0, "incomingSMS"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_3

    move v0, v3

    .line 406
    :goto_1
    const-string v2, "SmsBlockOfferActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "LookupSupport matched group blocks messages: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/aa;->b:Lcom/avast/android/mobilesecurity/app/filter/z;

    iput-boolean v4, v0, Lcom/avast/android/mobilesecurity/app/filter/z;->a:Z

    .line 415
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 416
    const-string v5, "lookupKey"

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    const-string v0, "phone"

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/filter/aa;->b:Lcom/avast/android/mobilesecurity/app/filter/z;

    iget-object v5, v5, Lcom/avast/android/mobilesecurity/app/filter/z;->c:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-static {v5}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->b(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const-string v0, "text"

    iget-object v5, p0, Lcom/avast/android/mobilesecurity/app/filter/aa;->b:Lcom/avast/android/mobilesecurity/app/filter/z;

    iget-object v5, v5, Lcom/avast/android/mobilesecurity/app/filter/z;->c:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-static {v5}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->d(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v0, "groupId"

    iget-wide v5, p0, Lcom/avast/android/mobilesecurity/app/filter/aa;->a:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 420
    const-string v0, "type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    const-string v0, "direction"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/aa;->b:Lcom/avast/android/mobilesecurity/app/filter/z;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/filter/z;->b:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/avast/android/mobilesecurity/k;->a()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 425
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/aa;->b:Lcom/avast/android/mobilesecurity/app/filter/z;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/filter/z;->c:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->h(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 426
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 427
    const-string v2, "number"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 428
    if-eqz v6, :cond_2

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/aa;->b:Lcom/avast/android/mobilesecurity/app/filter/z;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/filter/z;->c:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->b(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 429
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 430
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 431
    const-string v8, "lookupKey"

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v7, v8, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v2, "phone"

    invoke-virtual {v7, v2, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v2, "text"

    const-string v6, "message_text"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const-string v0, "groupId"

    iget-wide v8, p0, Lcom/avast/android/mobilesecurity/app/filter/aa;->a:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 436
    const-string v0, "type"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    const-string v0, "direction"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 438
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/aa;->b:Lcom/avast/android/mobilesecurity/app/filter/z;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/filter/z;->b:Landroid/content/ContentResolver;

    invoke-static {}, Lcom/avast/android/mobilesecurity/k;->a()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2

    :cond_3
    move v0, v4

    .line 404
    goto/16 :goto_1

    .line 443
    :cond_4
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/aa;->b:Lcom/avast/android/mobilesecurity/app/filter/z;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/filter/z;->c:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    const-class v2, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 445
    const-string v1, "SmsBlockOfferActivity.REMOVE_NUMBER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 446
    const-string v1, "number"

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/aa;->b:Lcom/avast/android/mobilesecurity/app/filter/z;

    iget-object v2, v2, Lcom/avast/android/mobilesecurity/app/filter/z;->c:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->b(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 448
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/aa;->b:Lcom/avast/android/mobilesecurity/app/filter/z;

    iget-object v1, v1, Lcom/avast/android/mobilesecurity/app/filter/z;->c:Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;

    invoke-virtual {v1, v0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.class public Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;
.super Lcom/avast/android/generic/util/ga/TrackedListFragment;
.source "FilterContactsFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Lcom/avast/android/mobilesecurity/app/filter/h;

.field private c:Lcom/avast/android/generic/util/x;

.field private d:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;-><init>()V

    .line 83
    new-instance v0, Lcom/avast/android/mobilesecurity/app/filter/d;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/filter/d;-><init>(Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->d:Landroid/os/Handler$Callback;

    .line 558
    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    .line 232
    new-instance v0, Lcom/avast/android/generic/ui/CustomNumberDialog;

    invoke-direct {v0}, Lcom/avast/android/generic/ui/CustomNumberDialog;-><init>()V

    .line 233
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog_custom_number"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method private a(I)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 252
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->a:Landroid/net/Uri;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/i;->a(Landroid/net/Uri;)J

    move-result-wide v0

    .line 254
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 256
    packed-switch p1, :pswitch_data_0

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 258
    :pswitch_0
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->d()Lcom/avast/android/mobilesecurity/app/filter/core/e;

    move-result-object v3

    iget-boolean v3, v3, Lcom/avast/android/mobilesecurity/app/filter/core/e;->b:Z

    if-nez v3, :cond_0

    .line 259
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 260
    const-string v4, "hiddenNumbers"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 261
    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->c:Lcom/avast/android/generic/util/x;

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/j;->a(J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/avast/android/generic/util/x;->a(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 263
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 264
    const-string v1, "type"

    const/16 v3, 0x16

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->a:Landroid/net/Uri;

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 269
    :pswitch_1
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->d()Lcom/avast/android/mobilesecurity/app/filter/core/e;

    move-result-object v3

    iget-boolean v3, v3, Lcom/avast/android/mobilesecurity/app/filter/core/e;->a:Z

    if-nez v3, :cond_0

    .line 270
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 271
    const-string v4, "unknownNumbers"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 272
    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->c:Lcom/avast/android/generic/util/x;

    invoke-static {v0, v1}, Lcom/avast/android/mobilesecurity/j;->a(J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Lcom/avast/android/generic/util/x;->a(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 274
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 275
    const-string v1, "type"

    const/16 v3, 0x15

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 276
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->a:Landroid/net/Uri;

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0

    .line 280
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 281
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 283
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 286
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/avast/android/mobilesecurity/app/filter/FilterSmsPickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    invoke-virtual {p0, v0, v5}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 290
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/avast/android/mobilesecurity/app/filter/FilterCallLogPickerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 294
    :pswitch_5
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->a()V

    goto/16 :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(IJ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 207
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->a:Landroid/net/Uri;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/i;->a(Landroid/net/Uri;)J

    move-result-wide v1

    .line 209
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->b:Lcom/avast/android/mobilesecurity/app/filter/h;

    invoke-virtual {v0, p1}, Lcom/avast/android/mobilesecurity/app/filter/h;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 210
    const-string v3, "type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 211
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v1, v2, p2, p3}, Lcom/avast/android/mobilesecurity/i;->a(JJ)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 216
    const/16 v3, 0x16

    if-ne v0, v3, :cond_0

    .line 217
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 218
    const-string v4, "hiddenNumbers"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 219
    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->c:Lcom/avast/android/generic/util/x;

    invoke-static {v1, v2}, Lcom/avast/android/mobilesecurity/j;->a(J)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/avast/android/generic/util/x;->a(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 221
    :cond_0
    const/16 v3, 0x15

    if-ne v0, v3, :cond_1

    .line 222
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 223
    const-string v3, "unknownNumbers"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 224
    iget-object v3, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->c:Lcom/avast/android/generic/util/x;

    invoke-static {v1, v2}, Lcom/avast/android/mobilesecurity/j;->a(J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Lcom/avast/android/generic/util/x;->a(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 226
    :cond_1
    return-void
.end method

.method private a(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 409
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/avast/android/mobilesecurity/app/filter/core/d;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 410
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 411
    const-string v2, "phone"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v0, "type"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 413
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->a:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 414
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 323
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 324
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 325
    if-eqz v1, :cond_1

    .line 326
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    const-string v2, "lookup"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 329
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 330
    const-string v4, "lookupKey"

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v2, "type"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 332
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 334
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 336
    :cond_1
    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 5
    .parameter

    .prologue
    const v4, 0x7f070128

    const v3, 0x7f0700cd

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 477
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 479
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 484
    :goto_0
    return-void

    .line 481
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 482
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->c()V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 423
    if-eqz p2, :cond_0

    .line 424
    invoke-static {p1}, Lcom/avast/android/mobilesecurity/app/filter/core/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 429
    :goto_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 430
    invoke-direct {p0, v1, v0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->b(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 431
    return-void

    .line 426
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/avast/android/mobilesecurity/app/filter/core/d;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;)Landroid/net/Uri;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->a:Landroid/net/Uri;

    return-object v0
.end method

.method private b(Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 440
    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/avast/android/generic/ui/CustomNumberDialog;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 442
    const-string v1, "phone"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v1, "type"

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 444
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->a:Landroid/net/Uri;

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 446
    :cond_0
    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 344
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 345
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 347
    const-string v1, "contact_uris"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 348
    const-string v1, "contact_uris"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 350
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 351
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "lookup"

    aput-object v4, v2, v8

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 353
    if-eqz v1, :cond_0

    .line 354
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 355
    const-string v2, "lookup"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 357
    const-string v4, "lookupKey"

    invoke-virtual {v6, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v2, "type"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 359
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 361
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 365
    :cond_2
    const-string v1, "numbers"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 366
    const-string v1, "numbers"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 368
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 369
    invoke-direct {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->a(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_1

    .line 372
    :cond_3
    return-void
.end method

.method private c()V
    .locals 3

    .prologue
    .line 240
    new-instance v0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment$AddOperationDialog;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment$AddOperationDialog;-><init>(Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;)V

    .line 241
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog_add_operation"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 380
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 381
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 383
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 384
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "lookup"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 386
    if-eqz v1, :cond_1

    .line 387
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 388
    const-string v2, "lookup"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 390
    const-string v3, "lookupKey"

    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v2, "type"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 392
    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->a:Landroid/net/Uri;

    invoke-virtual {v0, v2, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 394
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 400
    :cond_1
    :goto_0
    return-void

    .line 396
    :cond_2
    const-string v1, "number"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 397
    const-string v1, "number"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 398
    invoke-direct {p0, v0, v1}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->a(Landroid/content/ContentResolver;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()Lcom/avast/android/mobilesecurity/app/filter/core/e;
    .locals 3

    .prologue
    .line 455
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->a:Landroid/net/Uri;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/i;->a(Landroid/net/Uri;)J

    move-result-wide v0

    .line 456
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/avast/android/mobilesecurity/app/filter/core/d;->a(Landroid/content/Context;J)Lcom/avast/android/mobilesecurity/app/filter/core/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 164
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->b:Lcom/avast/android/mobilesecurity/app/filter/h;

    invoke-virtual {v0, p2}, Lcom/avast/android/mobilesecurity/app/filter/h;->changeCursor(Landroid/database/Cursor;)V

    .line 165
    if-eqz p2, :cond_0

    .line 166
    invoke-direct {p0, p2}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->a(Landroid/database/Cursor;)V

    .line 168
    :cond_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const-string v0, "/ms/filter/group/contacts"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 150
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 151
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->registerForContextMenu(Landroid/view/View;)V

    .line 153
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/util/s;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    const v1, 0x7f070021

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->d:Landroid/os/Handler$Callback;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/util/s;->a(ILandroid/os/Handler$Callback;)V

    .line 155
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 304
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/BaseActivity;

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/BaseActivity;->a(Z)V

    .line 306
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 307
    if-nez p1, :cond_1

    .line 308
    invoke-direct {p0, p3}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->a(Landroid/content/Intent;)V

    .line 315
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    if-ne p1, v1, :cond_2

    .line 310
    invoke-direct {p0, p3}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->b(Landroid/content/Intent;)V

    goto :goto_0

    .line 311
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 312
    invoke-direct {p0, p3}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->c(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 198
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 202
    :goto_0
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 200
    :pswitch_0
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget-wide v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->id:J

    invoke-direct {p0, v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->a(IJ)V

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x7f07023a
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    new-instance v0, Lcom/avast/android/mobilesecurity/app/filter/h;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/avast/android/mobilesecurity/app/filter/h;-><init>(Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->b:Lcom/avast/android/mobilesecurity/app/filter/h;

    .line 105
    new-instance v0, Lcom/avast/android/generic/util/x;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, v2}, Lcom/avast/android/generic/util/x;-><init>(Landroid/content/ContentResolver;Lcom/avast/android/generic/util/y;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->c:Lcom/avast/android/generic/util/x;

    .line 106
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->b:Lcom/avast/android/mobilesecurity/app/filter/h;

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 109
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/ui/BaseActivity;->a(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->a:Landroid/net/Uri;

    .line 111
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->a:Landroid/net/Uri;

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->j()V

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/a/m;

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 188
    invoke-super {p0, p1, p2, p3}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 189
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 190
    const/high16 v1, 0x7f10

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 191
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/m;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 159
    new-instance v0, Landroid/support/v4/a/f;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->a:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/a/f;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    const v0, 0x7f03004d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 124
    const v1, 0x7f070129

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/avast/android/mobilesecurity/app/filter/e;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/filter/e;-><init>(Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v1, 0x7f07005b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->d()Lcom/avast/android/mobilesecurity/app/filter/core/e;

    move-result-object v3

    iget-object v3, v3, Lcom/avast/android/mobilesecurity/app/filter/core/e;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0c029e

    invoke-virtual {p0, v3}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    const v1, 0x7f070127

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/avast/android/mobilesecurity/app/filter/f;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/filter/f;-><init>(Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 471
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onDestroy()V

    .line 472
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/util/s;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/util/s;

    const v1, 0x7f070021

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->d:Landroid/os/Handler$Callback;

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/util/s;->b(ILandroid/os/Handler$Callback;)V

    .line 474
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 177
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->b:Lcom/avast/android/mobilesecurity/app/filter/h;

    invoke-virtual {v0, p3}, Lcom/avast/android/mobilesecurity/app/filter/h;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    .line 179
    const-string v2, "lookupKey"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_0

    .line 181
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v2, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 184
    :cond_0
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/m;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/m;)V
    .locals 2
    .parameter

    .prologue
    .line 172
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->b:Lcom/avast/android/mobilesecurity/app/filter/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/filter/h;->changeCursor(Landroid/database/Cursor;)V

    .line 173
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 450
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onResume()V

    .line 451
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/FilterContactsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/BaseActivity;->a(Z)V

    .line 452
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 461
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onStart()V

    .line 462
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 466
    invoke-super {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onStop()V

    .line 467
    return-void
.end method

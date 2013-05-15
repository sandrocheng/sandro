.class public Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity$GroupSelectDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "SmsBlockOfferActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 486
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method private a([I[Ljava/lang/String;)Landroid/app/Dialog;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity$GroupSelectDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/util/al;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 549
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 550
    const v0, 0x7f0c02be

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 551
    new-instance v0, Lcom/avast/android/mobilesecurity/app/filter/ab;

    invoke-direct {v0, p0, p1}, Lcom/avast/android/mobilesecurity/app/filter/ab;-><init>(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity$GroupSelectDialog;[I)V

    invoke-virtual {v1, p2, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 561
    new-instance v0, Lcom/avast/android/mobilesecurity/app/filter/ac;

    invoke-direct {v0, p0}, Lcom/avast/android/mobilesecurity/app/filter/ac;-><init>(Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity$GroupSelectDialog;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 568
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 569
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setInverseBackgroundForced(Z)V

    .line 571
    return-object v0
.end method

.method public static a(Landroid/support/v4/app/FragmentManager;)V
    .locals 2
    .parameter

    .prologue
    .line 494
    const-string v0, "dialog"

    invoke-virtual {p0, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 495
    if-nez v0, :cond_0

    .line 496
    new-instance v0, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity$GroupSelectDialog;

    invoke-direct {v0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity$GroupSelectDialog;-><init>()V

    .line 497
    const-string v1, "dialog"

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 499
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 504
    .line 510
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity$GroupSelectDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/avast/android/mobilesecurity/j;->a()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v4, "name"

    aput-object v4, v2, v6

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 512
    if-eqz v2, :cond_3

    .line 513
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [I

    .line 514
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    .line 516
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    const-string v0, "_id"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 518
    const-string v0, "name"

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    move v0, v6

    .line 520
    :cond_0
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    aput v7, v1, v0

    .line 521
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v0

    .line 522
    add-int/lit8 v0, v0, 0x1

    .line 523
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-nez v7, :cond_0

    .line 525
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v0, v3

    .line 528
    :goto_0
    if-nez v1, :cond_2

    .line 529
    new-array v1, v6, [I

    .line 530
    new-array v0, v6, [Ljava/lang/String;

    .line 534
    :cond_2
    const/4 v2, -0x1

    aput v2, v1, v8

    .line 535
    const v2, 0x7f0c029d

    invoke-virtual {p0, v2}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity$GroupSelectDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    .line 537
    invoke-direct {p0, v1, v0}, Lcom/avast/android/mobilesecurity/app/filter/SmsBlockOfferActivity$GroupSelectDialog;->a([I[Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_3
    move-object v0, v3

    move-object v1, v3

    goto :goto_0
.end method

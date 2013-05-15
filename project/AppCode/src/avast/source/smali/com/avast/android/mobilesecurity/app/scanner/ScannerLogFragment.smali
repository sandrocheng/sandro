.class public Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;
.super Lcom/avast/android/generic/util/ga/TrackedListFragment;
.source "ScannerLogFragment.java"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/avast/android/generic/ui/widget/f;
.implements Lcom/avast/android/generic/util/y;
.implements Lcom/avast/android/mobilesecurity/app/scanner/ap;


# static fields
.field private static m:Ljava/util/ArrayList;

.field private static n:Ljava/util/ArrayList;


# instance fields
.field private a:Lcom/avast/android/generic/util/x;

.field private b:Landroid/os/Handler;

.field private c:Lcom/avast/android/mobilesecurity/app/scanner/ac;

.field private d:Lcom/avast/android/mobilesecurity/t;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/avast/android/generic/util/ga/TrackedListFragment;-><init>()V

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->h:I

    .line 596
    return-void
.end method

.method static synthetic a(Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->j()V

    return-void
.end method

.method static synthetic b(Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 70
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->i:I

    return v0
.end method

.method static synthetic c(Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 70
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->j:I

    return v0
.end method

.method static synthetic d(Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;)I
    .locals 1
    .parameter

    .prologue
    .line 70
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->k:I

    return v0
.end method

.method private d()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 410
    sget-object v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->m:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "package:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 412
    sget-object v3, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 413
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 414
    invoke-virtual {p0, v2, v1}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->startActivityForResult(Landroid/content/Intent;I)V

    move v0, v1

    .line 421
    :goto_0
    return v0

    .line 416
    :cond_0
    sget-object v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->n:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 417
    new-instance v0, Lcom/avast/android/mobilesecurity/app/scanner/f;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/avast/android/mobilesecurity/app/scanner/f;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->n:Ljava/util/ArrayList;

    sget-object v3, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    move v0, v1

    .line 419
    goto :goto_0

    :cond_1
    move v0, v2

    .line 421
    goto :goto_0
.end method

.method static synthetic e(Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->f:Landroid/view/View;

    return-object v0
.end method

.method private e()V
    .locals 1

    .prologue
    .line 473
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/widget/WidgetControlProvider;->a(Landroid/content/Context;)V

    .line 474
    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 234
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/notification/j;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/notification/j;

    iget v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->l:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->l:I

    int-to-long v3, v1

    :goto_0
    invoke-virtual {v0, v3, v4}, Lcom/avast/android/generic/notification/j;->a(J)V

    .line 237
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->a:Lcom/avast/android/generic/util/x;

    const/4 v1, 0x2

    invoke-static {}, Lcom/avast/android/mobilesecurity/q;->c()Landroid/net/Uri;

    move-result-object v3

    const-string v5, "result = ?"

    new-array v6, v9, [Ljava/lang/String;

    sget-object v4, Lcom/avast/android/mobilesecurity/engine/x;->l:Lcom/avast/android/mobilesecurity/engine/x;

    invoke-virtual {v4}, Lcom/avast/android/mobilesecurity/engine/x;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v8

    move-object v4, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/avast/android/generic/util/x;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->a:Lcom/avast/android/generic/util/x;

    const/4 v1, 0x3

    invoke-static {}, Lcom/avast/android/mobilesecurity/q;->a()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "result != ?"

    new-array v5, v9, [Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/avast/android/mobilesecurity/engine/x;->l:Lcom/avast/android/mobilesecurity/engine/x;

    invoke-virtual {v7}, Lcom/avast/android/mobilesecurity/engine/x;->a()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/avast/android/generic/util/x;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 242
    return-void

    .line 234
    :cond_0
    const-wide/32 v3, 0x7f0b000e

    goto :goto_0
.end method

.method public a(I)V
    .locals 7
    .parameter

    .prologue
    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->c:Lcom/avast/android/mobilesecurity/app/scanner/ac;

    iget v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->h:I

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/scanner/ac;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 523
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;

    .line 524
    packed-switch p1, :pswitch_data_0

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 526
    :pswitch_0
    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 527
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 528
    new-instance v2, Ljava/io/File;

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;->c:Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 529
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 530
    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 583
    :catch_0
    move-exception v0

    goto :goto_0

    .line 532
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DELETE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 534
    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 539
    :pswitch_1
    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 540
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;->c:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 545
    :goto_1
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 546
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    const-string v4, "reportDialog"

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    .line 548
    if-eqz v3, :cond_2

    .line 549
    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 553
    :cond_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 554
    const-string v4, "uri"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 555
    const-string v1, "result"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;->e:Lcom/avast/android/mobilesecurity/engine/x;

    invoke-virtual {v5}, Lcom/avast/android/mobilesecurity/engine/x;->a()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v1, "infectionType"

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;->d:Ljava/lang/String;

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    new-instance v0, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;

    invoke-direct {v0, v3}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;-><init>(Landroid/os/Bundle;)V

    .line 558
    const-string v1, "reportDialog"

    invoke-virtual {v0, v2, v1}, Lcom/avast/android/mobilesecurity/app/scanner/ReportDialogFragment;->show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 542
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 561
    :pswitch_2
    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;->e:Lcom/avast/android/mobilesecurity/engine/x;

    sget-object v2, Lcom/avast/android/mobilesecurity/engine/x;->l:Lcom/avast/android/mobilesecurity/engine/x;

    if-eq v1, v2, :cond_5

    .line 563
    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 564
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/avast/android/mobilesecurity/q;->a()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "name = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;->c:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 570
    :goto_2
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 571
    new-instance v1, Lcom/avast/android/mobilesecurity/app/scanner/ab;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/scanner/ab;-><init>(Landroid/content/Context;Lcom/avast/android/mobilesecurity/app/scanner/y;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/avast/android/mobilesecurity/app/scanner/ae;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/avast/android/generic/util/b;->a(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 567
    :cond_4
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/avast/android/mobilesecurity/q;->a()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "packageName = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;->b:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    .line 577
    :cond_5
    :pswitch_3
    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 578
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;->b:Ljava/lang/String;

    const/4 v2, 0x0

    const v3, 0x7f0700dd

    invoke-static {v1, v0, v2, v3}, Lcom/avast/android/mobilesecurity/app/manager/AppDetailActivity;->call(Landroid/content/Context;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 524
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(ILjava/lang/Object;Landroid/database/Cursor;Landroid/net/Uri;I)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 443
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 444
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->m:Ljava/util/ArrayList;

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->n:Ljava/util/ArrayList;

    .line 447
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    const-string v0, "packageName"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 449
    if-eqz v0, :cond_0

    .line 450
    sget-object v1, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 452
    :cond_0
    sget-object v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->n:Ljava/util/ArrayList;

    const-string v1, "name"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 455
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 458
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->d()Z

    .line 460
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    if-lez p5, :cond_3

    .line 461
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    .line 462
    invoke-virtual {v0, v2}, Lcom/avast/android/mobilesecurity/t;->d(I)V

    .line 463
    invoke-virtual {v0, v2}, Lcom/avast/android/mobilesecurity/t;->e(I)V

    .line 464
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->e()V

    .line 466
    :cond_3
    return-void
.end method

.method public a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V
    .locals 19
    .parameter
    .parameter

    .prologue
    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/support/v4/a/m;->k()I

    move-result v1

    const/16 v2, 0x2712

    if-ne v1, v2, :cond_0

    .line 294
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->i:I

    .line 295
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->j:I

    .line 296
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->k:I

    .line 297
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 298
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 299
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_8

    .line 300
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 301
    const-string v1, "_id"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 302
    const-string v1, "packageName"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 303
    const-string v1, "name"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 304
    const-string v1, "result"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 305
    const-string v1, "infection"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 306
    const-string v1, "detection_type"

    move-object/from16 v0, p2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 308
    :cond_2
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 309
    move-object/from16 v0, p2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 310
    move-object/from16 v0, p2

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 311
    move-object/from16 v0, p2

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 312
    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/engine/v;->a(I)Lcom/avast/android/mobilesecurity/engine/v;

    move-result-object v17

    .line 313
    move-object/from16 v0, p2

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Lcom/avast/android/mobilesecurity/engine/x;->a(I)Lcom/avast/android/mobilesecurity/engine/x;

    move-result-object v18

    .line 317
    const/4 v1, 0x1

    .line 318
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 322
    const/4 v1, 0x0

    move v2, v1

    move-object v3, v4

    .line 325
    :goto_1
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 326
    if-nez v1, :cond_3

    .line 327
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 328
    invoke-interface {v7, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    sget-object v3, Lcom/avast/android/mobilesecurity/engine/x;->l:Lcom/avast/android/mobilesecurity/engine/x;

    move-object/from16 v0, v18

    if-ne v0, v3, :cond_6

    .line 331
    if-eqz v2, :cond_5

    .line 332
    move-object/from16 v0, p0

    iget v2, v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->i:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->i:I

    .line 341
    :cond_3
    :goto_2
    new-instance v2, Lcom/avast/android/mobilesecurity/app/scanner/ae;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/avast/android/mobilesecurity/app/scanner/ae;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/y;)V

    .line 342
    iput-wide v14, v2, Lcom/avast/android/mobilesecurity/app/scanner/ae;->a:J

    .line 343
    iput-object v5, v2, Lcom/avast/android/mobilesecurity/app/scanner/ae;->b:Ljava/lang/String;

    .line 344
    iput-object v4, v2, Lcom/avast/android/mobilesecurity/app/scanner/ae;->c:Ljava/lang/String;

    .line 345
    move-object/from16 v0, v16

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/scanner/ae;->d:Ljava/lang/String;

    .line 346
    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/scanner/ae;->e:Lcom/avast/android/mobilesecurity/engine/x;

    .line 347
    move-object/from16 v0, v17

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/scanner/ae;->f:Lcom/avast/android/mobilesecurity/engine/v;

    .line 349
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 353
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->c:Lcom/avast/android/mobilesecurity/app/scanner/ac;

    invoke-virtual {v1, v6, v7}, Lcom/avast/android/mobilesecurity/app/scanner/ac;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->g:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0014

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    invoke-virtual/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v1, v2}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/avast/android/mobilesecurity/t;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/t;->am()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 358
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->e:Landroid/view/View;

    const v2, 0x7f070059

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020127

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 360
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->e:Landroid/view/View;

    const v2, 0x7f0701b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f020180

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 362
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->g:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090011

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 370
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->f:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 371
    invoke-virtual/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 372
    invoke-virtual/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 334
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->j:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->j:I

    goto/16 :goto_2

    .line 337
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->k:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->k:I

    goto/16 :goto_2

    .line 364
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->e:Landroid/view/View;

    const v2, 0x7f070059

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f020128

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 366
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->e:Landroid/view/View;

    const v2, 0x7f0701b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f020187

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 368
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->g:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 375
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->c:Lcom/avast/android/mobilesecurity/app/scanner/ac;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/avast/android/mobilesecurity/app/scanner/ac;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->b:Landroid/os/Handler;

    new-instance v2, Lcom/avast/android/mobilesecurity/app/scanner/aa;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/avast/android/mobilesecurity/app/scanner/aa;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/a/p;->a(Landroid/content/Context;)Landroid/support/v4/a/p;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.avast.android.mobilesecurity.app.scanner.ACTION_LOG_CLEARED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/a/p;->a(Landroid/content/Intent;)Z

    .line 391
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->e()V

    goto/16 :goto_0

    :cond_a
    move v2, v1

    move-object v3, v5

    goto/16 :goto_1
.end method

.method public a_()I
    .locals 1

    .prologue
    .line 155
    const v0, 0x7f0c01fd

    return v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    const-string v0, "/ms/scanner/log"

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 251
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 253
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 254
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 255
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->c:Lcom/avast/android/mobilesecurity/app/scanner/ac;

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 256
    new-instance v0, Lcom/avast/android/generic/util/x;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/avast/android/generic/util/x;-><init>(Landroid/content/ContentResolver;Lcom/avast/android/generic/util/y;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->a:Lcom/avast/android/generic/util/x;

    .line 257
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/16 v1, 0x2712

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/a/m;

    .line 258
    if-eqz p1, :cond_1

    .line 261
    const-string v0, "appsToDelete"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sput-object v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->m:Ljava/util/ArrayList;

    .line 262
    const-string v0, "filesToDelete"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    sput-object v0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->n:Ljava/util/ArrayList;

    .line 263
    const-string v0, "notificationId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->l:I

    .line 264
    const-string v0, "selectedPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->h:I

    .line 265
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->d()Z

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/avast/android/generic/ui/BaseActivity;->a(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 268
    const-string v1, "notificationId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    const-string v1, "notificationId"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->l:I

    .line 270
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->l:I

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/notification/j;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/notification/j;

    iget v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->l:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/notification/j;->a(J)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 426
    const-string v0, "ScannerLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult(), request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avast/android/generic/util/m;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    const/4 v0, 0x0

    .line 429
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 432
    invoke-direct {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->d()Z

    move-result v0

    .line 436
    :goto_0
    if-eqz v0, :cond_0

    .line 437
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ui/BaseActivity;

    invoke-virtual {v0}, Lcom/avast/android/generic/ui/BaseActivity;->f()V

    .line 439
    :cond_0
    return-void

    .line 434
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 162
    new-instance v0, Lcom/avast/android/mobilesecurity/app/scanner/ac;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/avast/android/mobilesecurity/app/scanner/ac;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->c:Lcom/avast/android/mobilesecurity/app/scanner/ac;

    .line 163
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->b:Landroid/os/Handler;

    .line 164
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/mobilesecurity/t;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/t;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->d:Lcom/avast/android/mobilesecurity/t;

    .line 165
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/a/m;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 279
    new-instance v0, Landroid/support/v4/a/f;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/avast/android/mobilesecurity/q;->a()Landroid/net/Uri;

    move-result-object v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/a/f;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v9, 0x0

    const v8, 0x7f070158

    const/4 v7, 0x0

    .line 178
    const v0, 0x7f030062

    invoke-virtual {p1, v0, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 180
    const v0, 0x7f070128

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->f:Landroid/view/View;

    .line 182
    const v0, 0x7f0700f3

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/avast/android/mobilesecurity/app/scanner/y;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/scanner/y;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/avast/android/generic/ae;

    invoke-static {v0, v1}, Lcom/avast/android/generic/ad;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/generic/ae;

    .line 194
    const v1, 0x7f07014f

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "lastScanObjects"

    invoke-virtual {v0, v4, v7}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    const-string v1, "lastScanTime"

    invoke-virtual {v0, v1, v7}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;I)I

    move-result v3

    .line 197
    const v1, 0x7f070151

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v4, "%d:%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    div-int/lit8 v6, v3, 0x3c

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x1

    rem-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    const-string v1, "lastScanDate"

    invoke-virtual {v0, v1, v9, v10}, Lcom/avast/android/generic/ae;->b(Ljava/lang/String;J)J

    move-result-wide v3

    .line 200
    cmp-long v0, v3, v9

    if-nez v0, :cond_0

    .line 205
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c0200

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    :goto_0
    const v0, 0x7f03008a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->e:Landroid/view/View;

    .line 214
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->e:Landroid/view/View;

    const v1, 0x7f07005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->g:Landroid/widget/TextView;

    .line 215
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->e:Landroid/view/View;

    const v1, 0x7f0701b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/avast/android/mobilesecurity/app/scanner/z;

    invoke-direct {v1, p0}, Lcom/avast/android/mobilesecurity/app/scanner/z;-><init>(Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    return-object v2

    .line 207
    :cond_0
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v5, 0x20011

    invoke-static {v1, v3, v4, v5}, Lcom/avast/android/generic/util/k;->a(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v7, 0x7f0c01e8

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x0

    .line 478
    add-int/lit8 v0, p3, -0x1

    .line 479
    iput v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->h:I

    .line 481
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->c:Lcom/avast/android/mobilesecurity/app/scanner/ac;

    iget v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->h:I

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/scanner/ac;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 482
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;

    .line 485
    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    .line 489
    :goto_0
    iget-object v4, v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;->e:Lcom/avast/android/mobilesecurity/engine/x;

    sget-object v5, Lcom/avast/android/mobilesecurity/engine/x;->l:Lcom/avast/android/mobilesecurity/engine/x;

    if-eq v4, v5, :cond_0

    .line 490
    add-int/lit8 v1, v1, 0x1

    .line 493
    :cond_0
    new-array v1, v1, [Ljava/lang/String;

    .line 494
    iget-object v4, v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;->b:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 495
    const v4, 0x7f0c021d

    invoke-virtual {p0, v4}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v6

    .line 499
    :goto_1
    const/4 v4, 0x1

    const v5, 0x7f0c021e

    invoke-virtual {p0, v5}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    .line 500
    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/scanner/ae;->e:Lcom/avast/android/mobilesecurity/engine/x;

    sget-object v4, Lcom/avast/android/mobilesecurity/engine/x;->l:Lcom/avast/android/mobilesecurity/engine/x;

    if-eq v0, v4, :cond_3

    .line 501
    const v0, 0x7f0c021f

    invoke-virtual {p0, v0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    .line 502
    array-length v0, v1

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    .line 503
    invoke-virtual {p0, v7}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    .line 511
    :cond_1
    :goto_2
    new-instance v0, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;

    invoke-direct {v0}, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;-><init>()V

    .line 512
    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;->a([Ljava/lang/String;)Lcom/avast/android/generic/ui/widget/ContextDialogFragment;

    .line 513
    const v1, 0x7f0c0109

    invoke-virtual {p0, v1}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;->a(Ljava/lang/String;)Lcom/avast/android/generic/ui/widget/ContextDialogFragment;

    .line 514
    invoke-virtual {v0, p0, v6}, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 515
    invoke-virtual {p0}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "contextDialogFragment"

    invoke-virtual {v0, v1, v2}, Lcom/avast/android/generic/ui/widget/ContextDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 516
    return-void

    .line 497
    :cond_2
    const v4, 0x7f0c021c

    invoke-virtual {p0, v4}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v6

    goto :goto_1

    .line 506
    :cond_3
    array-length v0, v1

    if-ne v0, v2, :cond_1

    .line 507
    invoke-virtual {p0, v7}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    goto :goto_2

    :cond_4
    move v1, v3

    goto :goto_0
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/a/m;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->a(Landroid/support/v4/a/m;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/a/m;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 398
    invoke-virtual {p1}, Landroid/support/v4/a/m;->k()I

    move-result v0

    const/16 v1, 0x2712

    if-ne v0, v1, :cond_0

    .line 399
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->c:Lcom/avast/android/mobilesecurity/app/scanner/ac;

    invoke-virtual {v0, v2, v2}, Lcom/avast/android/mobilesecurity/app/scanner/ac;->a(Ljava/util/List;Ljava/util/Map;)V

    .line 401
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 169
    const-string v0, "selectedPosition"

    iget v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->h:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 170
    const-string v0, "appsToDelete"

    sget-object v1, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->m:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 171
    const-string v0, "filesToDelete"

    sget-object v1, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->n:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 172
    const-string v0, "notificationId"

    iget v1, p0, Lcom/avast/android/mobilesecurity/app/scanner/ScannerLogFragment;->l:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 173
    invoke-super {p0, p1}, Lcom/avast/android/generic/util/ga/TrackedListFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 174
    return-void
.end method

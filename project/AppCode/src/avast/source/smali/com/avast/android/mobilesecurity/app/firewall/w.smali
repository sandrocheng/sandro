.class Lcom/avast/android/mobilesecurity/app/firewall/w;
.super Landroid/support/v4/e/a;
.source "FirewallFragment.java"


# instance fields
.field final synthetic a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 396
    iput-object p1, p0, Lcom/avast/android/mobilesecurity/app/firewall/w;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;

    .line 397
    invoke-direct {p0, p2, p3, v0}, Landroid/support/v4/e/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 394
    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/w;->g:Z

    .line 398
    return-void
.end method

.method private a(Landroid/database/Cursor;)Landroid/net/Uri;
    .locals 2
    .parameter

    .prologue
    .line 472
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/w;->d:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 473
    iget v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/w;->c:I

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 474
    if-eqz v0, :cond_0

    .line 475
    :goto_0
    invoke-static {v0}, Lcom/avast/android/mobilesecurity/l;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v0, v1

    .line 474
    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 421
    check-cast p1, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    .line 422
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/w;->b:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->c(Ljava/lang/String;)V

    .line 425
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/w;->e:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 426
    if-eqz v0, :cond_0

    .line 427
    iget v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/w;->f:I

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 428
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c0310

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->c(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->d(Ljava/lang/String;)V

    .line 431
    const v0, 0x7f02010c

    invoke-virtual {p1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->a(I)V

    .line 432
    invoke-virtual {p1, v3}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->setFocusable(Z)V

    .line 433
    invoke-virtual {p1, v3}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->setClickable(Z)V

    .line 451
    :goto_0
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->e()Lcom/avast/android/generic/d/e;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/firewall/a/c;

    .line 452
    invoke-virtual {v0, p3}, Lcom/avast/android/mobilesecurity/app/firewall/a/c;->a(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 453
    invoke-direct {p0, p3}, Lcom/avast/android/mobilesecurity/app/firewall/w;->a(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/app/firewall/a/c;->a(Landroid/net/Uri;)V

    .line 454
    invoke-virtual {p1}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->b()V

    .line 456
    iget-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/w;->g:Z

    invoke-virtual {p1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->setEnabled(Z)V

    .line 458
    iget v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/w;->c:I

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->setTag(Ljava/lang/Object;)V

    .line 459
    return-void

    .line 435
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->d(Ljava/lang/String;)V

    .line 436
    invoke-virtual {p1, v1}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->setFocusable(Z)V

    .line 437
    invoke-virtual {p1, v1}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->setClickable(Z)V

    .line 441
    :try_start_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/w;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/w;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;

    invoke-virtual {v1}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/w;->c:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 444
    invoke-virtual {p1, v0}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->a(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 463
    new-instance v0, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;

    const-string v1, ""

    invoke-direct {v0, p1, v1}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 464
    new-instance v1, Lcom/avast/android/mobilesecurity/app/firewall/a/c;

    iget-object v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/w;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;

    invoke-static {v2}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->e(Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;)Lcom/avast/android/generic/util/x;

    move-result-object v2

    invoke-direct {p0, p2}, Lcom/avast/android/mobilesecurity/app/firewall/w;->a(Landroid/database/Cursor;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/avast/android/mobilesecurity/app/firewall/w;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;

    invoke-static {v4}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->f(Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;)Lcom/avast/android/mobilesecurity/app/firewall/a/b;

    move-result-object v4

    invoke-direct {v1, v2, p2, v3, v4}, Lcom/avast/android/mobilesecurity/app/firewall/a/c;-><init>(Lcom/avast/android/generic/util/x;Landroid/database/Cursor;Landroid/net/Uri;Lcom/avast/android/mobilesecurity/app/firewall/a/b;)V

    .line 466
    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->a(Lcom/avast/android/generic/d/e;)V

    .line 467
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/w;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;

    invoke-virtual {v0, v1}, Lcom/avast/android/mobilesecurity/ui/widget/ConnectionTypeButtons;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 468
    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 415
    invoke-super {p0}, Landroid/support/v4/e/a;->notifyDataSetChanged()V

    .line 416
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/w;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->a(Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;)Lcom/avast/android/mobilesecurity/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->X()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/w;->g:Z

    .line 417
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 1
    .parameter

    .prologue
    .line 402
    if-eqz p1, :cond_0

    .line 403
    sget-object v0, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->k:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/w;->b:I

    .line 404
    sget-object v0, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->j:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/w;->d:I

    .line 405
    sget-object v0, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->i:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/w;->c:I

    .line 406
    sget-object v0, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->w:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/w;->e:I

    .line 407
    sget-object v0, Lcom/avast/android/mobilesecurity/app/firewall/core/d;->x:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/w;->f:I

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/w;->a:Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;

    invoke-static {v0}, Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;->a(Lcom/avast/android/mobilesecurity/app/firewall/FirewallFragment;)Lcom/avast/android/mobilesecurity/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/avast/android/mobilesecurity/t;->X()Z

    move-result v0

    iput-boolean v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/w;->g:Z

    .line 410
    invoke-super {p0, p1}, Landroid/support/v4/e/a;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

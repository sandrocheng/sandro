.class Lcom/avast/android/mobilesecurity/app/firewall/ab;
.super Landroid/support/v4/e/a;
.source "FirewallLogsFragment.java"


# instance fields
.field a:I

.field b:I

.field c:I

.field d:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 296
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/e/a;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 297
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/ab;->d:Landroid/content/pm/PackageManager;

    .line 298
    invoke-direct {p0, p2}, Lcom/avast/android/mobilesecurity/app/firewall/ab;->a(Landroid/database/Cursor;)V

    .line 299
    return-void
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 1
    .parameter

    .prologue
    .line 310
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/ab;->a:I

    .line 311
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/ab;->b:I

    .line 312
    const-string v0, "last_targets"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/avast/android/mobilesecurity/app/firewall/ab;->c:I

    .line 313
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avast/android/mobilesecurity/app/firewall/ac;

    .line 323
    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/firewall/ac;->a:Landroid/widget/TextView;

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/ab;->b:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v1, v0, Lcom/avast/android/mobilesecurity/app/firewall/ac;->c:Landroid/widget/TextView;

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/ab;->c:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    iget-object v1, p0, Lcom/avast/android/mobilesecurity/app/firewall/ab;->d:Landroid/content/pm/PackageManager;

    iget v2, p0, Lcom/avast/android/mobilesecurity/app/firewall/ab;->a:I

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 328
    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 329
    :cond_0
    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/ac;->b:Landroid/widget/ImageView;

    const v1, 0x7f02010c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 340
    :goto_0
    return-void

    .line 332
    :cond_1
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v1, v1, v4

    const/16 v4, 0x80

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 335
    iget-object v0, v0, Lcom/avast/android/mobilesecurity/app/firewall/ac;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    const-string v1, "breadcrumbs"

    const-string v2, "Can\'t load application icon."

    invoke-static {v1, v2, v0}, Lcom/avast/android/generic/util/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 0
    .parameter

    .prologue
    .line 303
    invoke-super {p0, p1}, Landroid/support/v4/e/a;->changeCursor(Landroid/database/Cursor;)V

    .line 304
    if-eqz p1, :cond_0

    .line 305
    invoke-direct {p0, p1}, Lcom/avast/android/mobilesecurity/app/firewall/ab;->a(Landroid/database/Cursor;)V

    .line 307
    :cond_0
    return-void
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 344
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 345
    const v1, 0x7f030085

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 347
    new-instance v2, Lcom/avast/android/mobilesecurity/app/firewall/ac;

    invoke-direct {v2, p0}, Lcom/avast/android/mobilesecurity/app/firewall/ac;-><init>(Lcom/avast/android/mobilesecurity/app/firewall/ab;)V

    .line 348
    const v0, 0x7f070017

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/firewall/ac;->a:Landroid/widget/TextView;

    .line 349
    const v0, 0x7f070059

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/firewall/ac;->b:Landroid/widget/ImageView;

    .line 350
    const v0, 0x7f0701a6

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/avast/android/mobilesecurity/app/firewall/ac;->c:Landroid/widget/TextView;

    .line 352
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 354
    return-object v1
.end method

.class public final Lcom/keniu/security/traffic/j;
.super Landroid/widget/BaseAdapter;
.source "GridViewAdapter.java"


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Landroid/view/LayoutInflater;

.field private c:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Ljava/util/Vector;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/keniu/security/traffic/j;->a:Ljava/util/Vector;

    .line 25
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/keniu/security/traffic/j;->b:Landroid/view/LayoutInflater;

    .line 27
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/keniu/security/traffic/j;->c:Landroid/content/pm/PackageManager;

    .line 28
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/keniu/security/traffic/j;->a:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/keniu/security/traffic/j;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    .line 34
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/keniu/security/traffic/j;->a:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/keniu/security/traffic/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 41
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 51
    iget-object v0, p0, Lcom/keniu/security/traffic/j;->a:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 52
    if-nez p2, :cond_0

    .line 53
    iget-object v1, p0, Lcom/keniu/security/traffic/j;->b:Landroid/view/LayoutInflater;

    const v2, 0x7f030117

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    .line 55
    :goto_0
    const v1, 0x7f080131

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 59
    :try_start_0
    iget-object v3, p0, Lcom/keniu/security/traffic/j;->c:Landroid/content/pm/PackageManager;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 64
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    return-object v2

    :catch_0
    move-exception v0

    move-object v0, v4

    goto :goto_1

    :cond_0
    move-object v2, p2

    goto :goto_0
.end method

.class final Lcom/keniu/security/main/cf;
.super Landroid/widget/BaseAdapter;
.source "RecommandDialog.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/main/cd;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/keniu/security/main/cd;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 254
    iput-object p1, p0, Lcom/keniu/security/main/cf;->a:Lcom/keniu/security/main/cd;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 256
    iput-object p2, p0, Lcom/keniu/security/main/cf;->b:Ljava/util/List;

    .line 258
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/keniu/security/main/cf;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 269
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 276
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    .line 283
    if-nez p2, :cond_2

    .line 285
    iget-object v0, p0, Lcom/keniu/security/main/cf;->a:Lcom/keniu/security/main/cd;

    invoke-static {v0}, Lcom/keniu/security/main/cd;->c(Lcom/keniu/security/main/cd;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300bc

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    .line 288
    :goto_0
    const v0, 0x7f0802d2

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 289
    const v1, 0x7f0802d3

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 291
    iget-object v2, p0, Lcom/keniu/security/main/cf;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 295
    const v2, 0x7f020193

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 296
    const v0, 0x7f0b0245

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 320
    :goto_1
    return-object v3

    .line 300
    :cond_0
    iget-object v2, p0, Lcom/keniu/security/main/cf;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne p1, v2, :cond_1

    .line 304
    const v2, 0x7f020194

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 305
    const v0, 0x7f0b0246

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 307
    :catch_0
    move-exception v0

    goto :goto_1

    .line 313
    :cond_1
    :try_start_2
    iget-object v2, p0, Lcom/keniu/security/main/cf;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 314
    iget-object v4, p0, Lcom/keniu/security/main/cf;->a:Lcom/keniu/security/main/cd;

    invoke-static {v4}, Lcom/keniu/security/main/cd;->a(Lcom/keniu/security/main/cd;)Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    iget-object v0, p0, Lcom/keniu/security/main/cf;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Lcom/keniu/security/main/cf;->a:Lcom/keniu/security/main/cd;

    invoke-static {v2}, Lcom/keniu/security/main/cd;->a(Lcom/keniu/security/main/cd;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    .line 298
    :catch_2
    move-exception v0

    goto :goto_1

    :cond_2
    move-object v3, p2

    goto :goto_0
.end method

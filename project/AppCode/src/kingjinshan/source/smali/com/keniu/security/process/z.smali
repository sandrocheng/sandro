.class final Lcom/keniu/security/process/z;
.super Landroid/widget/BaseAdapter;
.source "ProcessWhiteSettingActivity.java"


# instance fields
.field final synthetic a:Lcom/keniu/security/process/ProcessWhiteSettingActivity;


# direct methods
.method public constructor <init>(Lcom/keniu/security/process/ProcessWhiteSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/keniu/security/process/z;->a:Lcom/keniu/security/process/ProcessWhiteSettingActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 164
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/keniu/security/process/z;->a:Lcom/keniu/security/process/ProcessWhiteSettingActivity;

    iget-object v0, v0, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/keniu/security/process/z;->a:Lcom/keniu/security/process/ProcessWhiteSettingActivity;

    iget-object v0, v0, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->a:Ljava/util/List;

    new-instance v1, Lcom/keniu/security/process/aa;

    invoke-direct {v1, p0}, Lcom/keniu/security/process/aa;-><init>(Lcom/keniu/security/process/z;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 183
    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/keniu/security/process/z;->a:Lcom/keniu/security/process/ProcessWhiteSettingActivity;

    iget-object v0, v0, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 192
    iget-object v0, p0, Lcom/keniu/security/process/z;->a:Lcom/keniu/security/process/ProcessWhiteSettingActivity;

    iget-object v0, v0, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 197
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 205
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/process/y;

    if-nez v0, :cond_1

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/keniu/security/process/z;->a:Lcom/keniu/security/process/ProcessWhiteSettingActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300da

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 210
    new-instance v2, Lcom/keniu/security/process/y;

    iget-object v0, p0, Lcom/keniu/security/process/z;->a:Lcom/keniu/security/process/ProcessWhiteSettingActivity;

    invoke-direct {v2, v0}, Lcom/keniu/security/process/y;-><init>(Lcom/keniu/security/process/ProcessWhiteSettingActivity;)V

    .line 211
    const v0, 0x7f08031f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/keniu/security/process/y;->a:Landroid/widget/ImageView;

    .line 213
    const v0, 0x7f080321

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/keniu/security/process/y;->b:Landroid/widget/TextView;

    .line 215
    const v0, 0x7f080320

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v2, Lcom/keniu/security/process/y;->c:Landroid/widget/CheckBox;

    .line 217
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 222
    :goto_0
    iget-object v0, p0, Lcom/keniu/security/process/z;->a:Lcom/keniu/security/process/ProcessWhiteSettingActivity;

    iget-object v0, v0, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/d/e;

    .line 226
    :try_start_0
    iget-object v3, p0, Lcom/keniu/security/process/z;->a:Lcom/keniu/security/process/ProcessWhiteSettingActivity;

    iget-object v3, v3, Lcom/keniu/security/process/ProcessWhiteSettingActivity;->e:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Lcom/keniu/security/d/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 230
    :goto_1
    iget-object v4, v1, Lcom/keniu/security/process/y;->a:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 231
    iget-object v3, v1, Lcom/keniu/security/process/y;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/keniu/security/d/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v3, v1, Lcom/keniu/security/process/y;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Lcom/keniu/security/d/e;->a()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 233
    iget-object v1, v1, Lcom/keniu/security/process/y;->c:Landroid/widget/CheckBox;

    new-instance v3, Lcom/keniu/security/process/ab;

    invoke-direct {v3, p0, v0}, Lcom/keniu/security/process/ab;-><init>(Lcom/keniu/security/process/z;Lcom/keniu/security/d/e;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    return-object v2

    .line 220
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/keniu/security/process/y;

    move-object v1, v0

    move-object v2, p2

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v3, v5

    goto :goto_1
.end method

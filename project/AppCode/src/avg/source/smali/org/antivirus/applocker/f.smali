.class final Lorg/antivirus/applocker/f;
.super Landroid/widget/BaseAdapter;


# instance fields
.field final synthetic a:Lorg/antivirus/applocker/AppLockerActivity;

.field private b:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lorg/antivirus/applocker/AppLockerActivity;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lorg/antivirus/applocker/f;->a:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lorg/antivirus/applocker/f;->b:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lorg/antivirus/applocker/f;->a:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-static {v0}, Lorg/antivirus/applocker/AppLockerActivity;->a(Lorg/antivirus/applocker/AppLockerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/antivirus/applocker/f;->a:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-static {v0}, Lorg/antivirus/applocker/AppLockerActivity;->a(Lorg/antivirus/applocker/AppLockerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    if-nez p2, :cond_2

    iget-object v0, p0, Lorg/antivirus/applocker/f;->b:Landroid/view/LayoutInflater;

    const v1, 0x7f030009

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lorg/antivirus/applocker/g;

    invoke-direct {v1, p0}, Lorg/antivirus/applocker/g;-><init>(Lorg/antivirus/applocker/f;)V

    const v0, 0x7f08004f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/antivirus/applocker/g;->a:Landroid/widget/TextView;

    const v0, 0x7f080050

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lorg/antivirus/applocker/g;->b:Landroid/widget/TextView;

    const v0, 0x7f08004e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lorg/antivirus/applocker/g;->c:Landroid/widget/ImageView;

    const v0, 0x7f080051

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lorg/antivirus/applocker/g;->d:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lorg/antivirus/applocker/f;->a:Lorg/antivirus/applocker/AppLockerActivity;

    invoke-static {v0}, Lorg/antivirus/applocker/AppLockerActivity;->a(Lorg/antivirus/applocker/AppLockerActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/applocker/e;

    iget-object v2, v0, Lorg/antivirus/applocker/e;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lorg/antivirus/applocker/g;->a:Landroid/widget/TextView;

    iget-object v3, v0, Lorg/antivirus/applocker/e;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, v0, Lorg/antivirus/applocker/e;->b:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.sec.android.app."

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lorg/antivirus/applocker/e;->b:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.sec.android.app."

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    iget-object v3, v1, Lorg/antivirus/applocker/g;->b:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lorg/antivirus/applocker/g;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Lorg/antivirus/applocker/e;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/antivirus/applocker/g;->c:Landroid/widget/ImageView;

    iget-object v3, v0, Lorg/antivirus/applocker/e;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-boolean v0, v0, Lorg/antivirus/applocker/e;->d:Z

    if-eqz v0, :cond_4

    iget-object v0, v1, Lorg/antivirus/applocker/g;->d:Landroid/widget/ImageView;

    const v1, 0x7f020078

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/antivirus/applocker/g;

    move-object v1, v0

    goto :goto_0

    :cond_3
    iget-object v2, v0, Lorg/antivirus/applocker/e;->b:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget-object v0, v1, Lorg/antivirus/applocker/g;->d:Landroid/widget/ImageView;

    const v1, 0x7f020072

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2
.end method
